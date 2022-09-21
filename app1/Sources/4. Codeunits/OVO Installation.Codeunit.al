codeunit 50000 "OVO Installation"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    var
        OVOSetup: Record "OVO Vision Setup";
        EnableAppArea: Codeunit "OVO Enable Application Area";
    begin
        if not OVOSetup.Get() then begin
            OVOSetup.Init();
            OVOSetup.Insert();
        end;
        
        if(EnableAppArea.IsExampleApplicationAreaEnabled()) then
            exit;

        EnableAppArea.EnableExampleExtension();
        
    end;
}
