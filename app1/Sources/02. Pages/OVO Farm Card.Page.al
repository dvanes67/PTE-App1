page 50002 "OVO Farm Card"
{
    Caption = 'Farm Card';
    PromotedActionCategories = 'New,Process,Report,Related,History';
    RefreshOnActivate = true;
    SourceTable = "OVO Farm";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field(No; Rec."No.")
                {
                    ApplicationArea = OVO;
                    Importance = Promoted;

                    trigger OnAssistEdit()
                    begin
                        if Rec.AssistEdit() then
                            CurrPage.Update();
                    end;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = OVO;
                    Importance = Promoted;
                    ShowMandatory = true;
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = OVO;
                }
                field(Address2; Rec."Address 2")
                {
                    ApplicationArea = OVO;
                    Importance = Additional;
                }
                field(PostCode; Rec."Post Code")
                {
                    ApplicationArea = OVO;
                    Importance = Promoted;
                }
                field(City; Rec.City)
                {
                    ApplicationArea = OVO;
                }
                field(CountryRegionCode; Rec."Country/Region Code")
                {
                    ApplicationArea = OVO;
                }
                field(TerritoryCode; Rec."Territory Code")
                {
                    ApplicationArea = OVO;
                }
                field(PhoneNo; Rec."Phone No.")
                {
                    ApplicationArea = OVO;
                    Importance = Additional;
                }
                field(SearchName; Rec."Search Name")
                {
                    ApplicationArea = OVO;
                    Importance = Additional;
                }
                field(County; Rec.County)
                {
                    ApplicationArea = OVO;
                    Importance = Additional;
                }
            }
            group(Communication)
            {
                Caption = 'Communication';

                field("Phone No. 2"; Rec."Phone No.")
                {
                    ApplicationArea = OVO;
                    Importance = Promoted;
                }
                field(EMail; Rec."E-Mail")
                {
                    ApplicationArea = OVO;
                }
                field(HomePage; Rec."Home Page")
                {
                    ApplicationArea = OVO;
                }
            }
        }
    }
}