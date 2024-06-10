/*===================================================================================== 
CAPINCI 1.00
Business Area: pmo  Object: orgs (orgs)
======================================================================================= */

namespace pmo.orgs.db;

/* ==================================== REFERENCES ==================================== */

using { sme.common.db as COMMON } from './sme.common.db';

/* ===================================== ENTITIES ===================================== */

/* == Entity: Orgs (Organizations) Organizations */
entity Orgs
{
	key iid             	 : UUID ;
		id                   : String (30) not null;
		name                 : String (50);
		headCountry          : COMMON.Country not null;
};
/* == Entity: Users (Users) Users */
entity Users
{
	key iid             	 : UUID ;
		id                   : String (30) not null;
};