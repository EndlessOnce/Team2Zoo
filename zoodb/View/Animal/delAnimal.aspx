﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delAnimal.aspx.cs" Inherits="zoodb.View.Animal.delAnimal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Delete Animal</title>
    <!--edit here-->
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
                        <li class="active"><a href="#">Delete Entity</a></li>
                        <li><a href="AddAnimal.aspx">Add Entity</a></li>
                        <li><a href="SearchAnimal.aspx">Search Entity</a></li>
                        <li><a href="updateAnimal.aspx">Update Entity</a></li>
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
                    <h1>Delete Animal Information</h1>
                    <!--edit here also below this-->
                    <p>Please confirm if you wish to delete this animal information from the database</p>
                    <hr>

                    <p class="text-right">
                        <a href=""><span class="glyphicon-pencil">Return to update page</span></a>
                    </p>

                    <h3 style="text-align: center"><strong><u>Animal Information</u></strong></h3>

                    <p>
                        <strong>Animal ID: </strong>@animID

                    </p>
                    <p>
                        <strong>Animal Name: </strong>@animName

                    </p>

                    <p>
                        <span style="margin-left: 1em;">
                            <button type="submit" runat="server" id="del_Animal">Delete</button>
                        </span>
                    </p>

                    <p>
                        <span style="margin-left: 5em;">
                            <label id="labelAnimUp" runat="server" style="color: red" hidden="hidden">Successfully Deleted Animal</label>
                        </span>
                    </p>

                    <p class="text-left">
                        <a href=""><span class="glyphicon-pencil">Return to Home Page</span></a>
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
