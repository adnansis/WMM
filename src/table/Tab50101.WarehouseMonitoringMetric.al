table 50101 "Warehouse Monitoring Metric"
{
    Caption = 'Warehouse Monitoring Metric';
    DataClassification = CustomerContent;

    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; Category; Enum "Warehouse Monitoring Category")
        {
            Caption = 'Category';
        }
        field(4; "Unit of Measure"; Code[10])
        {
            Caption = 'Unit of Measure';
            TableRelation = "Unit of Measure".Code;
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
