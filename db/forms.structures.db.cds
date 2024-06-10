/*===================================================================================== 
CAPINCI 1.00
Business Area: forms  Object: structures (structures)
======================================================================================= */

namespace forms.structures.db;

/* ==================================== REFERENCES ==================================== */

using { sme.common.db as COMMON } from './sme.common.db';
using { forms.roles.db as ROLES } from './forms.roles.db';
using { knowledgebase.authorizations.db as AUTHORIZATIONS } from './knowledgebase.authorizations.db';

/* ===================================== ENTITIES ===================================== */

/* == Entity: Structures (Org Structures) Org Structures */
entity Structures
{
	key iid             	 : UUID ;
		id                   : String (30) not null;
		name                 : String (50);
		descr                : String (250);
		orgField             : Association to AUTHORIZATIONS.AuthOrgFields not null;
		mfk_rolesstructures  : Composition of many ROLES.RolesStructures on mfk_rolesstructures.structure = $self;
		mfk_structuresvalues : Composition of many StructuresValues on mfk_structuresvalues.structure = $self;
};
/* == Entity: StructuresValues (Structures Values) Structures Values */
entity StructuresValues
{
	key iid             	 : UUID ;
		structure            : Association to Structures not null;
		fromValue            : String (20);
		toValue              : String (20);
};