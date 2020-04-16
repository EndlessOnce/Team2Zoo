<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchTransaction.aspx.cs" Inherits="zoodb.SearchTransaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Add a New Transaction</title>
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

        .myCenter {
            margin-left: auto;
            margin-right: auto;
        }

        /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
        .row.content {
            height: 450px
        }

        /* Set gray background color and 100% height */
        .sidenav {
            padding-top: 20px;
            background-color: #f1f1f1;
            height: 130vh;
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
            padding-top: 15px;
            padding-bottom: 15px;
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
                        <li class="active"><a href="SearchTransaction.aspx">Search Transaction</a></li>
                        <li><a href="AddTransaction.aspx">Add Transaction</a></li>
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
                    <h1>Search for a Transaction</h1>
                    <p>Please fill out the fields below to search for a transaction in the database</p>
                    <hr>


                    <p>
                        <strong>Transaction Date:</strong>
                        <input type="text" placeholder="YYYY-MM-DD hh:mm:ss" name="datetime" runat="server" style="width: 200px" id="showTime" />
                        <asp:Button ID="BTDate" runat="server" OnClick="BTDate_Click" Text="Search" />
                    </p>



                    <p>
                        <span style="margin-left: 2em;">
                            <strong>Shop Name:</strong>
                        <asp:DropDownList ID="DDLShopN" runat="server" DataSourceID="SqlDataSource1" DataTextField="Shop_Name" DataValueField="Shop_Name">
                        </asp:DropDownList>
                        <span>
                        <asp:Button ID="BSID" runat="server" OnClick="BSID_Click" Text="Search" Height="25px" Width="68px" />
                        </span>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zoodb %>" ProviderName="<%$ ConnectionStrings:zoodb.ProviderName %>" SelectCommand="SELECT Shop_Name FROM shop"></asp:SqlDataSource>
&nbsp;</span></p>

                    <p>
                        <span style="margin-left: 2em;">
                            <strong>Product ID:</strong>&nbsp;
                        <asp:TextBox ID="ProID" runat="server" placeholder="PID" Width="34px"></asp:TextBox>
                        <asp:Button ID="BPID" runat="server" OnClick="BPID_Click" Text="Search" />
                        </span>
                    </p>

                    <p>
                        <span style="margin-left: 2em;">
                            <strong>Visitor ID:</strong>&nbsp;
                        <asp:TextBox ID="TBVis" runat="server" placeholder="Visitor ID"  Width="64px"></asp:TextBox>
                        <asp:Button ID="BVID" runat="server" OnClick="BVID_Click" Text="Search" />
                        </span>
                    </p>


                    <p>
                        <asp:Button ID="BAll" runat="server" OnClick="BAll_Click" Text="Display All Transactions" />
                        <center>
                        <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="true" emptyDataText="No items found!">
                        </asp:GridView>
                            </center>
                    </p>

                    <p>
                        <span style="margin-left: 5em;">
                            <label id="LabelST" runat="server" style="color: red" hidden="hidden">Found Transaction</label>
                        </span>
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
