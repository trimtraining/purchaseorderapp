using processordersappService as service from '../../srv/service';

annotate service.PurchaseOrders with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Request Id',
            Value : RequestId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'VendorCode',
            Value : VendorCode,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CompanyCode',
            Value : CompanyCode,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PurchaseGroup',
            Value : PurchaseGroup,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PurchaseOrg',
            Value : PurchaseOrg,
        },
        {
            $Type : 'UI.DataField',
            Value : Status,
        },
    ]
);
annotate service.PurchaseOrders with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'RequestId',
                Value : RequestId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'VendorCode',
                Value : VendorCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CompanyCode',
                Value : CompanyCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PurchaseGroup',
                Value : PurchaseGroup,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PurchaseOrg',
                Value : PurchaseOrg,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : Status,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Line Items',
            ID : 'LineItems',
            Target : 'items/@UI.LineItem#LineItems',
        },
    ]
);
annotate service.PurchaseOrders with @(
    UI.SelectionFields : [
        CompanyCode,
        Status,
    ]
);
annotate service.PurchaseOrders with {
    CompanyCode @Common.Label : 'CompanyCode'
};
annotate service.PurchaseOrders with {
    Status @Common.Label : 'Status'
};
annotate service.PurchaseOrders with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : RequestId,
        },
        TypeName : '',
        TypeNamePlural : '',
    }
);
annotate service.PurchaseOrders with @(
    UI.DataPoint #RequestId : {
        $Type : 'UI.DataPointType',
        Value : RequestId,
        Title : 'RequestId',
    },
    UI.DataPoint #CompanyCode : {
        $Type : 'UI.DataPointType',
        Value : CompanyCode,
        Title : 'CompanyCode',
    },
    UI.DataPoint #Status : {
        $Type : 'UI.DataPointType',
        Value : Status,
        Title : 'Status',
    },
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'RequestId',
            Target : '@UI.DataPoint#RequestId',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'CompanyCode',
            Target : '@UI.DataPoint#CompanyCode',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'Status',
            Target : '@UI.DataPoint#Status',
        },
    ]
);
annotate service.Items with @(
    UI.LineItem #LineItems : [
        {
            $Type : 'UI.DataField',
            Value : MaterialDesc,
            Label : 'MaterialDesc',
        },
        {
            $Type : 'UI.DataField',
            Value : MaterialCode,
            Label : 'MaterialCode',
        },{
            $Type : 'UI.DataField',
            Value : Price,
            Label : 'Price',
        },{
            $Type : 'UI.DataField',
            Value : Quantity,
            Label : 'Quantity',
        },]
);
