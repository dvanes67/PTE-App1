page 50002 "OVO Farm Card"
{
    Caption = 'Farm Card';
    PromotedActionCategories = 'New,Process,Report,Related,History';
    RefreshOnActivate = true;
    SourceTable = "OVO Farm";

    ApplicationArea = All;
    UsageCategory = Documents;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field(No; Rec."No.")
                {
                    ApplicationArea = All;
                    Importance = Promoted;

                    trigger OnAssistEdit()
                    begin
                        if Rec.AssistEdit() then
                            CurrPage.Update();
                    end;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                    ShowMandatory = true;
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                }
                field(Address2; Rec."Address 2")
                {
                    ApplicationArea = All;
                    Importance = Additional;
                }
                field(PostCode; Rec."Post Code")
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                }
                field(CountryRegionCode; Rec."Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field(TerritoryCode; Rec."Territory Code")
                {
                    ApplicationArea = All;
                }
                field(PhoneNo; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    Importance = Additional;
                }
                field(SearchName; Rec."Search Name")
                {
                    ApplicationArea = All;
                    Importance = Additional;
                }
                field(County; Rec.County)
                {
                    ApplicationArea = All;
                    Importance = Additional;
                }
            }
            group(Communication)
            {
                Caption = 'Communication';

                field("Phone No. 2"; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field(EMail; Rec."E-Mail")
                {
                    ApplicationArea = All;
                }
                field(HomePage; Rec."Home Page")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}