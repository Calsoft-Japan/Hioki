tableextension 50006 SalesLineExt extends "Sales Line"
{//2025/6/20 FDD005 Sales, Purchase Lines Enhancement
    fields
    {
        field(50000; "Ship-to Country/Region Code"; Code[10])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Sales Header"."Ship-to Country/Region Code" where("Document Type" = FIELD("Document Type"), "No." = FIELD("Document No.")));
        }
        field(50001; "Order Date"; Date)
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Sales Header"."Order Date" where("Document Type" = FIELD("Document Type"), "No." = FIELD("Document No.")));
        }

    }
}

