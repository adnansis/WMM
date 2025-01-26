table 50104 "Warehouse Sensor Status"
{
    Caption = 'Warehouse Sensor Status';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            AutoIncrement = true;
        }
        field(2; "Serial No."; Text[50])
        {
            Caption = 'Serial No.';
        }
        field(3; "Operating Status"; Enum "Whse. Sensor Operating Status")
        {
            Caption = 'Operating Status';
        }
        field(4; "Operating Resolution"; Enum "Whse. Sensor Operating Res.")
        {
            Caption = 'Operating Resolution';
            trigger OnValidate()
            var
                FixedAsset: Record "Fixed Asset";
                WarehouseWorkerWMSCue: Record "Warehouse Worker WMS Cue";
                WMMManagement: Codeunit "WMM Management";
            begin
                Rec."Employee ID" := UserId();
                Rec.Modify();

                FixedAsset.Reset();
                FixedAsset.SetRange("Responsible Employee", UserId());
                FixedAsset.SetRange("Warehouse Monitoring Sensor", true);
                WarehouseWorkerWMSCue.Get();
                WarehouseWorkerWMSCue."Errors Not Resolved" := WMMManagement.GetSensorErrorNotResolved(FixedAsset);
                WarehouseWorkerWMSCue.Modify();
            end;
        }
        field(5; "Employee ID"; Code[50])
        {
            Caption = 'Employee ID';
            TableRelation = User."User Name";
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}
