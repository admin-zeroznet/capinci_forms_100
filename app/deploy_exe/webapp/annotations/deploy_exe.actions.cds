/* ================================ ACTIONS =======================================
CAPINCI 1.00
Business Area: forms Transaction: DEPLOY
App: DEPLOY_EXE (Deploy Roles)
=================================================================================== */

using forms.srv.deploy_exe as service from '../../../../srv/forms.deploy_exe.srv.cds';

annotate service.Roles with 
@(
	UI.Identification :
	[
		/* --- Unbound Actions */
		/* --- Bound Actions */
	],
);