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
        .row.content {
            height: 450px
        }

        /* Set gray background color and 100% height */
        .sidenav {
            padding-top: 20px;
            background-color: #f1f1f1;
            height: 100vh;
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
            #font-family: "Lucida Console", Courier, monospace;
        }

            h1.inset {
                border-style: inset;
            }

        h3 {
            text-align: center;
        }

        p {
            text-align: center;
            padding-top: 5px;
            padding-bottom: 5px;
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
                        <li class="active"><a href="#">Search Animal</a></li>
                        <li><a href="AddAnimal.aspx">Add Animal</a></li>
                        <li><a href="delAnimal.aspx">Delete Animal</a></li>
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
                    <h1>Search for an Animal</h1>
                    <p>Please fill out the field either fully or partially below to enter search for an animal in the database</p>
                    <hr>


                    <br />


                   <p>
                    <strong>Animal Name:</strong>
                    &nbsp;<asp:TextBox ID="TxtSearch" runat="server" placeholder="Name of Animal"></asp:TextBox>
                    <asp:Button ID="BSearch" runat="server" Text="Search" OnClick="BSearch_Click" />
                   </p> 

                    <p>

                    <strong>Common Name:</strong>
                    &nbsp;<asp:TextBox ID="TextCommon" runat="server" placeholder="Common Name"></asp:TextBox>
                        <asp:Button ID="CommonName" runat="server" OnClick="CommonName_Click" Text="Search" />
                    </p>
                    <p>
                    <strong>Species Name:</strong>
                    &nbsp;<asp:TextBox ID="TextSpecies" runat="server" placeholder="Species Name"></asp:TextBox>

                        <asp:Button ID="SpeciesName" runat="server" OnClick="SpeciesName_Click" Text="Search" />

                    </p>
                    <p>
                        <strong>Exhibit ID: </strong>
                        <asp:DropDownList ID="DDLEx" runat="server" DataSourceID="SqlDataSource1" AutoPostBack="true" DataTextField="Exhibit_ID" DataValueField="Exhibit_ID" OnSelectedIndexChanged="DDLEx_SelectedIndexChanged">
                        </asp:DropDownList>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zoodb %>" ProviderName="<%$ ConnectionStrings:zoodb.ProviderName %>" SelectCommand="SELECT Exhibit_ID FROM exhibit"></asp:SqlDataSource>

                    </p>
                    <p>
                        <strong>Health:</strong><asp:DropDownList ID="DDLHealth" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DDLHealth_SelectedIndexChanged">
                            <asp:ListItem>Select Health</asp:ListItem>
                            <asp:ListItem Value="1">Healthy</asp:ListItem>
                            <asp:ListItem Value="0">Unhealthy</asp:ListItem>
                        </asp:DropDownList>

                    </p>
                    <p>
                        <strong>Diet:</strong><asp:DropDownList ID="DDLDiet" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DDLDiet_SelectedIndexChanged">
                            <asp:ListItem>Select Diet</asp:ListItem>
                            <asp:ListItem>Carnivore</asp:ListItem>
                            <asp:ListItem>Herbivore</asp:ListItem>
                            <asp:ListItem>Omnivore</asp:ListItem>
                        </asp:DropDownList>

                    </p>

                    <center>
                    <hr />
                    <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="true" AutoPostBack="true" emptyDataText="No items found!">


                    </asp:GridView>
                    </center>

                </div>
                <div class="col-sm-2 sidenav">
                </div>

            </div>

        </div>

        </div>
        </div>
</div>
    </form>
</body>
</html>
