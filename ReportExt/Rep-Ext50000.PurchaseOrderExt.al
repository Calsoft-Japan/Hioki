reportextension 50000 "Purchase Order Ext" extends "Standard Purchase - Order"
{
    WordLayout = '.\Word\StandardPurchaseOrder_HMEA.docx';

    dataset
    {
        add("Purchase Header")
        {
            column(ShipToCountry; ShipToCountry)
            {
            }
            column(ShipToName; ShipToName)
            {
            }
        }

        modify("Purchase Header")
        {
            trigger OnAfterAfterGetRecord()
            var
                SalesOrderHeader: Record "Sales Header";
                SalesOrderLine: Record "Sales Line";
                CountryRegion: Record "Country/Region";
            begin

                Clear(ShipToName);
                Clear(ShipToCountry);

                SalesOrderLine.Reset();
                SalesOrderLine.SetRange("Special Order Purchase No.", "Purchase Header"."No.");
                if SalesOrderLine.FindFirst() then begin
                    SalesOrderHeader.Get(SalesOrderHeader."Document Type"::Order, SalesOrderLine."Document No.");

                    ShipToName := SalesOrderHeader."Ship-to Name";

                    CountryRegion.Get(SalesOrderHeader."Ship-to Country/Region Code");
                    ShipToCountry := CountryRegion.Name;
                end;
            end;
        }
    }
    var
        ShipToName: Text;
        ShipToCountry: Text;

}
