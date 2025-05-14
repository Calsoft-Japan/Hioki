tableextension 50000 CustomerExt extends Customer
{//CS 2025/4/8 FDD002 Table Ext for add Field to Customer Table by Bobby
    fields
    {
        field(50000; "Sales Order No. Series"; Code[20])
        {
            TableRelation = "No. Series";
        }

    }
}

