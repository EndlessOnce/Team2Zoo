<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateShow.aspx.cs" Inherits="zoodb.updateShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  <title>Update Show</title>   <!-- edit this -->
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
          <li class ="active"><a href ="updateShow.aspx">Update Entity</a></li>
          <li><a href="AddShow.aspx">Add Entity</a></li>
          <li><a href="delShow.aspx">Delete Entity</a></li>
          <li><a href="ShowSearch.aspx">Search Entity</a></li>
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
      <h1>Update Show Information</h1>              <!-- edit this -->
      <p>Please fill out the fields below to update show information in the database</p>    <!-- edit this -->
      <hr>


        <p>
            <span style ="margin-left: 2em;">
            <strong>Date of Show:</strong>
                <input type="text" placeholder="YYYY-MM-DD hh:mm:ss" name="datetime" runat="server" style="width:200px" id="showTime" />
            </span>
        </p>

     

        <p><span style ="margin-left: 2em;">
            <strong>Name:</strong>
            <input type="text" placeholder="Enter Show Name" name="show_name" runat ="server" style="width: 200px" id="show_name"/> 
            </span>
        </p>

        <p><span style ="margin-left: 2em;">
            <strong>Location:</strong>
            <input type="text" placeholder="Enter Show Location" name="show_location" runat ="server" id="show_loc"/> 
            </span>
        </p>

        <p><span style ="margin-left: 5em;">
            <asp:Button ID="update_show" runat="server" Text="Update Show" OnClick="updateShow_Click" />
            </span>
        </p>

        <p><span style ="margin-left: 2em;">
            <label id="ssLabel" runat="server" style="color: red" visible="false">Successfully Updated Show</label>
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
