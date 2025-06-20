pageextension 50005 SalesLinesExt extends "Sales Lines"
{//2025/6/20 FDD005 Sales, Purchase Lines Enhancement
    layout
    {
        addafter("Location Code")
        {
            field("Ship-to Country/Region Code"; Rec."Ship-to Country/Region Code")
            {
                ApplicationArea = All;
            }
            field("Order Date"; Rec."Order Date")
            {
                ApplicationArea = All;
            }
        }
    }
}