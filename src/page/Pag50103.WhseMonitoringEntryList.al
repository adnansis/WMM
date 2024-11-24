page 50103 "Whse. Monitoring Entry List"
{
    ApplicationArea = All;
    Caption = 'Whse. Monitoring Entry List';
    PageType = List;
    SourceTable = "Warehouse Monitoring Entry";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ToolTip = 'Specifies the value of the Entry No. field.';
                }
                field("Item No."; Rec."Item No.")
                {
                    ToolTip = 'Specifies the value of the Item No. field.';
                }
                field(Location; Rec.Location)
                {
                    ToolTip = 'Specifies the value of the Location field.';
                }
                field(Bin; Rec.Bin)
                {
                    ToolTip = 'Specifies the value of the Bin field.';
                }
                field(Metric; Rec."Metric")
                {
                    ToolTip = 'Specifies the value of the Metric field.';
                }
                field(Category; Rec."Category")
                {
                    ToolTip = 'Specifies the value of the Category field.';
                }
                field(Value; Rec."Value")
                {
                    ToolTip = 'Specifies the value of the Value field.';
                }
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    ToolTip = 'Specifies the value of the Unit of Measure field.';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the Unit of SystemCreatedAt field.';
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.SetCurrentKey("Entry No.");
        Rec.Ascending(false);
        if Rec.FindFirst() then;
    end;
}
