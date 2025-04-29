pageextension 50021 CustomerCardExt extends "Customer Card"
{//CS 2025/4/8 Page Ext for add Field to Company Information Page by Bobby
    layout
    {
        addafter(Priority)
        {
            field("Sales Order No. Series"; Rec."Sales Order No. Series")
            {
                ApplicationArea = All;
            }
        }
    }
}