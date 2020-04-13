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
    .row.content {height: 450px}
    
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

      p{
          text-align:center;
      }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }

      h1
      {
          text-align:center;
          font-style : italic;
      }h1.inset {border-style: inset;}

      h3{
          text-align:center;
      }

      p{
          text-align:center;
          padding-top : 10px;
          padding-bottom : 10px;
      
      }
      .auto-style1 {
          width: 93px;
          text-align: right;
      }
      .auto-style2 {
          width: 93px;
          text-align: right;
          height: 25px;
      }
      .auto-style3 {
          height: 25px;
      }
      .auto-style4 {
          width: 202px;
      }
      .auto-style5 {
          height: 25px;
          width: 202px;
      }
      .auto-style6 {
          width: 100%;
          height: 167px;
      }
      .auto-style7 {
          width: 93px;
          text-align: right;
          height: 20px;
      }
      .auto-style8 {
          width: 202px;
          height: 20px;
      }
      .auto-style9 {
          height: 20px;
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
      <a class="navbar-brand" href="#">DB</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="#">Search Emp</a></li>
        <li class ="active"><a href="#">Add Emp</a></li>
        <li><a href="#">Delete Emp</a></li>
        <li><a href="#">Update Emp</a></li>
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
                <td class="auto-style1">First Name:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TBFName" runat="server" Width="191px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TBFName" ErrorMessage="First Name is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Last Name:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TBLName" runat="server" Width="191px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TBLName" ErrorMessage="Last Name is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Job Title:</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DDLJob" runat="server">
                        <asp:ListItem>Select Job Title</asp:ListItem>
                        <asp:ListItem>Cashier</asp:ListItem>
                        <asp:ListItem>Cleaner</asp:ListItem>
                        <asp:ListItem>Cook</asp:ListItem>
                        <asp:ListItem>Feeder</asp:ListItem>
                        <asp:ListItem>Presenter</asp:ListItem>
                        <asp:ListItem>Server</asp:ListItem>
                        <asp:ListItem>Stocker</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DDLJob" ErrorMessage="Job Title is Requried!" ForeColor="Red" InitialValue="Select Job Title"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Exhibit ID</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DDLExID" runat="server" DataSourceID="SqlDataSource1" DataTextField="exhibit_Id" DataValueField="exhibit_Id">
                        <asp:ListItem>Select Exhibit ID</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnectionString %>" ProviderName="<%$ ConnectionStrings:DbConnectionString.ProviderName %>" SelectCommand="select exhibit_Id from exhibit;"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DDLExID" ErrorMessage="Exhbit ID is Requried!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Shop ID</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DDLShopID" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DDLShopID" ErrorMessage="Shop ID is Requried!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Show ID</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DDLShowID" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DDLShowID" ErrorMessage="Show ID is Requried!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

        <p class="text-left">
            <a href=""><span class="glyphicon-pencil"> Return to Home Page</span></a>
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
