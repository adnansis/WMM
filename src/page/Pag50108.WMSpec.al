page 50108 WMSpec
{
    APIGroup = 'wmm';
    APIPublisher = 'default';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'wmSpec';
    DelayedInsert = true;
    EntityName = 'warehouseMonitoringSpec';
    EntitySetName = 'warehouseMonitoringSpecs';
    PageType = API;
    SourceTable = "Warehouse Monitoring Spec.";
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
                field(itemNo; Rec."Item No.")
                {
                }
                field(itemDescription; Rec."Item Description")
                {
                }
                field(metric; Rec.Metric)
                {
                }
                field(minValue; Rec."Min. Value")
                {
                }
                field(maxValue; Rec."Max. Value")
                {
                }
                field(optimalValue; Rec."Optimal Value")
                {
                }
            }
        }
    }
}
