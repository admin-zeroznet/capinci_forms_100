/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: forms Transaction: DEPLOY
App: DEPLOY_EXE (Deploy Roles)
=================================================================================== */

using forms.srv.deploy_exe as service from '../../../../srv/forms.deploy_exe.srv.cds';

annotate service.Roles with 
{
	iid                  @title: '{i18n>_IID}' @UI.Hidden ;
	id                   @title: '{i18n>_ID}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
	descr                @title: '{i18n>_DESCR}'  ;
	org                  @title: '{i18n>_ORG}' @mandatory  @Common.Text : org.id  @Common.TextArrangement: #TextOnly;
};
annotate service.Orgs with 
{
	iid                  @Common.Text: id @Common.TextArrangement: #TextOnly;
	id                   @title: '{i18n>_ID}';
};

/* ================================== VALUE HELPS =================================== */

annotate service.Roles with 
{
	org @Common.ValueList:
	{
		CollectionPath : 'Orgs',
		Label : 'ORGS',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: org_iid,
				ValueListProperty: 'iid',
			},
			{
				$Type: 'Common.ValueListParameterDisplayOnly',
				ValueListProperty: 'id',
			},
		],
	};

};
