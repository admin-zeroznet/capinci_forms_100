/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Object: authorizations (authorizations)
======================================================================================= */

namespace knowledgebase.authorizations.db;

/* ==================================== REFERENCES ==================================== */

using { sme.common.db as COMMON } from './sme.common.db';

/* ===================================== ENTITIES ===================================== */

/* == Entity: AuthObjects (Authorization Objects) Authorization Objects */
entity AuthObjects
{
	key code            	 : String (30);
		name                 : String (50);
};
/* == Entity: AuthFields (Authorization Fields) Authorization Fields */
entity AuthFields
{
	key code            	 : String (30);
		name                 : String (50);
};
/* == Entity: AuthOrgFields (Authorization Org Fields) Authorizations org fields */
entity AuthOrgFields
{
	key code            	 : String (30);
		name                 : String (50);
};