<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShopRevReport.aspx.cs" Inherits="zoodb.View.Reports.ShopRevReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Shops Report</title>
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

        p {
            text-align: center;
            font-style: italic;
            #font-family: "Lucida Console", Courier, monospace;
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
            #font-family: "Lucida Console", Courier, monospace;
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
    </style>
</head>
<body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <a class="navbar-brand" runat="server" href="~/View/Users/Admin">Home</a>

            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li><a href="AnimalExhibitReport.aspx">Animal Exhibit Report</a></li>
                    <li><a href="RevenueReport.aspx">Revenue Report</a></li>
                    <li><a href="#">Shop Report</a></li>
                    <li><a href="VisitorRep.aspx">Visitor Report</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                </ul>
            </div>
        </div>
    </nav>
    <form id="form1" runat="server">
        <div>

            <div>


                <p>View total revenue for any shop below</p>
                <p>
                    <strong>Shop ID: </strong>
                    <asp:DropDownList ID="DDShop" runat="server" DataSourceID="SqlDataSource1" AutoPostBack="true" DataTextField="Shop_ID" DataValueField="Shop_ID" OnSelectedIndexChanged="DDShop_SelectedIndexChanged">
                    </asp:DropDownList>
                    &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zoodb %>" ProviderName="<%$ ConnectionStrings:zoodb.ProviderName %>" SelectCommand="SELECT Shop_ID FROM shop"></asp:SqlDataSource>

                </p>

            </div>
            <div>
                <center>
                    <hr />
                    <asp:GridView ID="GridView2" runat="server" ShowHeaderWhenEmpty="true" AutoPostBack="true" emptyDataText="No items found!">

                    </asp:GridView>
            
           
        </center>
            </div>
        </div>
    </form>
</body>
</html>
