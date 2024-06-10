/* ================================== LAYOUTS ====================================
CAPINCI 1.00
Business Area: forms Transaction: PROFIL
App: PROFIL_ADM (Profiles)
=================================================================================== */

using forms.srv.profil_adm as service from '../../../../srv/forms.profil_adm.srv.cds';

annotate service.Profiles with 
@(
	UI.SelectionFields : [],
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
			Value : id,
		},
		{
			Value : name,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PPROFIL}',
		TypeNamePlural : '{i18n>_PPROFIL_S}',
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
		{
			$Type : 'UI.ReferenceFacet',
			Target: 'mfk_profilestasks/@UI.LineItem',
			Label : '{i18n>_PPROFTASK_S}'
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
		],
	},
);

annotate service.ProfilesTasks with 
@(
	UI.SelectionFields : [profile_iid,task_iid],
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
			Value : profile_iid,
		},
		{
			Value : task_iid,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PPROFTASK}',
		TypeNamePlural : '{i18n>_PPROFTASK_S}',
	},
);
