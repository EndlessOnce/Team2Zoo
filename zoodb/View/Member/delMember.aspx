﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delMember.aspx.cs" Inherits="zoodb.delMember" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<title>Delete Member</title>
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
                    <a class="navbar-brand" runat="server" href="~/View/Users/Admin">Home</a>

                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="delMember.aspx">Delete Member</a></li>
                        <li><a href="AddMember.aspx">Add Member</a></li>
                        <li><a href="SearchMem.aspx">Search Member</a></li>
                        <li><a href="updateMember.aspx">Update Member</a></li>
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
                    <h1>Delete Member Information</h1>
                    <!--edit here also below this-->
                    <p>Please confirm if you wish to delete this member information from the database</p>
                    <hr>


                    <h3 style="text-align: center"><strong><u>Member Information</u></strong></h3>
                    <!--edit here also below this-->

                    <p>
                        <strong>Membership ID: </strong>
                        <asp:TextBox ID="memID" placeholder ="Enter Member ID" runat="server" Width="200px"></asp:TextBox>

                    </p>
                    <p>
                        <strong>First Name: </strong>
                        <asp:TextBox ID="fname" placeholder ="Enter First Name" runat="server" Width="200px"></asp:TextBox>

                    </p>
                    <p>
                        <strong>Last Name: </strong>
                        <asp:TextBox ID="lName" placeholder ="Enter Last Name" runat="server" Width="200px"></asp:TextBox>

                    </p>

                    <p>
                        <span style="margin-left: 1em;">
                            <asp:Button ID="delMem" runat="server" Text="Delete" OnClick="delMem_Click"/>
                            <!--edit here also below this-->
                        </span>
                    </p>

                    <p>
            
                            <label id="labelAnimUp" runat="server" style="color: red" Visible="false">Successfully Deleted Member</label>
                        <!--edit here also below this-->
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
