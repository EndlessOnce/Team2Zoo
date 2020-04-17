<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="zoodb.Registration" %>

<!DOCTYPE html>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css?parameter=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title></title>
<style type="text/css">
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
        margin-bottom: 0;
        border-radius: 0;
    }

    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {
        height: 450px
    }

    /* Set gray background color and 100% height */
    .sidenav {
        padding-top: 20px;
        background-color: #f1f1f1;
        height: 100vh;
    }

    /* Set black background color, white text and some padding */
    footer {
        background-color: #555;
        color: white;
        padding: 15px;
    }

    p {
        text-align: center;
    }

    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
        .sidenav {
            height: auto;
            padding: 15px;
        }

        .row.content {
            height: auto;
        }
    }

    h1 {
        text-align: center;
        font-style: italic;
    }

        h1.inset {
            border-style: inset;
        }

    h3 {
        text-align: center;
    }

    p {
        text-align: center;
        padding-top: 5px;
        padding-bottom: 5px;
    }

    .auto-style1 {
        width: 100%;
    }

    .auto-style6 {
        text-align: left;
    }

    .auto-style7 {
        text-align: right;
        width: 45%;
        margin: auto;
    }

    .auto-style9 {
        text-align: left;
    }

    .auto-style10 {
        text-align: center;
    }

    .auto-style11 {
        font-size: 40pt;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a class="navbar-brand" runat="server" href="~/View/Login/LoginPage.aspx">Login</a>
                    <a class="navbar-brand" runat="server" href="#">Registration</a>

                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                    </ul>
                </div>
            </div>
        </nav>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10">
                        <div>
                            <h1 class="auto-style11"><strong>Regirstration Page</strong></h1>
                            <p>Please enter a Email and Password to register.</p>
                            <hr />
                        </div>
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
                        <input id="Reset1" type="reset" value="reset" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
