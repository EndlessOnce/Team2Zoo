<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAnimal.aspx.cs" Inherits="zoodb.AddAnimal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<title>Add Animal</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css?parameter=1">
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
          padding-top : 5px;
          padding-bottom : 5px;
      
      }
<<<<<<< HEAD
      </style>
=======
      .auto-style1 {
          text-align: right;
          width: 732px;
      }
      .auto-style2 {
          width: 129px;
      }
      .auto-style3 {
          width: 129px;
          text-align: left;
      }
      .auto-style4 {
          width: 61px;
      }
      .auto-style5 {
          text-align: right;
          width: 732px;
          height: 22px;
      }
      .auto-style6 {
          width: 129px;
          text-align: left;
          height: 22px;
      }
      .auto-style7 {
          text-align: left;
          height: 22px;
      }
      .auto-style8 {
          height: 22px;
      }
  </style>
>>>>>>> master
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
        <li><a href="SearchAnimal.aspx">Search Animal</a></li>
        <li class="active"><a href="#">Add Animal</a></li>
        <li><a href="#">Delete Animal</a></li>
        <li><a href="updateAnimal.aspx">Update Animal</a></li>
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
      <h1>Add a New Animal</h1>
      <p>Please fill out the fields below to enter a new animal into the database</p>
<<<<<<< HEAD
      <hr>


        <p><span style ="margin-left: 2em;">
            &nbsp;</span></p>
        <span style ="margin-left: 2em;">
            
         <p><span style ="margin-left: 1em;">
             &nbsp;</span></p>



        <br />


        <p>&nbsp;</p>

        <p><span style ="margin-left: 5em;">
             <label id="Label2" runat="server" style="color: red" hidden="hidden">Sucesfully Added Animal</label>
            </span>
        </p>

        <p class="text-left">
            <a href=""><span class="glyphicon-pencil"> Return to Home Page</span></a>
        </p>

         
=======
        <hr />

      <table class="nav-justified">
          <tr>
              <td class="auto-style1"><strong>Animal Name:</strong></td>
              <td class="auto-style3">
                  <asp:TextBox ID="TBName" runat="server" Width="188px"></asp:TextBox>
              </td>
              <td class="text-left">
                  <asp:RequiredFieldValidator ID="RequiredFildValidator8" runat="server" ErrorMessage="Name is required!" ForeColor="Red" ControlToValidate="TBName"></asp:RequiredFieldValidator>
              </td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td class="auto-style1"><strong>Species:</strong></td>
              <td class="auto-style3">
                  <asp:TextBox ID="TBSpecies" runat="server" Width="189px"></asp:TextBox>
              </td>
              <td class="text-left">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Species name is Required!" ForeColor="Red" ControlToValidate="TBSpecies"></asp:RequiredFieldValidator>
              </td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td class="auto-style1"><strong>Common Name:</strong></td>
              <td class="auto-style3">
                  <asp:TextBox ID="TBComN" runat="server" Width="190px"></asp:TextBox>
              </td>
              <td class="text-left">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Common Name is required!" ForeColor="Red" ControlToValidate="TBComN"></asp:RequiredFieldValidator>
              </td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td class="auto-style5"><strong>Sex:</strong></td>
              <td class="auto-style6">
                  <asp:DropDownList ID="DDLSex" runat="server">
                      <asp:ListItem>Select Sex</asp:ListItem>
                      <asp:ListItem>Male</asp:ListItem>
                      <asp:ListItem>Female</asp:ListItem>
                  </asp:DropDownList>
              </td>
              <td class="auto-style7">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Gender is required!" ForeColor="Red" InitialValue="Select Sex" ControlToValidate="DDLSex"></asp:RequiredFieldValidator>
              </td>
              <td class="auto-style8"></td>
          </tr>
          <tr>
              <td class="auto-style1"><strong>Health Status:</strong></td>
              <td class="auto-style3">
                  <asp:DropDownList ID="DDLHealth" runat="server">
                      <asp:ListItem>Select Health Status</asp:ListItem>
                      <asp:ListItem Value="1">Healthy</asp:ListItem>
                      <asp:ListItem Value="0">Unhealthy</asp:ListItem>
                  </asp:DropDownList>
              </td>
              <td class="text-left">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Health Status is Required!" ForeColor="Red" InitialValue="Select Health Status" ControlToValidate="DDLHealth"></asp:RequiredFieldValidator>
              </td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td class="auto-style1"><strong>Diet:</strong></td>
              <td class="auto-style3">
                  <asp:DropDownList ID="DDLDiet" runat="server">
                      <asp:ListItem>Select Diet</asp:ListItem>
                      <asp:ListItem>Carnivore</asp:ListItem>
                      <asp:ListItem>Herbivore</asp:ListItem>
                      <asp:ListItem>Omnivore</asp:ListItem>
                  </asp:DropDownList>
              </td>
              <td class="text-left">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Diet is required!" ForeColor="Red" InitialValue="Select Diet" ControlToValidate="DDLDiet"></asp:RequiredFieldValidator>
              </td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td class="auto-style1"><strong>Exhibit ID:</strong></td>
              <td class="auto-style3">
                  <asp:DropDownList ID="DDLEx" runat="server" CssClass="col-xs-offset-0">
                      <asp:ListItem>Select Exhibit ID</asp:ListItem>
                      <asp:ListItem>1</asp:ListItem>
                      <asp:ListItem>2</asp:ListItem>
                      <asp:ListItem>3</asp:ListItem>
                      <asp:ListItem>4</asp:ListItem>
                      <asp:ListItem>5</asp:ListItem>
                  </asp:DropDownList>
              </td>
              <td class="text-left">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Exhibit ID is required!" ForeColor="Red" InitialValue="Select Exhibit ID" ControlToValidate="DDLEx"></asp:RequiredFieldValidator>
              </td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td class="auto-style1">&nbsp;</td>
              <td class="auto-style2">&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td class="auto-style1">&nbsp;</td>
              <td class="auto-style3">
                  <asp:Button ID="BSubmit" runat="server" OnClick="AnimalAdd_Click" Text="Submit" />
                  <input id="Reset1" class="auto-style4" type="reset" value="reset" /></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td class="auto-style1">&nbsp;</td>
              <td class="auto-style3">&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td class="auto-style1">&nbsp;</td>
              <td class="auto-style3">
                  <asp:Label ID="LSuccess" runat="server" ForeColor="Red" Text="Animal Sucessfully Added" Visible="False"></asp:Label>
              </td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
      </table>
      
      <p class="text-left">
          <a href=""><span class="glyphicon-pencil"> Return to Home Page</span></a>
      </p>
>>>>>>> master
    </div>
    <div class="col-sm-2 sidenav">
      </div>
    </div>
  </div>
</div>
    </form>
</body>
</html>