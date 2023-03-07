using sap.lcap.processordersapp from '../db/schema';

service processordersappService
{
    entity PurchaseOrders @(restrict : [
            {
                grant : [ 'READ' ],
                to : [ 'POViewer' ]
            },
            {
                grant : [ '*' ],
                to : [ 'POManager' ]
            }
      ]) as
        projection on processordersapp.PurchaseOrders;

    entity Items @(restrict : [
            {
                grant : [ 'READ' ],
                to : [ 'POViewer' ]
            },
            {
                grant : [ '*' ],
                to : [ 'POManager' ]
            }
      ]) as
        projection on processordersapp.Items;
}
