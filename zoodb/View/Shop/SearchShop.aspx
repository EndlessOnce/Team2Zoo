<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchShop.aspx.cs" Inherits="zoodb.SearchShop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Search for a Shop</title>
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
            padding-top: 10px;
            padding-bottom: 10px;
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
                    <a class="navbar-brand" runat="server" href="~/View/Users/User">Home</a>

                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Search Shop</a></li>
                        <li><a href="AddShop.aspx">Add Shop</a></li>
                        <li><a href="delShop.aspx">Delete Shop</a></li>
                        <li><a href="updateShop.aspx">Update Shop</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container-fluid text-center">
            <div class="row content">
                <div class="col-sm-2 sidenav">
                </div>
                <div class="col-sm-8 text-left">
                    <h1>Search for a Shop</h1>
                    <p>Please fill out the fields below to search for a shop in the database</p>
                    <hr>


                    <p>
                        <strong>Shop Name:</strong>
                        <input type="text" placeholder="Enter Shop Name" name="sName" runat="server" id="sName" style="width: 200px" />
                        <asp:Button ID="BSName" runat="server" OnClick="BSName_Click" Text="Search" />
                    </p>


                    <p>
                        <strong>Shop Type:</strong>
                        <asp:DropDownList ID="DDLType" runat="server" DataSourceID="SqlDataSource1" DataTextField="Shop_Type" DataValueField="Shop_Type" OnSelectedIndexChanged="DDLType_SelectedIndexChanged" AutoPostBack="true">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zoodb %>" ProviderName="<%$ ConnectionStrings:zoodb.ProviderName %>" SelectCommand="SELECT DISTINCT Shop_Type FROM shop"></asp:SqlDataSource>
&nbsp;</p>

                    <p>
                        <strong>Shop Status:</strong><asp:DropDownList ID="DDLStatus" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DDLStatus_SelectedIndexChanged">
                            <asp:ListItem>Select Shop Status</asp:ListItem>
                            <asp:ListItem>Open</asp:ListItem>
                            <asp:ListItem>Closed</asp:ListItem>
                        </asp:DropDownList>
                    </p>

                    <p>
                        <table id="shopTable" border="1" width="100%" hidden="hidden">
                            <tr>
                                <th>Shop Name:</th>
                                <th>Type of Shop:</th>
                                <th>Open/Closed:</th>
                            </tr>
                        </table>
                        <center>
                        <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="true" emptyDataText="No items found!">
                        </asp:GridView>
                            </center>
                    </p>


                </div>
                <div class="col-sm-2 sidenav">
                </div>
            </div>
        </div>
        </div>
    </form>
</body>
</html>
