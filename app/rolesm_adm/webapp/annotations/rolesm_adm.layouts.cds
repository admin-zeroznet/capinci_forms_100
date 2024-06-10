/* ================================== LAYOUTS ====================================
CAPINCI 1.00
Business Area: forms Transaction: ROLESM
App: ROLESM_ADM (Roles)
=================================================================================== */

using forms.srv.rolesm_adm as service from '../../../../srv/forms.rolesm_adm.srv.cds';

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
		TypeName : '{i18n>_PROLES}',
		TypeNamePlural : '{i18n>_PROLES_S}',
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
			Target: 'mfk_rolesprofiles/@UI.LineItem',
			Label : '{i18n>_PROLPRO_S}'
		},
		{
			$Type : 'UI.ReferenceFacet',
			Target: 'mfk_rolesstructures/@UI.LineItem',
			Label : '{i18n>_PROLSTR_S}'
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

annotate service.RolesProfiles with 
@(
	UI.SelectionFields : [role_iid,profile_iid],
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
			Value : role_iid,
		},
		{
			Value : profile_iid,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PROLPRO}',
		TypeNamePlural : '{i18n>_PROLPRO_S}',
	},
);

annotate service.RolesStructures with 
@(
	UI.SelectionFields : [role_iid,structure_iid],
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
			Value : role_iid,
		},
		{
			Value : structure_iid,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PROLSTR}',
		TypeNamePlural : '{i18n>_PROLSTR_S}',
	},
);
