/*===================================================================================== 
CAPINCI 1.00
Business Area: pmo  Transaction: ORGANZ
App: ORGANZ_ADM (Organizations)
======================================================================================= */

namespace pmo.srv;

/* ==================================== REFERENCES ==================================== */

using { pmo.orgs.db as ORGS } from '../db/pmo.orgs.db';

/* ====================================== SERVICE ===================================== */

@(path:'FORMS_100/pmo/organz_adm/v1')
service organz_adm
{
	@odata.draft.enabled
	@Capabilities: 
	{
		InsertRestrictions.Insertable: true,
		UpdateRestrictions.Updatable: true,
		DeleteRestrictions.Deletable: true,
	}
	entity Orgs as projection on ORGS.Orgs;

	/*  -- Value Helps */

	/*  -- UnBound Actions */
};
