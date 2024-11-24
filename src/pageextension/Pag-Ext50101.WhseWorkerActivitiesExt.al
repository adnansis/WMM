pageextension 50101 "Whse. Worker Activities Ext." extends "Warehouse Worker Activities"
{
    layout
    {
        addlast(content)
        {
            cuegroup(WMM)
            {
                Caption = 'WMM';
                Visible = WMMEnabled;
                field("Items out of Spec."; Rec."Items out of Spec.")
                {
                    ApplicationArea = Warehouse;
                    DrillDownPageID = "Whse. Monitoring Entry List";
                    trigger OnDrillDown()
                    var
                        WhseMonitoringEntryList: Page "Whse. Monitoring Entry List";
                    begin
                        WMEntry.MarkedOnly(true);
                        WhseMonitoringEntryList.SetTableView(WMEntry);
                        WhseMonitoringEntryList.Run();
                    end;
                }
            }
        }
    }

    trigger OnOpenPage()
    var
        WarehouseMonitoringSetup: Record "Warehouse Monitoring Setup";
        LocationFilter: Text[20];
        FromDate, ToDate : DateTime;
    begin
        WarehouseMonitoringSetup.Get();
        WMMEnabled := WarehouseMonitoringSetup.Enabled;
        if not WMMEnabled then
            exit;
        LocationFilter := Rec.GetFilter("Location Filter");
        FromDate := CreateDateTime(Today() - WarehouseMonitoringSetup."Days for Items out of Spec.", 000000T);
        ToDate := CreateDateTime(Today(), 235959T);

        if LocationFilter <> '' then
            WMEntry.SetRange(Location, LocationFilter);
        WMEntry.SetFilter(SystemCreatedAt, '%1..%2', FromDate, ToDate);
        Rec."Items out of Spec." := WMMManagement.GetItemOutOfSpecCount(WMEntry);
        Rec.Modify();
    end;

    var
        WMEntry: Record "Warehouse Monitoring Entry";
        WMMManagement: Codeunit "WMM Management";
        WMMEnabled: Boolean;
}
