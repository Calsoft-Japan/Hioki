codeunit 50000 "GlobalFunction"
{
    //FDD002_Sales Order No. by Customer 2025/4/10 Bobby
    [EventSubscriber(ObjectType::Table, Database::"Sales Header", OnAfterGetNoSeriesCode, '', false, false)]
    local procedure "Sales Header_OnAfterGetNoSeriesCode"(var SalesHeader: Record "Sales Header"; SalesReceivablesSetup: Record "Sales & Receivables Setup"; var NoSeriesCode: Code[20])
    var
        Customer: Record Customer;
    begin
        if Customer.Get(SalesHeader."Sell-to Customer No.") then begin
            SalesHeader."No. Series" := Customer."Sales Order No. Series";
            NoSeriesCode := Customer."Sales Order No. Series";
        end;
    end;

    //FDD001_Auto Purchase Order Numbering 2025/4/10 Bobby
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Req. Wksh.-Make Order", OnBeforePurchOrderHeaderInsert, '', false, false)]
    local procedure "Req. Wksh.-Make Order_OnBeforePurchOrderHeaderInsert"(var PurchaseHeader: Record "Purchase Header"; RequisitionLine: Record "Requisition Line"; var ReceiveDateReq: Date; var OrderDateReq: Date; var PostingDateReq: Date; var ReferenceReq: Text[35])
    var
        CompanyInformation: Record "Company Information";
    begin
        CompanyInformation.Get();
        if (CompanyInformation."Office Code" <> '') and (RequisitionLine."Sales Order No." <> '') then
            PurchaseHeader."No." := CompanyInformation."Office Code" + '-' + RequisitionLine."Sales Order No.";
    end;

    //FDD004_Commercial Invoice 2025/5/8 Bobby
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", OnInsertShipmentHeaderOnBeforeTransferfieldsToSalesShptHeader, '', false, false)]
    local procedure "Sales-Post_OnInsertShipmentHeaderOnBeforeTransferfieldsToSalesShptHeader"(var SalesHeader: Record "Sales Header")
    begin
        SalesHeader.CalcFields("Case Mark");
    end;

    //FDD004_Commercial Invoice 2025/5/8 Bobby
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", OnInsertInvoiceHeaderOnBeforeSalesInvHeaderTransferFields, '', false, false)]
    local procedure "Sales-Post_OnInsertInvoiceHeaderOnBeforeSalesInvHeaderTransferFields"(var SalesHeader: Record "Sales Header")
    begin
        SalesHeader.CalcFields("Case Mark");
    end;

    //FDD006 Requisition Worksheet -Carry Out Action Message validation 
    [EventSubscriber(ObjectType::Page, Page::"Req. Worksheet", 'OnBeforeActionEvent', 'CarryOutActionMessage', false, false)]
    local procedure OnBeforeCarryOutActionMessage(var Rec: Record "Requisition Line")
    begin
        Rec.Reset();
        Rec.SetFilter("Accept Action Message", '%1', TRUE);
        Rec.SetFilter("Purchasing Code", 'SPEC ORDER');
        if Rec.FindFirst() then begin
            Rec.SetFilter("Sales Order No.", '<>%1', Rec."Sales Order No.");
            if Rec.Count > 0 then begin
                Error('Please select Accept Action Message for only one Sales Order No. to create a special purchase order.');
            end;
        end;
    end;

}
