page 50105 WMEntry
{
    APIGroup = 'wmm';
    APIPublisher = 'default';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'wmEntry';
    DelayedInsert = true;
    EntityName = 'warehouseMonitoringEntry';
    EntitySetName = 'warehouseMonitoringEntries';
    PageType = API;
    SourceTable = "Warehouse Monitoring Entry";
    ODataKeyFields = SystemId;
    ModifyAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(id; Rec.SystemId)
                {
                }
                field(itemNo; Rec."Item No.")
                {
                }
                field(location; Rec.Location)
                {
                }
                field(bin; Rec.Bin)
                {
                }
                field(metric; Rec."Metric")
                {
                }
                field(category; Rec."Category")
                {
                }
                field(value; Rec."Value")
                {
                }
                field(systemCreatedAt; Rec.SystemCreatedAt)
                {
                }
            }
        }
    }
}
