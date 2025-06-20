pageextension 50007 PostedSalesCreditMemoLinesExt extends "Posted Sales Credit Memo Lines"
{//2025/6/20 FDD005 Sales, Purchase Lines Enhancement
    layout
    {
        addafter("Quantity")
        {
            field("Sell-to Country/Region Code"; Rec."Sell-to Country/Region Code")
            {
                ApplicationArea = All;
            }
            field("Shipment Date"; Rec."Shipment Date")
            {
                ApplicationArea = All;
            }
        }
    }
}