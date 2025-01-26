tableextension 50100 "Whse. Worker WMS Cue Ext." extends "Warehouse Worker WMS Cue"
{
    fields
    {
        field(50100; "Items out of Spec."; Integer)
        {
            Caption = 'Items out of Spec.';
            Editable = false;
        }
        field(50101; "Errors Not Resolved"; Integer)
        {
            Caption = 'Errors Not Resolved';
            Editable = false;
        }
    }
}
