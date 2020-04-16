<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RevenueReport.aspx.cs" Inherits="zoodb.View.Reports.RevenueReport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" BackColor="" ClientIDMode="AutoID" Height="900px" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" Width="90%">
                <LocalReport ReportPath="View\Reports\RevenueReport.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="RevenueObjectDataSource1" Name="RevenueDataSet1" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="RevenueObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="zoodb.RevenueDataSetTableAdapters.Revenue_by_shopTableAdapter"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
