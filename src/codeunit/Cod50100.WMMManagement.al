codeunit 50100 "WMM Management"
{
    procedure GetItemOutOfSpecCount(var WMEntry: Record "Warehouse Monitoring Entry"): Integer
    var
        WMSpec: Record "Warehouse Monitoring Spec.";
        TempItem: Record "Item" temporary;
    begin
        if WMEntry.FindSet() then
            repeat
                WMSpec.Get(WMEntry."Item No.", WMEntry."Metric");
                if (WMEntry.Value < WMSpec."Min. Value") or (WMEntry.Value > WMSpec."Max. Value") then begin
                    if not TempItem.Get(WMEntry."Item No.") then begin
                        TempItem.Init();
                        TempItem."No." := WMEntry."Item No.";
                        TempItem.Insert();
                    end;
                    WMEntry.Mark(true);
                end;
            until WMEntry.Next() = 0;

        exit(TempItem.Count());
    end;

    procedure GetSensorErrorNotResolved(var FixedAsset: Record "Fixed Asset"): Integer
    var
        WarehouseSensorStatus: Record "Warehouse Sensor Status";
    begin
        if FixedAsset.FindSet() then
            repeat
                WarehouseSensorStatus.Reset();
                WarehouseSensorStatus.SetRange("Serial No.", FixedAsset."Serial No.");
                WarehouseSensorStatus.SetRange("Operating Resolution", Enum::"Whse. Sensor Operating Res."::"Action needed");
                if not WarehouseSensorStatus.IsEmpty() then
                    FixedAsset.Mark(true);
            until FixedAsset.Next() = 0;

        FixedAsset.MarkedOnly(true);
        exit(FixedAsset.Count());
    end;
}
