page 50101 "Whse. Monitoring Metric List"
{
    ApplicationArea = All;
    Caption = 'Whse. Monitoring Metric List';
    PageType = List;
    SourceTable = "Warehouse Monitoring Metric";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Code; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field(Category; Rec.Category)
                {
                    ToolTip = 'Specifies the value of the Category field.';
                }
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    ToolTip = 'Specifies the value of the Unit of Measure field.';
                }
            }
        }
    }
}
