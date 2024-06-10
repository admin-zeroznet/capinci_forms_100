/* ================================== LAYOUTS ====================================
CAPINCI 1.00
Business Area: forms Transaction: STRUCT
App: STRUCT_ADM (Structures)
=================================================================================== */

using forms.srv.struct_adm as service from '../../../../srv/forms.struct_adm.srv.cds';

annotate service.Structures with 
@(
	UI.SelectionFields : [orgField_code],
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
			Value : orgField_code,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PSTRUCT}',
		TypeNamePlural : '{i18n>_PSTRUCT_S}',
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
			Target: 'mfk_structuresvalues/@UI.LineItem',
			Label : '{i18n>_PSTRVAL_S}'
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
				Value : orgField_code,
			},
		],
	},
);

annotate service.StructuresValues with 
@(
	UI.SelectionFields : [structure_iid],
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
			Value : structure_iid,
		},
		{
			Value : fromValue,
		},
		{
			Value : toValue,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PSTRVAL}',
		TypeNamePlural : '{i18n>_PSTRVAL_S}',
	},
);
