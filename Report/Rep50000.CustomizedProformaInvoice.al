report 50000 "Customized Proforma Invoice"
{
    Caption = 'Customized Proforma Invoice';
    DefaultLayout = RDLC;
    RDLCLayout = './RDLC/CustomizedProformaInvoice.rdlc';
    ApplicationArea = Basic, Suite;
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(Header; "Sales Header")
        {
            DataItemTableView = sorting("Document Type", "No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeading = 'Customized Proforma Invoice';
            column(DocumentDate; Format("Document Date", 0, 4))
            {
            }
            column(CompanyPicture; CompanyInformation.Picture)
            {
            }
            column(CompanyEMail; CompanyInformation."E-Mail")
            {
            }
            column(CompanyHomePage; CompanyInformation."Home Page")
            {
            }
            column(CompanyPhoneNo; CompanyInformation."Phone No.")
            {
            }
            column(CompanyVATRegNo; CompanyInformation.GetVATRegistrationNumber())
            {
            }
            column(CompanyAddress1; CompanyAddress[1])
            {
            }
            column(CompanyAddress2; CompanyAddress[2])
            {
            }
            column(CompanyAddress3; CompanyAddress[3])
            {
            }
            column(CompanyAddress4; CompanyAddress[4])
            {
            }
            column(CompanyAddress5; CompanyAddress[5])
            {
            }
            column(CompanyAddress6; CompanyAddress[6])
            {
            }
            column(CompanyAddress7; CompanyAddress[7])
            {
            }
            column(CompanyAddress8; CompanyAddress[8])
            {
            }
            column(CompanyAddress9; CompanyAddress[9])
            {
            }
            column(CustomerAddress1; CustomerAddress[1])
            {
            }
            column(CustomerAddress2; CustomerAddress[2])
            {
            }
            column(CustomerAddress3; CustomerAddress[3])
            {
            }
            column(CustomerAddress4; CustomerAddress[4])
            {
            }
            column(CustomerAddress5; CustomerAddress[5])
            {
            }
            column(CustomerAddress6; CustomerAddress[6])
            {
            }
            column(CustomerAddress7; CustomerAddress[7])
            {
            }
            column(CustomerAddress8; CustomerAddress[8])
            {
            }
            column(SellToContactPhoneNoLbl; SellToContactPhoneNoLbl)
            {
            }
            column(SellToContactMobilePhoneNoLbl; SellToContactMobilePhoneNoLbl)
            {
            }
            column(SellToContactEmailLbl; SellToContactEmailLbl)
            {
            }
            column(BillToContactPhoneNoLbl; BillToContactPhoneNoLbl)
            {
            }
            column(BillToContactMobilePhoneNoLbl; BillToContactMobilePhoneNoLbl)
            {
            }
            column(BillToContactEmailLbl; BillToContactEmailLbl)
            {
            }
            column(SellToContactPhoneNo; SellToContact."Phone No.")
            {
            }
            column(SellToContactMobilePhoneNo; SellToContact."Mobile Phone No.")
            {
            }
            column(SellToContactEmail; SellToContact."E-Mail")
            {
            }
            column(BillToContactPhoneNo; BillToContact."Phone No.")
            {
            }
            column(BillToContactMobilePhoneNo; BillToContact."Mobile Phone No.")
            {
            }
            column(BillToContactEmail; BillToContact."E-Mail")
            {
            }
            column(BillToCustomerName; "Bill-to Name")
            {
            }
            column(BillToAddress; "Bill-to Address")
            {
            }
            column(BillToAddress2; "Bill-to Address 2")
            {
            }
            column(BillToCity; "Bill-to City")
            {
            }
            column(BillToPostCode; "Bill-to Post Code")
            {
            }
            column(BillToCountryName; BillToCountryName)
            {
            }
            column(ShipFromAddress1; CompanyInformation.City)
            {
            }
            column(ShipFromAddress2; ShipFromCountryName)
            {
            }
            column(ShipToAddress1; "Ship-to City")
            {
            }
            column(ShipToAddress2; ShiptoCountryName)
            {
            }
            column(PaymentTerms; PaymentTermsDescription)
            {
            }
            column(PONo; "External Document No.")
            {
            }
            column(BankInformation1; BankInformation[1])
            {
            }
            column(BankInformation2; BankInformation[2])
            {
            }
            column(BankInformation3; BankInformation[3])
            {
            }
            column(BankInformation4; BankInformation[4])
            {
            }
            column(BankInformation5; BankInformation[5])
            {
            }
            column(BankInformation6; BankInformation[6])
            {
            }
            column(BankInformation7; BankInformation[7])
            {
            }
            column(BankInformation8; BankInformation[8])
            {
            }
            column(BankInformation9; BankInformation[9])
            {
            }
            column(YourReference; "Your Reference")
            {
            }
            column(ExternalDocumentNo; "External Document No.")
            {
            }
            column(DocumentNo; "No.")
            {
            }
            column(CompanyLegalOffice; LegalOfficeTxt)
            {
            }
            column(SalesPersonName; SalespersonPurchaserName)
            {
            }
            column(ShipmentMethodDescription; ShipmentMethodDescription)
            {
            }
            column(Currency; CurrencyCode)
            {
            }
            column(CustomerVATRegNo; GetCustomerVATRegistrationNumber())
            {
            }
            column(CustomerVATRegistrationNoLbl; GetCustomerVATRegistrationNumberLbl())
            {
            }
            column(PageLbl; PageLbl)
            {
            }
            column(DocumentTitleLbl; DocumentCaption())
            {
            }
            column(YourReferenceLbl; FieldCaption("Your Reference"))
            {
            }
            column(ExternalDocumentNoLbl; FieldCaption("External Document No."))
            {
            }
            column(CompanyLegalOfficeLbl; LegalOfficeLbl)
            {
            }
            column(SalesPersonLbl; SalesPersonLblText)
            {
            }
            column(EMailLbl; CompanyInformation.FieldCaption("E-Mail"))
            {
            }
            column(HomePageLbl; CompanyInformation.FieldCaption("Home Page"))
            {
            }
            column(CompanyPhoneNoLbl; CompanyInformation.FieldCaption("Phone No."))
            {
            }
            column(ShipmentMethodDescriptionLbl; DummyShipmentMethod.TableCaption())
            {
            }
            column(CurrencyLbl; DummyCurrency.TableCaption())
            {
            }
            column(ItemLbl; Item.TableCaption())
            {
            }
            /*column(TariffLbl; Item.FieldCaption("Tariff No."))
            {
            }*/
            column(UnitPriceLbl; Item.FieldCaption("Unit Price"))
            {
            }
            column(CountryOfManufactuctureLbl; CountryOfManufactuctureLbl)
            {
            }
            column(AmountLbl; Line.FieldCaption(Amount))
            {
            }
            column(VATPctLbl; Line.FieldCaption("VAT %"))
            {
            }
            column(VATAmountLbl; DummyVATAmountLine.VATAmountText())
            {
            }
            column(TotalWeightLbl; TotalWeightLbl)
            {
            }
            column(TotalAmountLbl; TotalAmountLbl)
            {
            }
            column(TotalAmountInclVATLbl; TotalAmountInclVATLbl)
            {
            }
            column(QuantityLbl; Line.FieldCaption(Quantity))
            {
            }
            column(NetWeightLbl; Line.FieldCaption("Net Weight"))
            {
            }
            column(DeclartionLbl; DeclartionLbl)
            {
            }
            column(SignatureLbl; SignatureLbl)
            {
            }
            column(SignatureNameLbl; SignatureNameLbl)
            {
            }
            column(SignaturePositionLbl; SignaturePositionLbl)
            {
            }
            column(VATRegNoLbl; CompanyInformation.GetVATRegistrationNumberLbl())
            {
            }
            column(Consignee; Consignee)
            {
            }
            column(ShowWorkDescription; ShowWorkDescription) { }
            column(BankAddressInformation1; BankAddressInformation1)
            {
            }
            column(BankAddressInformation2; BankAddressInformation2)
            {
            }
            dataitem(Line; "Sales Line")
            {
                DataItemLink = "Document Type" = field("Document Type"), "Document No." = field("No.");
                DataItemLinkReference = Header;
                DataItemTableView = sorting("Document No.", "Line No.");// where(Type = filter("Charge (Item)" | Item));
                column(ItemDescription; Description)
                {
                }
                column(CountryOfManufacturing; CountryOfManufacturing)
                {

                }
                /*column(Tariff; Item."Tariff No.")
                {
                }*/
                column(Quantity; "Qty. to Invoice")
                {
                }
                column(Price; FormattedLinePrice)
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 2;
                }
                column(NetWeight; "Net Weight")
                {
                }
                column(LineAmount; FormattedLineAmount)
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                }
                column(VATPct; "VAT %")
                {
                }
                column(VATAmount; FormattedVATAmount)
                {
                }

                trigger OnAfterGetRecord()
                var
                    Location: Record Location;
                    AutoFormatType: Enum "Auto Format";
                begin
                    if Type = Type::Item then begin
                        GetItemForRec("No.");
                    end;

                    OnBeforeLineOnAfterGetRecord(Header, Line);
                    CountryOfManufacturing := '';
                    if Type = Type::Item then begin
                        if CountryRegion.Get(Item."Country/Region of Origin Code") then
                            CountryOfManufacturing := CountryRegion.Name;
                    end;

                    if IsShipment() then
                        if Location.RequireShipment("Location Code") and ("Quantity Shipped" = 0) then
                            "Qty. to Invoice" := Quantity;

                    if FormatDocument.HideDocumentLine(HideLinesWithZeroQuantity, Line, FieldNo("Qty. to Invoice")) then
                        CurrReport.Skip();

                    if Quantity = 0 then begin
                        LinePrice := "Unit Price";
                        LineAmount := 0;
                        VATAmount := 0;
                    end else begin
                        LinePrice := Round(Amount / Quantity, Currency."Unit-Amount Rounding Precision");
                        LineAmount := Round(Amount * "Qty. to Invoice" / Quantity, Currency."Amount Rounding Precision");
                        if Currency.Code = '' then
                            VATAmount := "Amount Including VAT" - Amount
                        else
                            VATAmount := Round(
                                Amount * "VAT %" / 100 * "Qty. to Invoice" / Quantity, Currency."Amount Rounding Precision");

                        TotalAmount += LineAmount;
                        TotalWeight += Round("Qty. to Invoice" * "Net Weight");
                        TotalVATAmount += VATAmount;
                        TotalAmountInclVAT += Round("Amount Including VAT" * "Qty. to Invoice" / Quantity, Currency."Amount Rounding Precision");
                    end;

                    FormattedLinePrice := Format(LinePrice, 0, AutoFormat.ResolveAutoFormat(AutoFormatType::UnitAmountFormat, CurrencyCode));
                    FormattedLineAmount := Format(LineAmount, 0, AutoFormat.ResolveAutoFormat(AutoFormatType::AmountFormat, CurrencyCode));
                    FormattedVATAmount := Format(VATAmount, 0, AutoFormat.ResolveAutoFormat(AutoFormatType::AmountFormat, CurrencyCode));
                end;

                trigger OnPreDataItem()
                begin
                    TotalWeight := 0;
                    TotalAmount := 0;
                    TotalVATAmount := 0;
                    TotalAmountInclVAT := 0;
                    //SetRange(Type, Type::Item);
                    //SetFilter(Type, '%1|%2', Type::Item, Type::"Charge (Item)");
                    OnAfterLineOnPreDataItem(Header, Line);
                end;
            }
            dataitem(WorkDescriptionLines; "Integer")
            {
                DataItemTableView = sorting(Number) where(Number = filter(1 .. 99999));
                column(WorkDescriptionLineNumber; Number) { }
                column(WorkDescriptionLine; WorkDescriptionLine) { }

                trigger OnAfterGetRecord()
                var
                    TypeHelper: Codeunit "Type Helper";
                begin
                    if WorkDescriptionInStream.EOS() then
                        CurrReport.Break();
                    WorkDescriptionLine := TypeHelper.ReadAsTextWithSeparator(WorkDescriptionInStream, TypeHelper.LFSeparator());
                end;

                trigger OnPostDataItem()
                begin
                    Clear(WorkDescriptionInStream)
                end;

                trigger OnPreDataItem()
                begin
                    if not ShowWorkDescription then
                        CurrReport.Break();
                    Header."Work Description".CreateInStream(WorkDescriptionInStream, TextEncoding::UTF8);
                end;
            }
            dataitem(Totals; "Integer")
            {
                MaxIteration = 1;
                column(TotalWeight; TotalWeight)
                {
                }
                column(TotalValue; FormattedTotalAmount)
                {
                }
                column(TotalVATAmount; FormattedTotalVATAmount)
                {
                }
                column(TotalAmountInclVAT; FormattedTotalAmountInclVAT)
                {
                }

                trigger OnPreDataItem()
                var
                    AutoFormatType: Enum "Auto Format";
                begin
                    FormattedTotalAmount := Format(TotalAmount, 0, AutoFormat.ResolveAutoFormat(AutoFormatType::AmountFormat, CurrencyCode));
                    FormattedTotalVATAmount := Format(TotalVATAmount, 0, AutoFormat.ResolveAutoFormat(AutoFormatType::AmountFormat, CurrencyCode));
                    FormattedTotalAmountInclVAT := Format(TotalAmountInclVAT, 0, AutoFormat.ResolveAutoFormat(AutoFormatType::AmountFormat, CurrencyCode));
                end;
            }

            trigger OnAfterGetRecord()
            var
                BankAccount: Record "Bank Account";
                FormatAddress: Codeunit "Format Address";
            begin
                CurrReport.Language := LanguageMgt.GetLanguageIdOrDefault("Language Code");
                CurrReport.FormatRegion := LanguageMgt.GetFormatRegionOrDefault("Format Region");
                FormatDocumentFields(Header);
                BillToCountryName := '';
                if CountryRegion.Get(Header."Bill-to Country/Region Code") then
                    BillToCountryName := CountryRegion.Name;
                ShiptoCountryName := '';
                if CountryRegion.Get(Header."Ship-to Country/Region Code") then
                    ShiptoCountryName := CountryRegion.Name;
                PaymentTermsDescription := '';
                if PaymentTerms.Get(Header."Payment Terms Code") then
                    PaymentTermsDescription := PaymentTerms.Description;
                if SellToContact.Get("Sell-to Contact No.") then;
                if BillToContact.Get("Bill-to Contact No.") then;
                BankAccount.Reset();
                BankAccount.SetRange("Use as Default for Currency", true);
                BankAccount.SetRange("Currency Code", "Currency Code");
                if BankAccount.FindFirst() then begin
                    BankInformation[1] := BankAccount.Name;
                    BankInformation[2] := BankAccount.Address;

                    if BankAccount."Address 2" <> '' then
                        BankInformation[3] := ', ' + BankAccount."Address 2"
                    else
                        BankInformation[3] := '';

                    BankInformation[4] := BankAccount."Post Code";
                    BankInformation[5] := BankAccount.City;
                    BankInformation[6] := '';
                    if CountryRegion.Get(BankAccount."Country/Region Code") then
                        BankInformation[6] := CountryRegion.Name;

                    BankAddressInformation1 := '';
                    if BankInformation[4] <> '' then
                        BankAddressInformation1 := BankInformation[4];

                    if (BankInformation[5] <> '') and (BankInformation[4] <> '') then
                        BankAddressInformation1 += ', ' + BankInformation[5]
                    else if BankInformation[5] <> '' then
                        BankAddressInformation1 += BankInformation[5];

                    if (BankInformation[6] <> '') and ((BankInformation[5] <> '') or (BankInformation[4] <> '')) then
                        BankAddressInformation1 += ', ' + BankInformation[6]
                    else if BankInformation[6] <> '' then
                        BankAddressInformation1 += BankInformation[6];

                    BankInformation[7] := BankAccount.IBAN;
                    BankInformation[8] := BankAccount."SWIFT Code";
                    BankInformation[9] := BankAccount."Currency Code";

                end;

                Consignee := '';
                FormatAddress.FormatAddr(ConsigneeAddress, Header."Bill-to Name", '', '', Header."Bill-to Address", Header."Bill-to Address 2",
                Header."Bill-to City", Header."Bill-to Post Code", Header."Bill-to County", Header."Bill-to Country/Region Code");
                CompressArray(ConsigneeAddress);
                //Consignee := '<b>' + ConsigneeAddress[1] + '</b><br>' + ConsigneeAddress[2] + '<br>' + ConsigneeAddress[3] + '<br>' + ConsigneeAddress[4] + '<br>' + ConsigneeAddress[5] + '<br>' + ConsigneeAddress[6];

                Consignee += '<b>' + ConsigneeAddress[1] + '</b>';
                if ConsigneeAddress[2] <> '' then
                    Consignee += '<br>' + ConsigneeAddress[2];

                if ConsigneeAddress[3] <> '' then
                    Consignee += '<br>' + ConsigneeAddress[3];

                if ConsigneeAddress[4] <> '' then
                    Consignee += '<br>' + ConsigneeAddress[4];

                if ConsigneeAddress[5] <> '' then
                    Consignee += '<br>' + ConsigneeAddress[5];

                if ConsigneeAddress[6] <> '' then
                    Consignee += '<br>' + ConsigneeAddress[6];
                /*BankAddressInformation2 := '';
                if CompanyAddress[4] <> '' then
                    BankAddressInformation2 := CompanyAddress[4];
                if CompanyAddress[5] <> '' then
                    BankAddressInformation2 += ', ' + CompanyAddress[5];
                    */
                CompanyAddress[7] := CompanyInformation."Phone No.";
                CompanyAddress[8] := CompanyInformation."E-Mail";
                CompanyAddress[9] := CompanyInformation."Home Page";
                CompressArray(CompanyAddress);
                CalcFields("Work Description");
                ShowWorkDescription := "Work Description".HasValue();
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(HideLinesWithZeroQuantityControl; HideLinesWithZeroQuantity)
                    {
                        ApplicationArea = Basic, Suite;
                        ToolTip = 'Specifies if the lines with zero quantity are printed.';
                        Caption = 'Hide lines with zero quantity';
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnInitReport()
    var
        IsHandled: Boolean;
    begin
        CompanyInformation.Get();
        CompanyInformation.CalcFields(Picture);
        ShipFromCountryName := '';
        if CountryRegion.Get(CompanyInformation."Country/Region Code") then
            ShipFromCountryName := CountryRegion.Name;

        IsHandled := false;
        OnInitReportForGlobalVariable(IsHandled, LegalOfficeTxt, LegalOfficeLbl);
    end;

    var
        DummyVATAmountLine: Record "VAT Amount Line";
        DummyShipmentMethod: Record "Shipment Method";
        DummyCurrency: Record Currency;
        AutoFormat: Codeunit "Auto Format";
        LanguageMgt: Codeunit Language;
        FormatDocument: Codeunit "Format Document";
        CountryOfManufactuctureLbl: Label 'Country';
        TotalWeightLbl: Label 'Total Weight';
        SalespersonPurchaserName: Text;
        ShipmentMethodDescription: Text;
        DocumentTitleLbl: Label 'PROFORMA INVOICE';
        PageLbl: Label 'Page';
        DeclartionLbl: Label 'For customs purposes only.';
        SignatureLbl: Label 'For and on behalf of the above named company:';
        SignatureNameLbl: Label 'Name (in print) Signature';
        SignaturePositionLbl: Label 'Position in company';
        SellToContactPhoneNoLbl: Label 'Sell-to Contact Phone No.';
        SellToContactMobilePhoneNoLbl: Label 'Sell-to Contact Mobile Phone No.';
        SellToContactEmailLbl: Label 'Sell-to Contact E-Mail';
        BillToContactPhoneNoLbl: Label 'Bill-to Contact Phone No.';
        BillToContactMobilePhoneNoLbl: Label 'Bill-to Contact Mobile Phone No.';
        BillToContactEmailLbl: Label 'Bill-to Contact E-Mail';
        LegalOfficeTxt, LegalOfficeLbl : Text;

    protected var
        CompanyInformation: Record "Company Information";
        CountryRegion: Record "Country/Region";
        PaymentTerms: Record "Payment Terms";
        PaymentTermsDescription: Text[100];
        CountryOfManufacturing: Text[50];
        BillToCountryName: Text[50];
        ShipFromCountryName: Text[50];
        ShiptoCountryName: Text[50];
        Item: Record Item;
        Currency: Record Currency;
        SellToContact: Record Contact;
        BillToContact: Record Contact;
        CompanyAddress: array[9] of Text[100];
        CustomerAddress: array[8] of Text[100];
        WorkDescriptionInStream: InStream;
        SalesPersonLblText: Text[50];
        TotalAmountLbl: Text[50];
        TotalAmountInclVATLbl: Text[50];
        FormattedLinePrice: Text;
        FormattedLineAmount: Text;
        FormattedVATAmount: Text;
        FormattedTotalAmount: Text;
        FormattedTotalVATAmount: Text;
        FormattedTotalAmountInclVAT: Text;
        WorkDescriptionLine: Text;
        CurrencyCode: Code[10];
        TotalWeight: Decimal;
        TotalAmount: Decimal;
        TotalVATAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        LinePrice: Decimal;
        LineAmount: Decimal;
        VATAmount: Decimal;
        ShowWorkDescription: Boolean;
        HideLinesWithZeroQuantity: Boolean;
        BankInformation: array[9] of Text[100];
        Consignee: Text;
        BankAddressInformation1: Text;
        BankAddressInformation2: Text;
        ConsigneeAddress: array[8] of Text[100];

    local procedure FormatDocumentFields(SalesHeader: Record "Sales Header")
    var
        GeneralLedgerSetup: Record "General Ledger Setup";
        SalespersonPurchaser: Record "Salesperson/Purchaser";
        ShipmentMethod: Record "Shipment Method";
        ResponsibilityCenter: Record "Responsibility Center";
        Customer: Record Customer;
        FormatAddress: Codeunit "Format Address";
        TotalAmounExclVATLbl: Text[50];
    begin
        FormatAddress.SetLanguageCode(SalesHeader."Language Code");
        Customer.Get(SalesHeader."Sell-to Customer No.");
        FormatDocument.SetSalesPerson(SalespersonPurchaser, SalesHeader."Salesperson Code", SalesPersonLblText);
        SalespersonPurchaserName := SalespersonPurchaser.Name;

        FormatDocument.SetShipmentMethod(ShipmentMethod, SalesHeader."Shipment Method Code", SalesHeader."Language Code");
        ShipmentMethodDescription := ShipmentMethod.Description;

        FormatAddress.GetCompanyAddr(SalesHeader."Responsibility Center", ResponsibilityCenter, CompanyInformation, CompanyAddress);
        FormatAddress.SalesHeaderBillTo(CustomerAddress, SalesHeader);

        if SalesHeader."Currency Code" = '' then begin
            GeneralLedgerSetup.Get();
            GeneralLedgerSetup.TestField("LCY Code");
            CurrencyCode := GeneralLedgerSetup."LCY Code";
            Currency.InitRoundingPrecision();
        end else begin
            CurrencyCode := SalesHeader."Currency Code";
            Currency.Get(SalesHeader."Currency Code");
        end;

        FormatDocument.SetTotalLabels(SalesHeader."Currency Code", TotalAmountLbl, TotalAmountInclVATLbl, TotalAmounExclVATLbl);
    end;

    local procedure DocumentCaption(): Text
    var
        DocCaption: Text;
    begin
        OnBeforeGetDocumentCaption(Header, DocCaption);
        if DocCaption <> '' then
            exit(DocCaption);
        exit(DocumentTitleLbl);
    end;

    local procedure GetItemForRec(ItemNo: Code[20])
    var
        IsHandled: Boolean;
    begin
        IsHandled := false;
        OnBeforeGetItemForRec(ItemNo, IsHandled);
        if IsHandled then
            exit;

        Item.Get(ItemNo);
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterLineOnPreDataItem(var SalesHeader: Record "Sales Header"; var SalesLine: Record "Sales Line")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeGetDocumentCaption(SalesHeader: Record "Sales Header"; var DocCaption: Text)
    begin
    end;

    [IntegrationEvent(true, false)]
    local procedure OnBeforeGetItemForRec(ItemNo: Code[20]; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeLineOnAfterGetRecord(SalesHeader: Record "Sales Header"; var SalesLine: Record "Sales Line")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnInitReportForGlobalVariable(var IsHandled: Boolean; var LegalOfficeTxt: Text; var LegalOfficeLbl: Text)
    begin
    end;
}