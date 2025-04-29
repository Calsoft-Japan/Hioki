pageextension 50001 CompanyInformationExt extends "Company Information"
{//CS 2025/4/8 Page Ext for add Field to Company Information Page by Bobby
    layout
    {
        addbefore(Picture)
        {
            field("Office Code"; Rec."Office Code")
            {
                ApplicationArea = All;
            }
        }
    }
}