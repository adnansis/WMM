table 50102 "Warehouse Monitoring Spec."
{
    Caption = 'Warehouse Monitoring Spec.';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item."No.";
        }
        field(2; Metric; Code[20])
        {
            Caption = 'Metric';
            TableRelation = "Warehouse Monitoring Metric".Code;
        }
        field(3; "Min. Value"; Decimal)
        {
            Caption = 'Min. Value';
        }
        field(4; "Max. Value"; Decimal)
        {
            Caption = 'Max. Value';
        }
        field(5; "Optimal Value"; Decimal)
        {
            Caption = 'Optimal Value';
        }
        field(6; "Item Description"; Text[100])
        {
            Caption = 'Item Description';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = Lookup(Item.Description where("No." = field("Item No.")));
        }
    }
    keys
    {
        key(PK; "Item No.", "Metric")
        {
            Clustered = true;
        }
    }
}
