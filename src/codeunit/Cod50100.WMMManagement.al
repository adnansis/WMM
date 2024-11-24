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
}
