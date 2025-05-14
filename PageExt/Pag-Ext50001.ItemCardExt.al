pageextension 50001 ItemCardExt extends "Item Card"
{//CS 2025/4/8 Page Ext for add Field to Company Information Page by Bobby
    layout
    {
        addafter(VariantMandatoryDefaultNo)
        {
            field("HS Code"; Rec."HS Code")
            {
                ApplicationArea = All;
            }
        }
    }
}