/* ================================ ACTIONS =======================================
CAPINCI 1.00
Business Area: forms Transaction: STRUCT
App: STRUCT_ADM (Structures)
=================================================================================== */

using forms.srv.struct_adm as service from '../../../../srv/forms.struct_adm.srv.cds';

annotate service.Structures with 
@(
	UI.Identification :
	[
		/* --- Unbound Actions */
		/* --- Bound Actions */
	],
);
annotate service.StructuresValues with 
@(
	UI.Identification :
	[
		/* --- Bound Actions */
	],
);