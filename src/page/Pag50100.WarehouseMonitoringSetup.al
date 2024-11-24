page 50100 "Whse. Monitoring Setup"
{
    ApplicationArea = All;
    Caption = 'Warehouse Monitoring Setup';
    PageType = Card;
    SourceTable = "Warehouse Monitoring Setup";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field(Enabled; Rec."Enabled")
                {
                    ToolTip = 'Specifies the value of the Enabled field.';
                }
                field("Days for Items out of Spec."; Rec."Days for Items out of Spec.")
                {
                    ToolTip = 'Specifies the value of the Days for Items out of Spec. field.';
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        if Rec.IsEmpty() then begin
            Rec.Insert();
            CurrPage.Update();
        end;
    end;
}
