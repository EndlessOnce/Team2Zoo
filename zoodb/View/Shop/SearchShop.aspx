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
                    </p>


                    <p>
                        <strong>Shop Type:</strong>
                        <select id="shopT" name="shop" runat="server">
                            <option value="Dining">Dining</option>
                            <option value="Gift Shop">Gift Shop</option>
                            <option value="Admissions">Admissions</option>
                        </select>
                    </p>

                    <p>
                        <span style="margin-left: 1em;">
                            <button type="submit" runat="server" id="search_shop">Search</button>
                        </span>
                    </p>

                    <p>
                        <table id="shopTable" border="1" width="100%" hidden="hidden">
                            <tr>
                                <th>Shop Name:</th>
                                <th>Type of Shop:</th>
                                <th>Open/Closed:</th>
                            </tr>
                        </table>
                    </p>

                    <p class="text-left">
                        <a href=""><span class="glyphicon-pencil">Return to Home Directory</span></a>
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
