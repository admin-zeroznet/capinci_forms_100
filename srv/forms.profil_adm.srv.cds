/*===================================================================================== 
CAPINCI 1.00
Business Area: forms  Transaction: PROFIL
App: PROFIL_ADM (Profiles)
======================================================================================= */

namespace forms.srv;

/* ==================================== REFERENCES ==================================== */

using { forms.profiles.db as PROFILES } from '../db/forms.profiles.db';
using { parchitecture.businessmaps.db as BUSINESSMAPS } from '../db/parchitecture.businessmaps.db';

/* ====================================== SERVICE ===================================== */

@(path:'FORMS_100/forms/profil_adm/v1')
service profil_adm
{
	@odata.draft.enabled
	@Capabilities: 
	{
		InsertRestrictions.Insertable: true,
		UpdateRestrictions.Updatable: true,
		DeleteRestrictions.Deletable: true,
	}
	entity Profiles as projection on PROFILES.Profiles;

	entity ProfilesTasks as projection on PROFILES.ProfilesTasks;

	/*  -- Value Helps */
	@readonly entity Tasks as projection on BUSINESSMAPS.Tasks
	{
		*,
	};

	/*  -- UnBound Actions */
};
