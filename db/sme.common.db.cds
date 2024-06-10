namespace sme.common.db;

using { Country as SAP_Country,
        Currency as SAP_Currency,
		sap.common as SAP,
        managed as SAP_Managed } from '@sap/cds/common'; 

// ------------------------------- DATA TYPES -------------------------------

//----- Workaround for overly strict OData libs and clients
annotate cds.UUID with
    @Core.Computed  
    @odata.Type : 'Edm.String'
    @UI.Hidden;


//----- Common Metatypes

type Money: Decimal(12, 2);
type Percent : Decimal(3,2) @assert.range:[0,100] @Measures.Unit : '%';
type Measure: Decimal (8,2);
type Mail: String (255);
type Phone: String (20);
type Country : SAP_Country;
type Currency : SAP_Currency;
type UOM : Association to UOMs;

// ----------------------- COMMON CODELISTS ---------------------------------

aspect Enumeration: SAP.CodeList {};

entity MeasuresSystems: Enumeration {
    key code : String(10);
}

entity UOMs : Enumeration {
    key code    : String(2);
        mSystem : Association to MeasuresSystems not null;
}

entity Convertions {
    key fromCode : Association to UOMs;
    key toCode   : Association to UOMs;
        equiv    : Double not null;
}