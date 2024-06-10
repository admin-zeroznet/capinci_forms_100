/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Object: sapobjects (sapobjects)
======================================================================================= */

namespace knowledgebase.sapobjects.db;

/* ==================================== REFERENCES ==================================== */

using { sme.common.db as COMMON } from './sme.common.db';

/* ===================================== ENTITIES ===================================== */

/* == Entity: FioriApps (Fiori Apps) Fiori Apps */
entity FioriApps
{
	key code            	 : String (30);
		name                 : String (50);
};
/* == Entity: TCodes (Transactions Codes) Transaction Codes */
entity TCodes
{
	key code            	 : String (30);
		name                 : String (50);
};