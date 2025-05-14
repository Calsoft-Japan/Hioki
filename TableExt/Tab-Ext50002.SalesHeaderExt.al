tableextension 50002 SalesHeaderExt extends "Sales Header"
{//CS 2025/4/22 FDD004 Table Ext for add Field to Item Table by Bobby
    fields
    {
        field(50000; "Case Mark"; Blob)
        {
            ToolTip = 'A comment field for Commercial Invoice';
        }

    }
}

