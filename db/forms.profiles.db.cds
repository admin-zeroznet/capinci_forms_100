/*===================================================================================== 
CAPINCI 1.00
Business Area: forms  Object: profiles (profiles)
======================================================================================= */

namespace forms.profiles.db;

/* ==================================== REFERENCES ==================================== */

using { sme.common.db as COMMON } from './sme.common.db';
using { forms.roles.db as ROLES } from './forms.roles.db';
using { knowledgebase.authorizations.db as AUTHORIZATIONS } from './knowledgebase.authorizations.db';
using { parchitecture.businessmaps.db as BUSINESSMAPS } from './parchitecture.businessmaps.db';

/* ===================================== ENTITIES ===================================== */

/* == Entity: Profiles (Authorization Profiles) Auhorization Profiles */
entity Profiles
{
	key iid             	 : UUID ;
		id                   : String (30) not null;
		name                 : String (50);
		descr                : String (250);
		mfk_profilestasks    : Composition of many ProfilesTasks on mfk_profilestasks.profile = $self;
		mfk_rolesprofiles    : Composition of many ROLES.RolesProfiles on mfk_rolesprofiles.profile = $self;
};
/* == Entity: ProfilesTasks (Profiles Tasks ) Profiles Tasks */
entity ProfilesTasks
{
	key iid             	 : UUID ;
		profile              : Association to Profiles not null;
		task                 : Association to BUSINESSMAPS.Tasks not null;
};
/* == Entity: Proposals (Authorization Proposals) Authorization Proposals */
entity Proposals
{
	key iid             	 : UUID ;
		id                   : String (30) not null;
		task                 : Association to BUSINESSMAPS.Tasks not null;
		object               : Association to AUTHORIZATIONS.AuthObjects not null;
		fields               : Association to AUTHORIZATIONS.AuthFields not null;
		valueFrom            : String;     // <attribute type not found> default value assumed;
		valueTo              : String;     // <attribute type not found> default value assumed;
		descr                : String (50);
};