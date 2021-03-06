﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddVisitor.aspx.cs" Inherits="zoodb.AddVisitor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Add a Zoo Member</title>
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
            height: 140vh;
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
            padding-top: 15px;
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
                        <li><a href="SearchVisitor.aspx">Search Visitor</a></li>
                        <li class="active"><a href="#">Add Visitor</a></li>
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
                    <h1>Add a New Zoo Visitor</h1>
                    <p>Please fill out the fields below to enter a new zoo visitor into the database</p>
                    <hr>

                    <p>
                        <strong>First Name:</strong>
                        <input type="text" placeholder="Enter First Name" name="fName" runat="server" id="fName" style="width: 200px" />
                    </p>


                    <p>
                        <strong>Last Name:</strong>
                        <input type="text" placeholder="Enter Last Name" name="lname" runat="server" id="lname" style="width: 200px" />
                    </p>

                    <p>
                        <strong>Ticket Type:</strong>
                        <select id="ttype" name="ttype" runat="server">
                            <option value="Adult">Adult</option>
                            <option value="Child">Child</option>
                            <option value="Senior">Senior</option>
                        </select>
                    </p>

                    <p>
                        <strong>Member?:</strong>
                        <select id="aMem" runat="server">
                            <option value="0">Yes</option>
                            <option value="1">No</option>

                        </select>
                    </p>

                    <p>
                        <strong>Group ID:</strong>
                        <input type="text" placeholder="Enter Group ID" name="gID" runat="server" id="gID" style="width: 200px" />
                    </p>

                    <p>
                        <strong>Date of Visith:</strong>
                        <input type="text" placeholder="YYYY-MM-DD hh:mm:ss" name="datetime" runat="server" style="width: 200px" id="showTime" />
                    </p>

                    <p>
                        <strong>Phone Number:</strong>
                        <input type="text" placeholder="Enter Phone Number" name="phone" runat="server" id="phoneID" style="width: 200px" />
                    </p>


                    <p>
                        <asp:Button ID="visButton" runat="server" Text="Add Visitor" OnClick="addVis_Click" />
                    </p>

                    <p>
                        <span style="margin-left: 2em;">
                            <label id="LabelVis" runat="server" style="color: red" visible="false">Sucesfully Added Visitor</label>
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
