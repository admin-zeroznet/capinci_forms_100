/*===================================================================================== 
CAPINCI 1.00
Business Area: forms  Transaction: ROLESM
App: ROLESM_ADM (Roles)
======================================================================================= */

namespace forms.srv;

/* ==================================== REFERENCES ==================================== */

using { forms.profiles.db as PROFILES } from '../db/forms.profiles.db';
using { forms.roles.db as ROLES } from '../db/forms.roles.db';
using { forms.structures.db as STRUCTURES } from '../db/forms.structures.db';
using { pmo.orgs.db as ORGS } from '../db/pmo.orgs.db';

/* ====================================== SERVICE ===================================== */

@(path:'FORMS_100/forms/rolesm_adm/v1')
service rolesm_adm
{
	@odata.draft.enabled
	@Capabilities: 
	{
		InsertRestrictions.Insertable: true,
		UpdateRestrictions.Updatable: true,
		DeleteRestrictions.Deletable: true,
	}
	entity Roles as projection on ROLES.Roles;

	entity RolesProfiles as projection on ROLES.RolesProfiles;

	entity RolesStructures as projection on ROLES.RolesStructures;

	/*  -- Value Helps */
	@readonly entity Orgs as projection on ORGS.Orgs
	{
		*,
	};
	@readonly entity Profiles as projection on PROFILES.Profiles
	{
		*,
	};
	@readonly entity Structures as projection on STRUCTURES.Structures
	{
		*,
	};

	/*  -- UnBound Actions */
};
