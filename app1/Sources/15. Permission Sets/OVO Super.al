permissionset 50000 "OVO Super"
{
    Assignable = true;
    Caption = 'OVO Super ', MaxLength = 30;
    Permissions =
        table "OVO Farm" = X,
        tabledata "OVO Farm" = RMID,
        table "OVO Vision Setup" = X,
        tabledata "OVO Vision Setup" = RMID,
        codeunit "OVO Installation" = X,
        page "OVO Farm Card" = X,
        page "OVO Farm List" = X,
        page "OVO Vision Setup" = X;
}
