<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="zoodb.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style6 {
            width: 0%;
        }
        .auto-style7 {
            text-align: right;
            width: 45%;
            margin: auto;
        }
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10">
                        <div>
                            Regirstration Page</div>
                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">Email:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="E-mail is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="You must enter a valid Email " ForeColor="Red" ControlToValidate="TextBoxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Password:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox2PW" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2PW" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Confirmed Password:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox3CPW" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox3CPW" ErrorMessage="Confirmed Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2PW" ControlToValidate="TextBox3CPW" ErrorMessage="Both password must be same" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="Signup" runat="server" OnClick="Registration_Click" Text="Sign-up" />
                        <input id="Reset1" type="reset" value="reset" /></td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:SqlDataSource ID="Zoodb" runat="server" ConnectionString="<%$ ConnectionStrings:zoodb %>" ProviderName="<%$ ConnectionStrings:zoodb.ProviderName %>" SelectCommand="select * from db_user"></asp:SqlDataSource>
    </form>
    </body>
</html>
