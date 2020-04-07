<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="zoodb.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
  <style>
      h1
      {
          text-align:center;
          font-style : italic;
      }
      h1.inset {border-style: inset;}

      h3{
          text-align:center;
      }

      p{
          text-align:center;
      }

  </style>
</head>
<body>

 <form id="form1" runat="server">

    <div class="col-sm-8 text-left"> 
      <h1 class="inset">Welcome to the Zoo Database Login and Registration Page</h1>
      <p>Hello! To access the Zoo Database, please log on with your username and password. If you do not have a valid username or password, please register and make an account with us to acces the database.</p>
      <hr>


        <h3> <strong>
   Returning User:
</strong>
<span style="margin-left: 18em;">
   <strong> New User:</strong>
 </span> </h3>


      <p> <strong><span style ="margin-left: 15em;">
               Username:</strong><asp:TextBox ID="LoginUser" runat="server"></asp:TextBox>
              </span>
          <span style ="margin-left: 15em;"><strong><asp:Label ID="Label3" runat="server" Text="Create a Username:"></asp:Label>
          <asp:TextBox ID="NewUser" runat="server"></asp:TextBox>
          </strong>
         </span> </p>

        <p><strong><span style ="margin-left: 15em;">
            Password:</strong><asp:TextBox ID="LoginPass" runat="server" TextMode="Password"></asp:TextBox>
            </span>
            <span style ="margin-left: 15em;"><strong><asp:Label ID="Label4" runat="server" Text="Create a Password:"></asp:Label>
            <asp:TextBox ID="NewPass" runat="server" TextMode="Password"></asp:TextBox>
            </strong>
           </span></p>


        <p><span style ="margin-left: 21em;">
            <asp:Button ID="LogButton" runat="server" Text="Login" OnClick="LogButton_Click" />
            </span>
            <span style ="margin-left: 21em;"><strong><asp:Label ID="Label5" runat="server" Text="Confirm Password:"></asp:Label>
            <asp:TextBox ID="ConfirmPass" runat="server" TextMode="Password"></asp:TextBox>
            </strong>
         </span></p>

        <p><span style ="margin-left: 15em;">
            <asp:Label ID="LoginError" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
            </span>
            <span style ="margin-left: 30em;"><asp:Button ID="RegButton" runat="server" Text="Register" OnClick="RegButton_Click" />
        </p></span>

        <p><span style ="margin-left: 45em;">
            <asp:Label ID="RegError" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
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