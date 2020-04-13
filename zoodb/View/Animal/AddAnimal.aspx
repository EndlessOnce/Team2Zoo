<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAnimal.aspx.cs" Inherits="zoodb.AddAnimal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<title>Add Product</title>
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
          padding-top : 5px;
          padding-bottom : 5px;
      
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
      <hr>


        <p>
            <strong>Name:</strong>
            <input type="text" placeholder="Enter Animal Name" name="animal_name" runat ="server" style="width: 225px" id="name"/>
        </p>
     

        <p>
            <strong>Common Name:</strong>
            <input type="text" placeholder="Enter Common Name" name="common_name" runat ="server" style="width: 160px" id="commonName"/>
            
           
        </p>

        <p><span style ="margin-left: 2em;">
            <strong>Gender:</strong>
            <asp:CheckBox ID="CheckBoxM" runat="server" Text="Male"  padding-right=" 10px"/>
            <asp:CheckBox ID="CheckBoxF" runat="server" Text="Female" />
        </span></p>

        <p>
            <strong>Species:</strong>
            <input type="text" placeholder="Enter Animal Species" name="animal_species" runat ="server" style="width: 220px" id="species"/>
        </p>

        <p><span style ="margin-left: 2em;">
            <strong>Health:</strong>
            <select id ="aHealth" runat="server">
                <option value="0">unhealthy</option>
                <option value="1">healthy</option>

            </select>
        </span></p>

        <p><span style ="margin-left: 2em;">
            <strong>Exhibit:</strong>
                <select id = "Exhibit" name="exhibit" runat="server">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>

         <p><span style ="margin-left: 1em;">
             <strong>Diet:</strong>
             <select id = "diet" name="diet" runat="server">
                    <option value="Ominvore">Ominvore</option>
                    <option value="Carnivore">Carnivore</option>
                    <option value="Herbivore">Herbivore</option>
                </select>
             </span>
        </p>



        <br />


        <p><span style ="margin-left: 2em;">
            <button type="submit" runat="server" id="add_animal">Add Animal</button>
            </span>
        </p>

        <p><span style ="margin-left: 5em;">
             <label id="Label2" runat="server" style="color: red" hidden="hidden">Sucesfully Added Animal</label>
            </span>
        </p>

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

