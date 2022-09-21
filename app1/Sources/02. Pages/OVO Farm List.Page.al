page 50001 "OVO Farm List"
{
    Caption = 'Farm List';
    CardPageID = "OVO Farm Card";
    Editable = false;
    PageType = List;    
    SourceTable = "OVO Farm";
    ApplicationArea = OVO;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Farms)
            {
                field(No; Rec."No.")
                {
                    ApplicationArea = OVO;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = OVO;
                }
                field(SearchName; Rec."Search Name")
                {
                    ApplicationArea = OVO;
                }
                field(PostCode; Rec."Post Code")
                {
                    ApplicationArea = OVO;
                }
                field(City; Rec.City)
                {
                    ApplicationArea = OVO;
                }
            }
        }        
    }     
}