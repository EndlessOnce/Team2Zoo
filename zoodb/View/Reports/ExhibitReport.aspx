<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExhibitReport.aspx.cs" Inherits="zoodb.View.Reports.ExhibitReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                <strong>Please select Exhibit ID: </strong>
                <asp:DropDownList ID="DDLEx" runat="server" DataSourceID="SqlDataSource1" AutoPostBack="true" DataTextField="Exhibit_ID" DataValueField="Exhibit_ID" OnSelectedIndexChanged="DDLEx_SelectedIndexChanged">
                </asp:DropDownList>
                &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zoodb %>" ProviderName="<%$ ConnectionStrings:zoodb.ProviderName %>" SelectCommand="SELECT Exhibit_ID FROM exhibit"></asp:SqlDataSource>

            </p>

            <p>
                <strong>Please select Exhibit Start Date: </strong>
                <asp:DropDownList ID="DDStart" runat="server" DataSourceID="SqlDataSource1" AutoPostBack="true" DataTextField="Exhibit_ID" DataValueField="Exhibit_ID" OnSelectedIndexChanged="DDStart_SelectedIndexChanged">
                </asp:DropDownList>
                &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:zoodb %>" ProviderName="<%$ ConnectionStrings:zoodb.ProviderName %>" SelectCommand="SELECT Exhibit_Start FROM exhibit"></asp:SqlDataSource>

            </p>

            <p>
                <strong>Please select Exhibit End Date: </strong>
                <asp:DropDownList ID="DDEnd" runat="server" DataSourceID="SqlDataSource1" AutoPostBack="true" DataTextField="Exhibit_ID" DataValueField="Exhibit_ID" OnSelectedIndexChanged="DDEnd_SelectedIndexChanged">
                </asp:DropDownList>
                &nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:zoodb %>" ProviderName="<%$ ConnectionStrings:zoodb.ProviderName %>" SelectCommand="SELECT Exhibit_End FROM exhibit"></asp:SqlDataSource>

            </p>

            <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="true" AutoPostBack="true" EmptyDataText="No items found!">
            </asp:GridView>

        </div>
    </form>
</body>
</html>
