permissionset 50100 WMM
{
    Assignable = true;
    Permissions = tabledata "Warehouse Monitoring Metric" = RIMD,
        tabledata "Warehouse Monitoring Entry" = RIMD,
        tabledata "Warehouse Monitoring Setup" = RIMD,
        tabledata "Warehouse Monitoring Spec." = RIMD,
        table "Warehouse Monitoring Metric" = X,
        table "Warehouse Monitoring Entry" = X,
        table "Warehouse Monitoring Setup" = X,
        table "Warehouse Monitoring Spec." = X,
        page "Whse. Monitoring Setup" = X,
        page "Whse. Monitoring Metric List" = X,
        page "Whse. Monitoring Entry List" = X,
        page "Whse. Monitoring Spec. Card" = X,
        page "Whse. Monitoring Spec. List" = X,
        codeunit "WMM Management" = X;
}