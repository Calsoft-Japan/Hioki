tableextension 50007 "SalesInvoiceLineExt" extends "Sales Invoice Line"
{//2025/6/20 FDD005 Sales, Purchase Lines Enhancement

    fields
    {
        field(50000; "Ship-to Country/Region Code"; Code[10])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Sales Invoice Header"."Ship-to Country/Region Code" where("No." = FIELD("Document No.")));
        }

        field(50001; "Currency Code"; Code[10])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Sales Invoice Header"."Currency Code" where("No." = FIELD("Document No.")));
        }
        field(50002; "Order Date"; Date)
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Sales Invoice Header"."Order Date" where("No." = FIELD("Document No.")));
        }



    }
}

