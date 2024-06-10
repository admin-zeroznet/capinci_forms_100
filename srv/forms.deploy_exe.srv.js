/* ================================= JS Code ======================================
CAPINCI 1.00
Business Area: forms Transaction: DEPLOY
App: DEPLOY_EXE (Deploy Roles)
=================================================================================== */


const cds = require("@sap/cds");

module.exports = async (srv) =>
{
	const { Orgs,Roles } = srv.entities;

	/* ----------------------------- HANDLERS -------------------------------------- */

	srv.on('Deploy',Roles,async (req) =>
	{
		let { iid } = req.params[0];
		
		try 
		{
			req.info(`Deploy executed! `);
		}
		catch (error)
		{
			req.error(error);
		}
	});

}