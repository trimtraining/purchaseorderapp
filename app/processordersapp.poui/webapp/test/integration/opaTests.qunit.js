sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'processordersapp/poui/test/integration/FirstJourney',
		'processordersapp/poui/test/integration/pages/PurchaseOrdersList',
		'processordersapp/poui/test/integration/pages/PurchaseOrdersObjectPage',
		'processordersapp/poui/test/integration/pages/ItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, PurchaseOrdersList, PurchaseOrdersObjectPage, ItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('processordersapp/poui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePurchaseOrdersList: PurchaseOrdersList,
					onThePurchaseOrdersObjectPage: PurchaseOrdersObjectPage,
					onTheItemsObjectPage: ItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);