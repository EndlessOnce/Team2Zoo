<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateProduct.aspx.cs" Inherits="zoodb.updateProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  <title>Update Product</title>   <!-- edit this -->
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
          <li class ="active"><a href ="#">Update Entity</a></li>
          <li><a href="#">Add Entity</a></li>
          <li><a href="#">Delete Entity</a></li>
          <li><a href="#">Search Entity</a></li>
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
      <h1>Update Product Information</h1>              <!-- edit this -->
      <p>Please fill out the fields below to update product information in the database</p>    <!-- edit this -->
      <hr>

       <p class="text-right">
            <a href=""><span class="glyphicon-pencil">Delete Product</span></a>  <!-- edit this -->
        </p>

  <p>
            <span style ="margin-left: 2em;">
           <strong>Name:</strong> 
                <input type="text" value="@prodName" name="pro_name" runat ="server" id="pro_name" style="width:200px"/> 
            </span>
        </p>
     

        <p><span style ="margin-left: 2em;">
            <strong>Price:</strong>
            <input type="text" value="@price" name="pro_price" runat ="server" id="pro_price" style="width:200px"/> 
            </span>
        </p>

        <p><span style ="margin-left: 2em;">
            <strong>Quantity:</strong>
            <input type="text" value="@quantity" name="pro_quan" runat ="server" id="pro_quan"/> 
            </span>
        </p>

        <p><span style ="margin-left: 5em;">
             <button type="submit" runat="server" id="update_button">Update</button>
            </span>
        </p>

        <p><span style ="margin-left: 5em;">
            <label id="Label1" runat="server" style="color: red" hidden="hidden">Sucesfully Updated Product</label>
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
