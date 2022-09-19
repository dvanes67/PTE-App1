page 50000 "OVO Vision Setup"
{
    ApplicationArea = All;
    Caption = 'OVO Vision Setup';
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = Card;
    SourceTable = "OVO Vision Setup";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(Numbering)
            {
                Caption = 'Numbering';
                field(FarmNos; Rec."Farm Nos.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the farm nos. of the OVO vision setup.';
                    Importance = Promoted;
                }
            }
        }
    }
}

