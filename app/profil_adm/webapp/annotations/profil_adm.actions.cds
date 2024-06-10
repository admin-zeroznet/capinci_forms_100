/* ================================ ACTIONS =======================================
CAPINCI 1.00
Business Area: forms Transaction: PROFIL
App: PROFIL_ADM (Profiles)
=================================================================================== */

using forms.srv.profil_adm as service from '../../../../srv/forms.profil_adm.srv.cds';

annotate service.Profiles with 
@(
	UI.Identification :
	[
		/* --- Unbound Actions */
		/* --- Bound Actions */
	],
);
annotate service.ProfilesTasks with 
@(
	UI.Identification :
	[
		/* --- Bound Actions */
	],
);