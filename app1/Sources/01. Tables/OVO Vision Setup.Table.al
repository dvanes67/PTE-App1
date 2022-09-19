table 50000 "OVO Vision Setup"
{
    Caption = 'OVO Vision Setup';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = CustomerContent;
        }
        field(2; "Farm Nos."; Code[20])
        {
            Caption = 'Farm Nos.';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
    }
}