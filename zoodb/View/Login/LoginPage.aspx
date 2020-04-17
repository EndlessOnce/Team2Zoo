<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="zoodb.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

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
        .center{
          display:block;
          margin-left: auto;
          margin-right:auto;
 
        }
   
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            margin: auto;
        }
        .auto-style3 {
            text-align: right;
            width: 35%;
        }
        .auto-style4 {
            margin: auto;
        }
        .auto-style5 {
            margin: auto;
        }
        .auto-style6 {
            margin: auto;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            text-align: center;
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

                    <a class="navbar-brand" runat="server" href="#">Login</a>
                    <a class="navbar-brand" runat="server" href="~/View/Registration/Registration.aspx">Registration</a>

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
            <h1 class="auto-style8"><strong>Login Page</strong></h1>
            <p class="auto-style1">Hello! To access the Zoo Database, please log on with your username and password. If you do not have a valid username or password, please register and make an account with us to acces the database.</p>
            <hr />
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">Email:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Please enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Please enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="Login" runat="server" OnClick="Login_Click" Text="Login" />
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
   <h4>
       <img src="fox.png" alt="animal" class="center" >

   </h4>
  
</body>
</html>
    