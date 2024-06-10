/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: forms Transaction: ROLESM
App: ROLESM_ADM (Roles)
=================================================================================== */

using forms.srv.rolesm_adm as service from '../../../../srv/forms.rolesm_adm.srv.cds';

annotate service.Roles with 
{
	iid                  @title: '{i18n>_IID}' @UI.Hidden ;
	id                   @title: '{i18n>_ID}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
	descr                @title: '{i18n>_DESCR}'  ;
	org                  @title: '{i18n>_ORG}' @mandatory  @Common.Text : org.id  @Common.TextArrangement: #TextOnly;
};
annotate service.RolesProfiles with 
{
	iid                  @title: '{i18n>_IID}' @UI.Hidden ;
	role                 @title: '{i18n>_ROLE}' @mandatory@UI.Hidden  @Common.Text : role.id  @Common.TextArrangement: #TextOnly;
	profile              @title: '{i18n>_PROFILE}' @mandatory  @Common.Text : profile.id  @Common.TextArrangement: #TextOnly;
};
annotate service.RolesStructures with 
{
	iid                  @title: '{i18n>_IID}' @UI.Hidden ;
	role                 @title: '{i18n>_ROLE}' @mandatory@UI.Hidden  @Common.Text : role.id  @Common.TextArrangement: #TextOnly;
	structure            @title: '{i18n>_STRUCTURE}' @mandatory  @Common.Text : structure.id  @Common.TextArrangement: #TextOnly;
};
annotate service.Orgs with 
{
	iid                  @Common.Text: id @Common.TextArrangement: #TextOnly;
	id                   @title: '{i18n>_ID}';
};
annotate service.Profiles with 
{
	iid                  @Common.Text: id @Common.TextArrangement: #TextOnly;
	id                   @title: '{i18n>_ID}';
};
annotate service.Structures with 
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

annotate service.RolesProfiles with 
{
	profile @Common.ValueList:
	{
		CollectionPath : 'Profiles',
		Label : 'PROFILES',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: profile_iid,
				ValueListProperty: 'iid',
			},
			{
				$Type: 'Common.ValueListParameterDisplayOnly',
				ValueListProperty: 'id',
			},
		],
	};

};

annotate service.RolesStructures with 
{
	structure @Common.ValueList:
	{
		CollectionPath : 'Structures',
		Label : 'STRUCTURES',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: structure_iid,
				ValueListProperty: 'iid',
			},
			{
				$Type: 'Common.ValueListParameterDisplayOnly',
				ValueListProperty: 'id',
			},
		],
	};

};
