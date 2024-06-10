/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: forms Transaction: PROFIL
App: PROFIL_ADM (Profiles)
=================================================================================== */

using forms.srv.profil_adm as service from '../../../../srv/forms.profil_adm.srv.cds';

annotate service.Profiles with 
{
	iid                  @title: '{i18n>_IID}' @UI.Hidden ;
	id                   @title: '{i18n>_ID}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
	descr                @title: '{i18n>_DESCR}'  @UI.MultiLineText;
};
annotate service.ProfilesTasks with 
{
	iid                  @title: '{i18n>_IID}' @UI.Hidden ;
	profile              @title: '{i18n>_PROFILE}' @mandatory@UI.Hidden  @Common.Text : profile.id  @Common.TextArrangement: #TextOnly;
	task                 @title: '{i18n>_TASK}' @mandatory  @Common.Text : task.id  @Common.TextArrangement: #TextOnly;
};
annotate service.Tasks with 
{
	iid                  @Common.Text: id @Common.TextArrangement: #TextOnly;
	id                   @title: '{i18n>_ID}';
};

/* ================================== VALUE HELPS =================================== */

annotate service.ProfilesTasks with 
{
	task @Common.ValueList:
	{
		CollectionPath : 'Tasks',
		Label : 'TASKS',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: task_iid,
				ValueListProperty: 'iid',
			},
			{
				$Type: 'Common.ValueListParameterDisplayOnly',
				ValueListProperty: 'id',
			},
		],
	};

};
