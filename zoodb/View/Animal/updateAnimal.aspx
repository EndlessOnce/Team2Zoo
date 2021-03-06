﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateAnimal.aspx.cs" Inherits="zoodb.updateAnimal" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Update Animal</title>
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
                    <a class="navbar-brand" runat="server" href="~/View/Users/Admin">Home</a>

                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Update Animal</a></li>
                        <li><a href="AddAnimal.aspx">Add Animal</a></li>
                        <li><a href="delAnimal.aspx">Delete Animal</a></li>
                        <li><a href="SearchAnimal.aspx">Search Animal</a></li>
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
                    <h1>Update Animal Information</h1>
                    <p>Please fill out the fields below to update animal information in the database</p>
                    <hr>

                

                    <p>
                        <strong>Animal Name:</strong>                
                     <asp:TextBox ID="amName" runat="server" Width="188px"></asp:TextBox>
                       
                    </p>

                    <p>
                        <span style="margin-left: 2em;">
                            <strong>Health:</strong>
                            <asp:DropDownList ID="SelectH" runat="server">
                                    <asp:ListItem Value="1">Healthy</asp:ListItem>
                                    <asp:ListItem Value="0">Unhealthy</asp:ListItem>
                                </asp:DropDownList>

                    </p>

                    <p>
                        <span style="margin-left: 2em;">
                            <strong>Exhibit:</strong>
                            <asp:DropDownList ID="ddExh" runat="server" CssClass="col-xs-offset-0">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                </asp:DropDownList>

                            <p>
                                <span style="margin-left: 1em;">
                                    <strong>Diet:</strong>
                                     <asp:DropDownList ID="ddDiet" runat="server">
                                    <asp:ListItem>Carnivore</asp:ListItem>
                                    <asp:ListItem>Herbivore</asp:ListItem>
                                    <asp:ListItem>Omnivore</asp:ListItem>
                                 </asp:DropDownList>
                                </span>
                            </p>


                            <p>
                                <span style="margin-left: 1em;">
       
                                  <asp:Button ID="proUpdate" runat="server" Text="Update" OnClick="updatePro_Click" />
                                </span>
                            </p>

                            <p>
                                <span style="margin-left: 5em;">
                                    <label id="labelAnimUp" runat="server" style="color: red" visible="false">Successfully Updated Animal</label>
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
