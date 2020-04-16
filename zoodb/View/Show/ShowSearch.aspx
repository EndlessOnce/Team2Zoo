<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowSearch.aspx.cs" Inherits="zoodb.ShowSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Add Show</title>
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
            font-family: "Lucida Console", Courier, monospace;
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
                        <li class="active"><a href="#">Search Show</a></li>
                        <li><a href="AddShow.aspx">Add Show</a></li>
                        <li><a href="delShow.aspx">Delete Show</a></li>
                        <li><a href="updateShow.aspx">Update Show</a></li>
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
                    <h1>Search for a Show</h1>
                    <p>Please fill out the fields below to search for a show in the database</p>
                    <hr>


                    <p>
                        <span style="margin-left: 2em;">
                            <strong>Date of Show:</strong>
                            <input type="text" placeholder="YYYY-MM-DD hh:mm:ss" name="datetime" runat="server" style="width: 200px" id="datetime" />
                            <asp:Button ID="DateofShow" runat="server" Text="Search" OnClick="DateofShow_Click" />
                    </p>



                    <p>
                        <span style="margin-left: 2em;">
                            <strong>Name:</strong>
                            <input type="text" placeholder="Enter Show Name" name="ss_name" runat="server" style="width: 200px" id="ss_name" />
                            <asp:Button ID="ShowName" runat="server" Text="Search" OnClick="ShowName_Click" />
                        </span>
                    </p>
                    <p>
                        <span style="margin-left: 2em;">
                            <strong>Location:</strong>
                            <input type="text" placeholder="Enter Location" name="location" runat="server" style="width: 200px" id="location" />
                            <asp:Button ID="LocationButton" runat="server" Text="Search" OnClick="LocationButton_Click" />
                        </span>
                    </p>

                    <p>
                    </p>

                      <p>
                        <center>
                        <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="true" emptyDataText="No items found!">
                        </asp:GridView>
                        </center>
                    </p>

                    <table id="showTable" border="1" width="100%" hidden="hidden">
                        <tr>
                            <th>Date/Time:</th>
                            <th>Description:</th>
                            <th>Location:</th>
                        </tr>
                    </table>



                </div>
                <div class="col-sm-2 sidenav">
                </div>
            </div>
        </div>
        </div>
    </form>
</body>
</html>
