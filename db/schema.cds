namespace sap.lcap.processordersapp;

entity PurchaseOrders
{
    key RequestId : String;
    VendorCode : String(100);
    CompanyCode : String(100);
    PurchaseGroup : String(100);
    PurchaseOrg : String(100);
    Status : String(100);
    items : Association to many Items on items.purchaseOrders = $self;
}

entity Items
{
    key ID : UUID
        @Core.Computed;
    MaterialCode : String(100);
    MaterialDesc : String(100);
    Quantity : Integer;
    Price : Decimal(5,2);
    purchaseOrders : Association to one PurchaseOrders;
}
