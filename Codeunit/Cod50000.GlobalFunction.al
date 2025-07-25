codeunit 50000 "GlobalFunction"
{
    //FDD002_Sales Order No. by Customer 2025/4/10 Bobby
    [EventSubscriber(ObjectType::Table, Database::"Sales Header", OnAfterGetNoSeriesCode, '', false, false)]
    local procedure "Sales Header_OnAfterGetNoSeriesCode"(var SalesHeader: Record "Sales Header"; SalesReceivablesSetup: Record "Sales & Receivables Setup"; var NoSeriesCode: Code[20])
    var
        Customer: Record Customer;
    begin
        if Customer.Get(SalesHeader."Sell-to Customer No.") then begin
            if SalesHeader."Document Type" = SalesHeader."Document Type"::Order then begin
                SalesHeader."No. Series" := Customer."Sales Order No. Series";
                NoSeriesCode := Customer."Sales Order No. Series";
            end;
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

}
