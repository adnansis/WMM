page 50110 "Warehouse Sensor Status List"
{
    ApplicationArea = All;
    Caption = 'Warehouse Sensor Status List';
    PageType = List;
    SourceTable = "Warehouse Sensor Status";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ToolTip = 'Specifies the value of the Entry No. field.';
                }
                field("Serial No."; Rec."Serial No.")
                {
                    ToolTip = 'Specifies the value of the Serial No. field.';
                    trigger OnDrillDown()
                    var
                        FixedAsset: Record "Fixed Asset";
                        FixedAssetCard: Page "Fixed Asset Card";
                    begin
                        FixedAsset.SetRange("Serial No.", Rec."Serial No.");
                        if FixedAsset.FindFirst() then begin
                            FixedAssetCard.SetTableView(FixedAsset);
                            FixedAssetCard.Run();
                        end;
                    end;
                }
                field("Operating Status"; Rec."Operating Status")
                {
                    ToolTip = 'Specifies the value of the Operating Status field.';
                }
                field("Operating Resolution"; Rec."Operating Resolution")
                {
                    ToolTip = 'Specifies the value of the Operating Resolution field.';
                    trigger OnValidate()
                    begin
                        CurrPage.Update(false);
                    end;
                }
                field("Employee ID"; Rec."Employee ID")
                {
                    ToolTip = 'Specifies the value of the Employee ID field.';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.';
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

    trigger OnAfterGetRecord()
    begin
        Style := '';
        if Rec."Operating Resolution" = Enum::"Whse. Sensor Operating Res."::"Action needed" then
            Style := 'Unfavorable';
    end;

    var
        Style: Text[250];
}
