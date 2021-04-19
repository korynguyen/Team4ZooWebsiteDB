<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Team4ZooDB.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/login.css" rel="stylesheet" />
</head>
<body>
    <div>
        <form class="form1" id="form1" runat="server">
            <h1> LOGIN </h1>
            <label for = "Username" class = "Username"> Username </label>
            <input type = "text" name = "Username" placeholder = "Username/Email" id="IDbox"/>
            <label for = "Password" class = "Password"> Password </label>
            <input type = "password" name = "Password" placeholder = "Password" id="passwordbox"/>&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
        </form>
    </div>
    
</body>
</html>
