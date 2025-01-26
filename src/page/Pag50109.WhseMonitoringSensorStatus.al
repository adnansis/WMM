page 50109 "Warehouse Sensor Status"
{
    ApplicationArea = All;
    Caption = 'Warehouse Sensor Status';
    PageType = ListPart;
    SourceTable = "Warehouse Sensor Status";
    DeleteAllowed = false;
    InsertAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Operating Status"; Rec."Operating Status")
                {
                    ToolTip = 'Specifies the value of the Operating Status field.';
                    Editable = false;
                }
                field("Operating Resolution"; Rec."Operating Resolution")
                {
                    ToolTip = 'Specifies the value of the Operating Resolution field.';
                    StyleExpr = Style;
                    trigger OnValidate()
                    begin
                        CurrPage.Update(false);
                    end;
                }
                field("Employee ID"; Rec."Employee ID")
                {
                    ToolTip = 'Specifies the value of the Employee ID field.';
                    Editable = false;
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the Created At field.';
                }
                field("Resolved At"; Rec.SystemModifiedAt)
                {
                    Caption = 'Resolved At';
                    ToolTip = 'Specifies the value of the Resolved At field.';
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        Style := '';
        if Rec."Operating Resolution" = Enum::"Whse. Sensor Operating Res."::"Action needed" then
            Style := 'Unfavorable';
    end;

    var
        Style: Text[250];
}
