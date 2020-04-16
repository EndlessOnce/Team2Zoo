<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="zoodb.AddEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<title>Add Employee</title>
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

    .auto-style1 {
        width: 353px;
        text-align: right;
    }

    .auto-style2 {
        width: 353px;
        text-align: right;
        height: 25px;
    }

    .auto-style3 {
        height: 25px;
    }

    .auto-style5 {
        height: 25px;
        width: 178px;
    }

    .auto-style6 {
        width: 100%;
        height: 167px;
    }

    .auto-style7 {
        width: 353px;
        text-align: right;
        height: 20px;
    }

    .auto-style8 {
        width: 178px;
        height: 20px;
    }

    .auto-style9 {
        height: 20px;
    }

    .auto-style10 {
        margin-left: 19;
    }

    .auto-style11 {
        width: 178px
    }

    .auto-style12 {
        margin-left: 0px;
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
                        <li><a href="SearchEmployee.aspx">Search Employee</a></li>
                        <li class="active"><a href="#">Add Employee</a></li>
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
                    <h1>Add a New Employee</h1>
                    <p>Please fill out the fields below to enter a new employee into the database</p>
                    <hr>


                    <table class="auto-style6">
                        <tr>
                            <td class="auto-style1"><strong>First Name:</strong></td>
                            <td class="auto-style11">
                                <asp:TextBox ID="TBFName" runat="server" Width="191px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TBFName" ErrorMessage="First Name is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2"><strong>Last Name:</strong></td>
                            <td class="auto-style5">
                                <asp:TextBox ID="TBLName" runat="server" Width="191px"></asp:TextBox>
                            </td>
                            <td class="auto-style3">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TBLName" ErrorMessage="Last Name is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1"><strong>Job Title:</strong></td>
                            <td class="auto-style11">
                                <asp:DropDownList ID="DDLJob" runat="server" Width="121px">
                                    <asp:ListItem>Select Job Title</asp:ListItem>
                                    <asp:ListItem Value="4">Cashier</asp:ListItem>
                                    <asp:ListItem Value="2">Cleaner</asp:ListItem>
                                    <asp:ListItem Value="6">Cook</asp:ListItem>
                                    <asp:ListItem Value="1">Feeder</asp:ListItem>
                                    <asp:ListItem Value="3">Presenter</asp:ListItem>
                                    <asp:ListItem Value="5">Server</asp:ListItem>
                                    <asp:ListItem Value="7">Stocker</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DDLJob" ErrorMessage="Job Title is Requried!" ForeColor="Red" InitialValue="Select Job Title"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1"><strong>Exhibit ID: </strong></td>
                            <td class="auto-style11">
                                <asp:DropDownList ID="DDLExID" runat="server" Width="184px" Height="23px">
                                    <asp:ListItem>Select Exhibit ID</asp:ListItem>
                                    <asp:ListItem Value="NULL">Not working at an Exhibit</asp:ListItem>
                                    <asp:ListItem Value="1">Exhibit 1</asp:ListItem>
                                    <asp:ListItem Value="2">Exhibit 2</asp:ListItem>
                                    <asp:ListItem Value="3">Exhibit 3</asp:ListItem>
                                    <asp:ListItem Value="4">Exhibit 4</asp:ListItem>
                                    <asp:ListItem Value="5">Exhibit 5</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DDLExID" ErrorMessage="Exhbit ID is Requried!" ForeColor="Red" InitialValue="Select Exhibit ID"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1"><strong>Shop ID: </strong></td>
                            <td class="auto-style11">
                                <asp:DropDownList ID="DDLShopID" runat="server" Width="184px" Height="22px">
                                    <asp:ListItem>Select Shop ID</asp:ListItem>
                                    <asp:ListItem Value="NULL">Not working at a Shop</asp:ListItem>
                                    <asp:ListItem Value="1">Shop 1 (Sabertooth Grill)</asp:ListItem>
                                    <asp:ListItem Value="2">Shop 2 (Jungle Java)</asp:ListItem>
                                    <asp:ListItem Value="3">Shop 3 (Panda Shop)</asp:ListItem>
                                    <asp:ListItem Value="4">Shop 4 (Parrot Palace)</asp:ListItem>
                                    <asp:ListItem Value="5">Shop 5 (Ticket Booth A)</asp:ListItem>
                                    <asp:ListItem Value="6">Shop 6 (Ticket Booth B)</asp:ListItem>
                                    <asp:ListItem Value="7">Shop 7 (Ticket Booth C)</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DDLShopID" ErrorMessage="Shop ID is Requried!" ForeColor="Red" InitialValue="Select Shop ID"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1"><strong>Show ID:</strong></td>
                            <td class="auto-style11">
                                <asp:DropDownList ID="DDLShowID" runat="server" Width="120px" CssClass="auto-style12">
                                    <asp:ListItem>Select Show ID</asp:ListItem>
                                    <asp:ListItem Value="NULL">Not working a Show</asp:ListItem>
                                    <asp:ListItem Value="1">Show 1</asp:ListItem>
                                    <asp:ListItem Value="2">Show 2</asp:ListItem>
                                    <asp:ListItem Value="3">Show 3</asp:ListItem>
                                    <asp:ListItem Value="4">Show 4</asp:ListItem>
                                    <asp:ListItem Value="5">Show 5</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DDLShowID" ErrorMessage="Show ID is Requried!" ForeColor="Red" InitialValue="Select Show ID"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7"></td>
                            <td class="auto-style8"></td>
                            <td class="auto-style9"></td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style11">
                                <asp:Button ID="AddEmpButton" runat="server" OnClick="AddEmpButton_Click" Text="Submit" CssClass="auto-style10" />
                                <input id="Reset1" type="reset" value="Reset" /></td>
                            <td>
                                <asp:Label ID="SuccessLabel" runat="server" ForeColor="Red" Text="Insertion Successful" Visible="False"></asp:Label>
                            </td>
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
