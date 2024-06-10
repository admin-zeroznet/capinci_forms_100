/*===================================================================================== 
CAPINCI 1.00
Business Area: parchitecture  Object: businessmaps (businessmaps)
======================================================================================= */

namespace parchitecture.businessmaps.db;

/* ==================================== REFERENCES ==================================== */

using { sme.common.db as COMMON } from './sme.common.db';
using { forms.profiles.db as PROFILES } from './forms.profiles.db';

/* ===================================== ENTITIES ===================================== */

/* == Entity: Tasks (Maps Tasks) Organizational Maps Tasks */
entity Tasks
{
	key iid             	 : UUID ;
		id                   : String (30) not null;
		name                 : String (50);
		descr                : String (250);
		mfk_profilestasks    : Composition of many PROFILES.ProfilesTasks on mfk_profilestasks.task = $self;
		mfk_proposals        : Composition of many PROFILES.Proposals on mfk_proposals.task = $self;
};