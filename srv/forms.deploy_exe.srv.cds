/*===================================================================================== 
CAPINCI 1.00
Business Area: forms  Transaction: DEPLOY
App: DEPLOY_EXE (Deploy Roles)
======================================================================================= */

namespace forms.srv;

/* ==================================== REFERENCES ==================================== */

using { forms.roles.db as ROLES } from '../db/forms.roles.db';
using { pmo.orgs.db as ORGS } from '../db/pmo.orgs.db';

/* ====================================== SERVICE ===================================== */

@(path:'FORMS_100/forms/deploy_exe/v1')
service deploy_exe
{
	entity Roles as projection on ROLES.Roles
	actions
	{
		@(
			cds.odata.bindingparameter.name : '_it',
			Common.SideEffects:
			{
				TargetEntities : ['_it']
			},
			Core.OperationAvailable : _it.IsActiveEntity //Avoids execution in Draft Mode
		)
		action Deploy
		(
		);
	};

	/*  -- Value Helps */
	@readonly entity Orgs as projection on ORGS.Orgs
	{
		*,
	};

	/*  -- UnBound Actions */
};
