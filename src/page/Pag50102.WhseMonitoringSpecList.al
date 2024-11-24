page 50102 "Whse. Monitoring Spec. List"
{
    ApplicationArea = All;
    Caption = 'Whse. Monitoring Spec. List';
    PageType = List;
    Editable = false;
    SourceTable = "Warehouse Monitoring Spec.";
    UsageCategory = Lists;
    CardPageId = "Whse. Monitoring Spec. Card";
    AdditionalSearchTerms = 'WMM,Monitoring Spec.';

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Item No."; Rec."Item No.")
                {
                    ToolTip = 'Specifies the value of the Item No. field.';
                }
                field("Item Description"; Rec."Item Description")
                {
                    ToolTip = 'Specifies the value of the Item Description field.';
                }
                field(Metric; Rec."Metric")
                {
                    ToolTip = 'Specifies the value of the Metric field.';
                }
                field("Min. Value"; Rec."Min. Value")
                {
                    ToolTip = 'Specifies the value of the Min. Value field.';
                }
                field("Max. Value"; Rec."Max. Value")
                {
                    ToolTip = 'Specifies the value of the Max. Value field.';
                }
                field("Optimal Value"; Rec."Optimal Value")
                {
                    ToolTip = 'Specifies the value of the Optimal Value field.';
                }
            }
        }
    }
}
