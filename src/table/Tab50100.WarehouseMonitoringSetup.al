table 50100 "Warehouse Monitoring Setup"
{
    Caption = 'Warehouse Monitoring Setup';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(2; "Enabled"; Boolean)
        {
            Caption = 'Enabled';
        }
        field(11; "Days for Items out of Spec."; Integer)
        {
            Caption = 'Days for Items out of Spec.';
            InitValue = 1;
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
