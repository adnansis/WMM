table 50103 "Warehouse Monitoring Entry"
{
    Caption = 'Warehouse Monitoring Entry';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            AutoIncrement = true;
        }
        field(2; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item."No.";
        }
        field(5; Location; Code[10])
        {
            Caption = 'Location';
            TableRelation = Location.Code;
        }
        field(6; Bin; Code[20])
        {
            Caption = 'Bin';
            TableRelation = Bin.Code where("Location Code" = field(Location));
        }
        field(7; Metric; Code[20])
        {
            Caption = 'Metric';
            TableRelation = "Warehouse Monitoring Metric".Code;
        }
        field(8; Category; Enum "Warehouse Monitoring Category")
        {
            Caption = 'Category';
            FieldClass = FlowField;
            CalcFormula = Lookup("Warehouse Monitoring Metric"."Category" where(Code = field("Metric")));
        }
        field(9; Value; Decimal)
        {
            Caption = 'Value';
        }
        field(10; "Unit of Measure"; Code[10])
        {
            Caption = 'Unit of Measure';
            FieldClass = FlowField;
            CalcFormula = Lookup("Warehouse Monitoring Metric"."Unit of Measure" where(Code = field("Metric")));
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
