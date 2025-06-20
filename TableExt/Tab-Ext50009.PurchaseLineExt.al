tableextension 50009 "PurchaseLineExt" extends "Purchase Line"
{//2025/6/20 FDD005 Sales, Purchase Lines Enhancement

    fields
    {
        field(50000; "Ship-to Country/Region Code"; Code[10])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Sales Header"."Ship-to Country/Region Code" where("No." = FIELD("Special Order Sales No.")));
        }

        field(50001; "Ship-to Name"; Text[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Sales Header"."Ship-to Name" where("No." = FIELD("Special Order Sales No.")));
        }

    }
}

