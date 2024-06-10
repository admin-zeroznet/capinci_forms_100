/*===================================================================================== 
CAPINCI 1.00
Business Area: forms  Transaction: STRUCT
App: STRUCT_ADM (Structures)
======================================================================================= */

namespace forms.srv;

/* ==================================== REFERENCES ==================================== */

using { forms.structures.db as STRUCTURES } from '../db/forms.structures.db';
using { knowledgebase.authorizations.db as AUTHORIZATIONS } from '../db/knowledgebase.authorizations.db';

/* ====================================== SERVICE ===================================== */

@(path:'FORMS_100/forms/struct_adm/v1')
service struct_adm
{
	@odata.draft.enabled
	@Capabilities: 
	{
		InsertRestrictions.Insertable: true,
		UpdateRestrictions.Updatable: true,
		DeleteRestrictions.Deletable: true,
	}
	entity Structures as projection on STRUCTURES.Structures;

	entity StructuresValues as projection on STRUCTURES.StructuresValues;

	/*  -- Value Helps */
	@readonly entity AuthOrgFields as projection on AUTHORIZATIONS.AuthOrgFields
	{
		*,
	};

	/*  -- UnBound Actions */
};
