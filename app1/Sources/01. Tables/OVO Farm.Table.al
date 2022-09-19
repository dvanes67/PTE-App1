table 50001 "OVO Farm"
{
    Caption = 'Farm';
    DataClassification = CustomerContent;
    LookupPageId = "OVO Farm List";
    
    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                if "No." <> xRec."No." then begin
                    OVOVisionSetup.Get();
                    NoSeriesMgt.TestManual(OVOVisionSetup."Farm Nos.");
                    "No. Series" := '';
                end;
            end;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                if ("Search Name" = UpperCase(xRec.Name)) or ("Search Name" = '') then
                    "Search Name" := Name;                
            end;
        }
        field(3; "Search Name"; Code[50])
        {
            Caption = 'Search Name';
            DataClassification = CustomerContent;
        }
        field(4; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
            DataClassification = CustomerContent;
        }
        field(5; Address; Text[50])
        {
            Caption = 'Address';
            DataClassification = CustomerContent;
        }
        field(6; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
            DataClassification = CustomerContent;
        }
        field(7; City; Text[30])
        {
            Caption = 'City';
            DataClassification = CustomerContent;
            TableRelation = if ("Country/Region Code" = const('')) "Post Code".City else
            if ("Country/Region Code" = filter(<> '')) "Post Code".City where("Country/Region Code" = field("Country/Region Code"));
            ValidateTableRelation = false;

            trigger OnValidate()
            begin
                PostCode.ValidateCity(City, "Post Code", County, "Country/Region Code", (CurrFieldNo <> 0) and GuiAllowed);
            end;
        }        
        field(9; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            DataClassification = CustomerContent;
            ExtendedDatatype = PhoneNo;
        }
        field(10; "Telex No."; Text[20])
        {
            Caption = 'Telex No.';
            DataClassification = CustomerContent;
        }
        field(15; "Territory Code"; Code[10])
        {
            Caption = 'Territory Code';
            DataClassification = CustomerContent;
            TableRelation = Territory;
        }
        
        field(35; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            DataClassification = CustomerContent;
            TableRelation = "Country/Region";
        }
        field(91; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            DataClassification = CustomerContent;
            TableRelation = if ("Country/Region Code" = const('')) "Post Code" else
            if ("Country/Region Code" = filter(<> '')) "Post Code" where("Country/Region Code" = field("Country/Region Code"));
            ValidateTableRelation = false;

            trigger OnValidate()
            begin
                PostCode.ValidatePostCode(City, "Post Code", County, "Country/Region Code", (CurrFieldNo <> 0) and GuiAllowed);
            end;
        }
        field(92; County; Text[30])
        {
            Caption = 'County';
            DataClassification = CustomerContent;
        }
        field(102; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail';
            DataClassification = CustomerContent;
            ExtendedDatatype = EMail;
        }
        field(103; "Home Page"; Text[80])
        {
            Caption = 'Home Page';
            DataClassification = CustomerContent;
            ExtendedDatatype = URL;
        }
        field(107; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }        
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;            
        }
    }

    trigger OnInsert()
    begin
        OVOVisionSetup.Get();

        if "No." = '' then begin
            OVOVisionSetup.TestField("Farm Nos.");
            NoSeriesMgt.InitSeries(OVOVisionSetup."Farm Nos.", xRec."No. Series", 0D, "No.", "No. Series");
        end;
    end;

    var
        PostCode: Record "Post Code";
        OVOVisionSetup: Record "OVO Vision Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;        

    procedure AssistEdit(): Boolean
    begin
        OVOVisionSetup.Get();
        OVOVisionSetup.TestField("Farm Nos.");
        if NoSeriesMgt.SelectSeries(OVOVisionSetup."Farm Nos.", xRec."No. Series", "No. Series") then begin
            NoSeriesMgt.SetSeries("No.");
            exit(true);
        end;
    end;    
}