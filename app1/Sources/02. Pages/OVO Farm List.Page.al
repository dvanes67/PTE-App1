page 50001 "OVO Farm List"
{
    Caption = 'Farm List';
    CardPageID = "OVO Farm Card";
    Editable = false;
    PageType = List;    
    SourceTable = "OVO Farm";
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Farms)
            {
                field(No; Rec."No.")
                {

                }
                field(Name; Rec.Name)
                {

                }
                field(SearchName; Rec."Search Name")
                {
                    
                }
                field(PostCode; Rec."Post Code")
                {
                    
                }
                field(City; Rec.City)
                {
                    
                }
            }
        }        
    }     
}