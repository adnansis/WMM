page 50104 "Whse. Monitoring Spec. Card"
{
    ApplicationArea = All;
    Caption = 'Whse. Monitoring Spec. Card';
    PageType = Card;
    SourceTable = "Warehouse Monitoring Spec.";
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

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
            }
            group(Specification)
            {
                Caption = 'Specification';

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
