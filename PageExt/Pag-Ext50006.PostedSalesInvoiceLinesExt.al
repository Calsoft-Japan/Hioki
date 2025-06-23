pageextension 50006 PostedSalesInvoiceLinesEx extends "Posted Sales Invoice Lines"
{//2025/6/20 FDD005 Sales, Purchase Lines Enhancement
    layout
    {
        addafter("Quantity")
        {
            field("Ship-to Country/Region Code"; Rec."Ship-to Country/Region Code")
            {
                ApplicationArea = All;
            }
            field("Currency Code"; Rec."Currency Code")
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