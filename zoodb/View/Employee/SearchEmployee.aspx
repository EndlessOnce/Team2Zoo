<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchEmployee.aspx.cs" Inherits="zoodb.SearchEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Search for an Employee</title>
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
                        <li class="active"><a href="SearchEmployee.aspx">Search Employee</a></li>
                        <li><a href="AddEmployee.aspx">Add Employee</a></li>
                        <li><a href="delEmp.aspx">Delete Employee</a></li>
                        <li><a href="updateEmployee.aspx">Update Employee</a></li>
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
                    <h1>Search for an  Employee</h1>
                    <p>Please fill out the fields below to search for an employee in the database</p>
                    <hr>


                    <p>
                        <span style="margin-left: 2em;">
                            <strong>First Name:</strong>
                            <input type="text" placeholder="Employee First Name" name="sf_name" runat="server" id="sf_name" style="width: 200px" />
                        <asp:Button ID="BFName" runat="server" Text="Search" OnClick="BFName_Click" />
                        </span>
                    </p>


                    <p>
                        <span style="margin-left: 2em;">
                            <strong>Last Name:</strong>
                            <input type="text" placeholder="Employee Last Name" name="sl_name" runat="server" id="sl_name" style="width: 200px" />
                        <asp:Button ID="BLName" runat="server" Text="Search" OnClick="BLName_Click" />
                        </span>
                    </p>

                    <p>
                        <strong>Job ID:</strong><asp:DropDownList ID="DDLJobID" runat="server" DataSourceID="SqlDataSource1" DataTextField="Job_ID" AutoPostBack="true" DataValueField="Job_ID" OnSelectedIndexChanged="DDLJobID_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zoodb %>" ProviderName="<%$ ConnectionStrings:zoodb.ProviderName %>" SelectCommand="SELECT Job_ID FROM job ORDER BY Job_ID"></asp:SqlDataSource>
                    </p>

                    <p>
                        <center>
                        <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="true" emptyDataText="No items found!">
                        </asp:GridView>
                        </center>
                    </p>

                    <p>
                        <table id="empTable" border="1" width="100%" hidden="hidden">
                            <tr>
                                <th>First Name:</th>
                                <th>Last Name:</th>
                                <th>Job ID:</th>
                                <th>Exhibit ID:</th>
                            </tr>
                        </table>
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
