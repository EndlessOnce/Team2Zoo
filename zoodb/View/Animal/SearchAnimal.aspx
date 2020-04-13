<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchAnimal.aspx.cs" Inherits="zoodb.SearchAnimal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Search for an Animal</title>
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
          font-family: "Lucida Console", Courier, monospace;
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
         <li class="active"><a href="#">Search Animal</a></li>
        <li><a href="AddAnimal.aspx">Add Animal</a></li>
        <li><a href="#">Delete Animal</a></li>
        <li><a href="#">Update Animal</a></li>
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
      <h1>Search for an Animal</h1>
      <p>Please fill out the fields below to enter search for an animal in the database</p>
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

        <p><span style ="margin-left: 2em;">
            <strong>Exhibit:</strong>
                <select id = "Exhibit" name="exhibit" runat="server">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
            </span>
          </p>

        <br />


        <p><span style ="margin-left: 2em;">
            <button type="submit" runat="server" id="search_animal">Search</button>
            </span>
        </p>

        <p>
            <table id="aniTable" border="1" width="100%" hidden="hidden"  > 
            <tr>
            <th>Name:</th> 
            <th>Sex:</th> 
            <th>Common Name:</th>
            <th>Species:</th> 
            <th>Health:</th> 
            <th>Diet:</th>
            <th>Exhibit ID:</th>
            </tr>
            </table>
        </p>

        <p class="text-left">
            <a href=""><span class="glyphicon-pencil"> Return to Home Directory</span></a>
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
