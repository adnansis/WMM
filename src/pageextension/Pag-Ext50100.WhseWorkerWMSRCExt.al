pageextension 50100 "Whse. Worker WMS RC Ext." extends "Whse. Worker WMS Role Center"
{
    actions
    {
        addlast(sections)
        {
            group(WMM)
            {
                Caption = 'WMM';
                action(GeneralSetup)
                {
                    ApplicationArea = Warehouse;
                    Caption = 'General Setup';
                    Image = Setup;
                    RunObject = Page "Whse. Monitoring Setup";
                    ToolTip = 'Executes the General Setup action.';
                }

                group(MonitoringSetup)
                {
                    Caption = 'Monitoring Setup';
                    action(MonitoringMetrics)
                    {
                        ApplicationArea = Warehouse;
                        Caption = 'Monitoring Metrics';
                        Image = Category;
                        RunObject = Page "Whse. Monitoring Metric List";
                        ToolTip = 'Executes the Monitoring Metric action.';
                    }
                    action(MonitoringSpecifications)
                    {
                        ApplicationArea = Warehouse;
                        Caption = 'Monitoring Specifications';
                        Image = ItemTracking;
                        RunObject = Page "Whse. Monitoring Spec. List";
                        ToolTip = 'Executes the Monitoring Specifications action.';
                    }
                }
                action(MonitoringData)
                {
                    ApplicationArea = Warehouse;
                    Caption = 'Monitoring Data';
                    Image = AllLines;
                    RunObject = Page "Whse. Monitoring Entry List";
                    ToolTip = 'Executes the Monitoring Data action.';
                }
                action(SensorErrors)
                {
                    ApplicationArea = Warehouse;
                    Caption = 'Sensor Errors';
                    Image = Error;
                    RunObject = Page "Warehouse Sensor Status List";
                    ToolTip = 'Executes the Sensor Errors action.';
                }
            }
        }
    }
}
