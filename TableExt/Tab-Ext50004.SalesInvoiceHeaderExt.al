tableextension 50004 SalesInvoiceHeaderExt extends "Sales Invoice Header"
{//CS 2025/5/8 FDD004 Table Ext for add Field to Item Table by Bobby
    fields
    {
        field(50000; "Case Mark"; Blob)
        {
            ToolTip = 'A comment field for Commercial Invoice';
        }

    }
    procedure GetCaseMark(): Text
    var
        TempBlob: Codeunit "Temp Blob";
        TypeHelper: Codeunit "Type Helper";
        InStream: InStream;
    begin
        TempBlob.FromRecord(Rec, FieldNo("Case Mark"));
        TempBlob.CreateInStream(InStream, TEXTENCODING::UTF8);
        exit(TypeHelper.TryReadAsTextWithSepAndFieldErrMsg(InStream, TypeHelper.LFSeparator(), FieldName("Case Mark")));
    end;
}

