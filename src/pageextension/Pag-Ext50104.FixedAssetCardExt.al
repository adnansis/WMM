pageextension 50104 "Fixed Asset Card Ext." extends "Fixed Asset Card"
{
    layout
    {
        addlast(General)
        {
            field("Warehouse Monitoring Sensor"; Rec."Warehouse Monitoring Sensor")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Warehouse Monitoring Sensor field.';
                trigger OnValidate()
                begin
                    CurrPage.Update();
                end;
            }
        }
    }
}
