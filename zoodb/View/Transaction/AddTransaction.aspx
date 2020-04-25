<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTransaction.aspx.cs" Inherits="zoodb.AddTransaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Add a New Transaction</title>
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

        .myCenter {
            margin-left: auto;
            margin-right: auto;
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
            padding-top: 15px;
            padding-bottom: 15px;
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
                        <li><a href="SearchTransaction.aspx">Search Transaction</a></li>
                        <li class="active"><a href="AddTransaction.aspx">Add Transaction</a></li>
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
                    <h1>Add a New Transaction</h1>
                    <p>Please fill out the fields below to enter a new tranaction into the database</p>
                    <hr>


                    <p>
                        <strong>Transaction Date:</strong>
                        <input type="text" placeholder="YYYY-MM-DD hh:mm:ss" name="datetime" runat="server" style="width: 200px" id="showTime" />
                    </p>


                    <p>
                        <span style="margin-left: 2em;">
                            <strong>Shop ID:</strong>
                            <select id="shopID" name="ShopID" runat="server">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                                <option value="16">16</option>
                                <option value="17">17</option>
                                <option value="18">18</option>
                                <option value="19">19</option>
                                <option value="20">20</option>
                                <option value="21">21</option>
                                <option value="22">22</option>
                            </select>
                        </span>
                    </p>

                    <p>
                        <span style="margin-left: 2em;">
                            <strong>Product ID:</strong>
                            <select id="pID" name="pID" runat="server">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                                <option value="16">16</option>
                                <option value="17">17</option>
                                <option value="18">18</option>
                                <option value="19">19</option>
                                <option value="20">20</option>
                                <option value="21">21</option>
                            </select>
                        </span>
                    </p>

                    <p>
                        <strong>Quantity:</strong>
                        <input type="text" placeholder="Enter Product Quantity" name="quan" runat="server" id="quan" style="width: 200px" />
                    </p>

                    <p>
                        <span style="margin-left: 2em;">
                            <strong>Visitor ID:</strong>&nbsp;
                        <asp:TextBox ID="visID" runat="server" placeholder="Enter visitor ID"></asp:TextBox>
                        </span>
                    </p>


                    <p>
                        <asp:Button ID="tButton" runat="server" Text="Add Transaction" OnClick="addTrans_Click" />
                    </p>

                    <p>
                        <span style="margin-left: 2em;">
                            <label id="LabelT" runat="server" style="color: red" visible="false">Sucesfully Added Transaction</label>
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
