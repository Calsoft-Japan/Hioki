tableextension 50005 SalesShipmentHeaderExt extends "Sales Shipment Header"
{//CS 2025/5/8 FDD004 Table Ext for add Field to Item Table by Bobby
    fields
    {
        field(50000; "Case Mark"; Blob)
        {
            ToolTip = 'A comment field for Commercial Invoice';
        }

    }
}

