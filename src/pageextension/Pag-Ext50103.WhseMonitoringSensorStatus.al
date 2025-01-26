pageextension 50103 "FA Sensor Status" extends "Fixed Asset Card"
{
    layout
    {
        addafter(Maintenance)
        {
            part("Warehouse Sensor Status"; "Warehouse Sensor Status")
            {
                ApplicationArea = All;
                SubPageLink = "Serial No." = field("Serial No.");
                Visible = Rec."Warehouse Monitoring Sensor" = true;
            }
        }
    }
}
