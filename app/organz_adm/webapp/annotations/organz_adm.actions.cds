/* ================================ ACTIONS =======================================
CAPINCI 1.00
Business Area: pmo Transaction: ORGANZ
App: ORGANZ_ADM (Organizations)
=================================================================================== */

using pmo.srv.organz_adm as service from '../../../../srv/pmo.organz_adm.srv.cds';

annotate service.Orgs with 
@(
	UI.Identification :
	[
		/* --- Unbound Actions */
		/* --- Bound Actions */
	],
);