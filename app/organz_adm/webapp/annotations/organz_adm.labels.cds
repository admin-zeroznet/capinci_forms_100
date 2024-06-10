/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: pmo Transaction: ORGANZ
App: ORGANZ_ADM (Organizations)
=================================================================================== */

using pmo.srv.organz_adm as service from '../../../../srv/pmo.organz_adm.srv.cds';

annotate service.Orgs with 
{
	iid                  @title: '{i18n>_IID}' @UI.Hidden ;
	id                   @title: '{i18n>_ID}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
	headCountry          @title: '{i18n>_HEADCOUNTRY}' @mandatory 
	                     @Common.ValueListWithFixedValues @Common.Text : headCountry.name @Common.TextArrangement : #TextFirst;
};

/* ================================== VALUE HELPS =================================== */
