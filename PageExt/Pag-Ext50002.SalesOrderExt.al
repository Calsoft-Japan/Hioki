pageextension 50002 SalesOrderExt extends "Sales Order"
{//CS 2025/4/8 Page Ext for add Field to Company Information Page by Bobby
    layout
    {
        addafter(Status)
        {

            group(CaseMark)
            {
                Caption = 'Case Mark';
                field("Case Mark"; CaseMark)
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Additional;
                    MultiLine = true;
                    ShowCaption = false;
                    ToolTip = 'A comment field for Commercial Invoice';
                    trigger OnValidate()
                    begin
                        SetCaseMark(CaseMark);
                    end;
                }

            }
        }
    }
    actions
    {

    }
    var
        CaseMark: Text;

    trigger OnAfterGetRecord()
    begin
        CaseMark := GetCaseMark();
    end;

    procedure SetCaseMark(NewCaseMark: Text)
    var
        OutStream: OutStream;
    begin
        Clear(Rec."Case Mark");
        Rec."Case Mark".CreateOutStream(OutStream, TEXTENCODING::UTF8);
        OutStream.WriteText(NewCaseMark);
        Rec.Modify();
    end;


    procedure GetCaseMark() CaseMark: Text
    var
        TypeHelper: Codeunit "Type Helper";
        InStream: InStream;
    begin
        Rec.CalcFields("Case Mark");
        Rec."Case Mark".CreateInStream(InStream, TEXTENCODING::UTF8);
        exit(TypeHelper.TryReadAsTextWithSepAndFieldErrMsg(InStream, TypeHelper.LFSeparator(), Rec.FieldName("Case Mark")));
    end;

}