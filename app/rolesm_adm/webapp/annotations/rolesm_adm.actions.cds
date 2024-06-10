/* ================================ ACTIONS =======================================
CAPINCI 1.00
Business Area: forms Transaction: ROLESM
App: ROLESM_ADM (Roles)
=================================================================================== */

using forms.srv.rolesm_adm as service from '../../../../srv/forms.rolesm_adm.srv.cds';

annotate service.Roles with 
@(
	UI.Identification :
	[
		/* --- Unbound Actions */
		/* --- Bound Actions */
	],
);
annotate service.RolesProfiles with 
@(
	UI.Identification :
	[
		/* --- Bound Actions */
	],
);
annotate service.RolesStructures with 
@(
	UI.Identification :
	[
		/* --- Bound Actions */
	],
);