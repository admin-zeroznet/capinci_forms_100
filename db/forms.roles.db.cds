/*===================================================================================== 
CAPINCI 1.00
Business Area: forms  Object: roles (roles)
======================================================================================= */

namespace forms.roles.db;

/* ==================================== REFERENCES ==================================== */

using { sme.common.db as COMMON } from './sme.common.db';
using { forms.profiles.db as PROFILES } from './forms.profiles.db';
using { forms.structures.db as STRUCTURES } from './forms.structures.db';
using { pmo.orgs.db as ORGS } from './pmo.orgs.db';

/* ===================================== ENTITIES ===================================== */

/* == Entity: Roles (Authorization Roles) Authorization Roles */
entity Roles
{
	key iid             	 : UUID ;
		id                   : String (30) not null;
		name                 : String (50);
		descr                : String;     // <attribute type not found> default value assumed;
		org                  : Association to ORGS.Orgs not null;
		mfk_rolesprofiles    : Composition of many RolesProfiles on mfk_rolesprofiles.role = $self;
		mfk_rolesstructures  : Composition of many RolesStructures on mfk_rolesstructures.role = $self;
};
/* == Entity: RolesProfiles (Roles Profiles ) Roles Profiles */
entity RolesProfiles
{
	key iid             	 : UUID ;
		role                 : Association to Roles not null;
		profile              : Association to PROFILES.Profiles not null;
};
/* == Entity: RolesStructures (Roles Structures) Roles Structures */
entity RolesStructures
{
	key iid             	 : UUID ;
		role                 : Association to Roles not null;
		structure            : Association to STRUCTURES.Structures not null;
};