sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'processordersapp.poui',
            componentId: 'PurchaseOrdersObjectPage',
            entitySet: 'PurchaseOrders'
        },
        CustomPageDefinitions
    );
});