<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="zoodb.View.Users.User" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<title>Add Product</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
        margin-bottom: 0;
        border-radius: 0;
    }

    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {
        height: auto;
    }

    /* Set gray background color and 100% height */
    /*.sidenav {
        padding-top: 10px;
        background-color: #f1f1f1;
        height: 100vh;
    }*/

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
        padding-top: 10px;
        padding-bottom: 10px;
    }
</style>
</head>
<body>

    <form id="form2" runat="server">

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Home</a>
                    <a class="navbar-brand" runat="server" href="~/View/Animal/AddAnimal.aspx">Animal</a>
                    <a class="navbar-brand" runat="server" href="~/View/Employee/AddEmployee.aspx">Employee</a>
                    <a class="navbar-brand" runat="server" href="~/View/Shop/AddShop.aspx">Shop</a>
                    <a class="navbar-brand" runat="server" href="~/View/Product/AddProduct.aspx">Product</a>
                    <a class="navbar-brand" runat="server" href="~/View/Member/AddMember.aspx">Member</a>
                    <a class="navbar-brand" runat="server" href="~/View/Show/AddShow.aspx">Show</a>
                    <a class="navbar-brand" runat="server" href="~/View/Transaction/AddTransaction.aspx">Transaction</a>
                    <a class="navbar-brand" runat="server" href="~/View/Visitor/AddVisitor.aspx">Visitor</a>

                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container-fluid text-center">
            <div class="row content">
                <%--<div class="col-sm-2 sidenav">
                </div>--%>
                <div>
                    <h1>Welcome to the Zoo</h1>
                    <p>Please fill out the fields below to enter a new product into the database</p>
                    <hr>


                    <asp:Label ID="Welcome" runat="server"></asp:Label>


                    <p>
                        <asp:Button ID="Logout" runat="server" OnClick="Logout_Click" Text="Logout" />
                    </p>

                </div>
              <%--  <div class="col-sm-2 sidenav">
                </div>--%>
            </div>
        </div>
        </div>
    </form>
</body>
</html>

