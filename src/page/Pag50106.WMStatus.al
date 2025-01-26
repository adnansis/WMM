page 50106 WMStatus
{
    APIGroup = 'wmm';
    APIPublisher = 'default';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'wmStatus';
    DelayedInsert = true;
    EntityName = 'warehouseMonitoringStatus';
    EntitySetName = 'warehouseMonitoringStatuses';
    PageType = API;
    SourceTable = "Warehouse Sensor Status";
    ODataKeyFields = SystemId;
    ModifyAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(id; Rec.SystemId)
                {
                }
                field(serialNo; Rec."Serial No.")
                {
                }
                field(status; Rec."Operating Status")
                {
                }
            }
        }
    }
}
