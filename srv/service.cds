using sap.lcap.processordersapp from '../db/schema';

service processordersappService
{
    entity PurchaseOrders as
        projection on processordersapp.PurchaseOrders;

    entity Items as
        projection on processordersapp.Items;
}
