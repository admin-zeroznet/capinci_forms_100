/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: forms Transaction: STRUCT
App: STRUCT_ADM (Structures)
=================================================================================== */

using forms.srv.struct_adm as service from '../../../../srv/forms.struct_adm.srv.cds';

annotate service.Structures with 
{
	iid                  @title: '{i18n>_IID}' @UI.Hidden ;
	id                   @title: '{i18n>_ID}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
	descr                @title: '{i18n>_DESCR}'  @UI.MultiLineText;
	orgField             @title: '{i18n>_ORGFIELD}' @mandatory ;
};
annotate service.StructuresValues with 
{
	iid                  @title: '{i18n>_IID}' @UI.Hidden ;
	structure            @title: '{i18n>_STRUCTURE}' @mandatory@UI.Hidden  @Common.Text : structure.id  @Common.TextArrangement: #TextOnly;
	fromValue            @title: '{i18n>_FROMVALUE}'  ;
	toValue              @title: '{i18n>_TOVALUE}'  ;
};
annotate service.AuthOrgFields with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};

/* ================================== VALUE HELPS =================================== */

annotate service.Structures with 
{
	orgField @Common.ValueList:
	{
		CollectionPath : 'AuthOrgFields',
		Label : 'AUTHORGFIELDS',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: orgField_code,
				ValueListProperty: 'code',
			},
			{
				$Type: 'Common.ValueListParameterDisplayOnly',
				ValueListProperty: 'name',
			},
		],
	}
	@Common.ValueListWithFixedValues;

};
