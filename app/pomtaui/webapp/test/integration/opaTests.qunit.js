sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/demo/pomtaui/test/integration/FirstJourney',
		'com/demo/pomtaui/test/integration/pages/PurchaseOrdersList',
		'com/demo/pomtaui/test/integration/pages/PurchaseOrdersObjectPage',
		'com/demo/pomtaui/test/integration/pages/ItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, PurchaseOrdersList, PurchaseOrdersObjectPage, ItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/demo/pomtaui') + '/index.html'
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