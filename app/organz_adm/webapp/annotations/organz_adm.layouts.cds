/* ================================== LAYOUTS ====================================
CAPINCI 1.00
Business Area: pmo Transaction: ORGANZ
App: ORGANZ_ADM (Organizations)
=================================================================================== */

using pmo.srv.organz_adm as service from '../../../../srv/pmo.organz_adm.srv.cds';

annotate service.Orgs with 
@(
	UI.SelectionFields : [headCountry_code],
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
			Value : headCountry_code,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PORGS}',
		TypeNamePlural : '{i18n>_PORGS_S}',
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
				Value : headCountry_code,
			},
		],
	},
);
