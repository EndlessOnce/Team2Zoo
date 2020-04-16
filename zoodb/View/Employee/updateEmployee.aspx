<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateEmployee.aspx.cs" Inherits="zoodb.updateEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Update Employee</title>
    <!-- edit this -->
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
                        <li class="active"><a href="#">Update Entity</a></li>
                        <li><a href="AddEmployee.aspx">Add Entity</a></li>
                        <li><a href="delEmp.aspx">Delete Entity</a></li>
                        <li><a href="SearchEmployee.aspx">Search Entity</a></li>
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
                    <h1>Update Employee Information</h1>
                    <!-- edit this -->
                    <p>Please fill out the fields below to update employee information in the database</p>
                    <!-- edit this -->
                    <hr>

                    <p>
                        <span style="margin-left: 2em;">
                            <strong>First Name:</strong>
                            <asp:TextBox ID="emFnam" runat="server" Width="191px"></asp:TextBox>
                            
                        </span>
                    </p>


                    <p>
                        <span style="margin-left: 2em;">
                            <strong>Last Name:</strong>
                            <asp:TextBox ID="emLnam" runat="server" Width="191px"></asp:TextBox>
                        </span>
                    </p>

                    <p>
                        <span style="margin-left: 2em;">
                            <strong>Exhibit ID:</strong>
                            <asp:DropDownList ID="emExdd" runat="server" Width="184px" Height="23px">
                                    <asp:ListItem Value="NULL">Not working at an Exhibit</asp:ListItem>
                                    <asp:ListItem Value="1">Exhibit 1</asp:ListItem>
                                    <asp:ListItem Value="2">Exhibit 2</asp:ListItem>
                                    <asp:ListItem Value="3">Exhibit 3</asp:ListItem>
                                    <asp:ListItem Value="4">Exhibit 4</asp:ListItem>
                                    <asp:ListItem Value="5">Exhibit 5</asp:ListItem>
                                </asp:DropDownList>
                            
                        </span>
                    </p>
                    
                    <p>
                        <span style="margin-left: 2em;">
                            <strong>Job title:</strong>
                            <asp:DropDownList ID="jbUpdd" runat="server" Width="184px" Height="23px">
                                    <asp:ListItem Value="4">Cashier</asp:ListItem>
                                    <asp:ListItem Value="2">Cleaner</asp:ListItem>
                                    <asp:ListItem Value="6">Cook</asp:ListItem>
                                    <asp:ListItem Value="1">Feeder</asp:ListItem>
                                    <asp:ListItem Value="3">Presenter</asp:ListItem>
                                    <asp:ListItem Value="5">Server</asp:ListItem>
                                    <asp:ListItem Value="7">Stocker</asp:ListItem>
                                </asp:DropDownList>
                            
                        </span>
                    </p>

                    <p>
                        <span style="margin-left: 5em;">
                   <asp:Button ID="emUpdate" runat="server" Text="Update" OnClick="updateEmp_Click" />
                        </span>
                    </p>

                      <p><span style ="margin-left: 2em;">
            <label id="ueLabel" runat="server" style="color: red" visible="false">Successfully Updated Employee</label>
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
