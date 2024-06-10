/* ================================== LAYOUTS ====================================
CAPINCI 1.00
Business Area: forms Transaction: DEPLOY
App: DEPLOY_EXE (Deploy Roles)
=================================================================================== */

using forms.srv.deploy_exe as service from '../../../../srv/forms.deploy_exe.srv.cds';

annotate service.Roles with 
@(
	UI.SelectionFields : [org_iid],
	PresentationVariant :
	{
		SortOrder :
		[
		],
		Visualizations : ['@UI.LineItem'],
	},
	UI.LineItem : 
	[
		{
			$Type : 'UI.DataFieldForAction',
			Action : 'forms.srv.deploy_exe.Deploy',
			Label : '{i18n>_DEPLOY}',
		},
		{
			Value : id,
		},
		{
			Value : name,
		},
		{
			Value : org_iid,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PDEPROL}',
		TypeNamePlural : '{i18n>_PDEPROL_S}',
		Title : 
		{
			$Type: 'UI.DataField',
			Value : id,
		},
	},
	UI.HeaderFacets : 
	[
		{
			$Type : 'UI.ReferenceFacet',
			Target: '@UI.FieldGroup#HEADERDATA',
		},
	],
	UI.FieldGroup #HEADERDATA: 
	{
		Data : 
		[
		],
	},
	UI.Facets : 
	[
		{
			$Type : 'UI.ReferenceFacet',
			Target: '@UI.FieldGroup#NONE_OVERVIEW',
			Label : '{i18n>_OVERVIEW}'
		},
	],
	UI.FieldGroup #NONE_OVERVIEW :
	{
		Data : 
		[
			{
				Value : id,
			},
			{
				Value : name,
			},
			{
				Value : descr,
			},
			{
				Value : org_iid,
			},
		],
	},
);
