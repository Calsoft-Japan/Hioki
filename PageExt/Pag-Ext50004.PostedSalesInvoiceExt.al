pageextension 50004 PostedSalesInvoiceExt extends "Posted Sales Invoice"
{//CS 2025/5/8 Page Ext for add Field to Company Information Page by Bobby
    layout
    {
        addbefore("Work Description")
        {

            group(CaseMark)
            {
                Caption = 'Case Mark';
                field("Case Mark"; Rec.GetCaseMark())
                {
                    ApplicationArea = Basic, Suite;
                    Editable = false;
                    Importance = Additional;
                    MultiLine = true;
                    ShowCaption = false;
                }
            }
        }
    }
    actions
    {

    }

}