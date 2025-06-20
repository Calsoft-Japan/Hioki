pageextension 50009 PurchaseLineExt extends "Purchase Lines"
{//2025/6/20 FDD005 Sales, Purchase Lines Enhancement
    layout
    {
        addafter("Location Code")
        {
            field("Ship-to Country/Region Code"; Rec."Ship-to Country/Region Code")
            {
                ApplicationArea = All;
            }
            field("Ship-to Name"; Rec."Ship-to Name")
            {
                ApplicationArea = All;
            }
        }
    }
}