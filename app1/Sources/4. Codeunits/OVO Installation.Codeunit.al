codeunit 50000 "OVO Installation"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    var
        OVOSetup: Record "OVO Vision Setup";
    begin
        if not OVOSetup.Get() then begin
            OVOSetup.Init();
            OVOSetup.Insert();
        end;
    end;
}
