page 50107 WMLocation
{
    APIGroup = 'wmm';
    APIPublisher = 'default';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'wmLocation';
    DelayedInsert = true;
    EntityName = 'warehouseMonitoringLocation';
    EntitySetName = 'warehouseMonitoringLocations';
    PageType = API;
    SourceTable = Location;
    ODataKeyFields = SystemId;
    InsertAllowed = false;
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
                field("code"; Rec."Code")
                {
                }
                field(name; Rec.Name)
                {
                }
                field(address; Rec.Address)
                {
                }
                field(postCode; Rec."Post Code")
                {
                }
                field(city; Rec.City)
                {
                }
                field(countryRegionCode; Rec."Country/Region Code")
                {
                }
            }
        }
    }
}
