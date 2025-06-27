tableextension 50008 "SalesCr.MemoLineExt" extends "Sales Cr.Memo Line"
{//2025/6/20 FDD005 Sales, Purchase Lines Enhancement

    fields
    {
        field(50000; "Ship-to Country/Region Code"; Code[10])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Sales Cr.Memo Header"."Ship-to Country/Region Code" where("No." = FIELD("Document No.")));
        }

    }
}

