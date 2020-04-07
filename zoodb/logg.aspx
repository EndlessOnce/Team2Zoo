<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logg.aspx.cs" Inherits="zoodb.logg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="userName" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="userName" HeaderText="userName" ReadOnly="True" SortExpression="userName" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="confirmPassword" HeaderText="confirmPassword" SortExpression="confirmPassword" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:logRegConn %>" SelectCommand="SELECT * FROM [logReg]"></asp:SqlDataSource>
    </form>
</body>
</html>
