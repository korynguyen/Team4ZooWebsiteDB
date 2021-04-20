<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TicketForm.aspx.cs" Inherits="TicketForm.TicketForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label style="margin-left: 50px">NEW TICKET FORM. This puts a new ticket into the database.</label>
        </div>
        <div style="margin: 10px">
            <asp:TextBox ID="price" runat="server"/>
            <label style="margin-left: 10px">Ticket Price: </label>
        </div>
        <div style="margin: 10px">
            <asp:TextBox ID="date" runat="server" placeholder="yyyy-mm-dd"/>
            <label style="margin-left: 10px">Date:</label>
        </div>
        <div style="margin: 10px">
            <asp:TextBox ID="boothid" runat="server"/>
            <label style="margin-left: 10px">TicketBooth ID:</label>
        </div>
        <div style="margin: 10px">
            <asp:TextBox ID="email" runat="server"  />
            <label style="margin-left: 10px">Email:</label>
        </div>
        <div style="margin: 10px"> 
            <asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit"/>
        </div>
    </form>
</body>
</html>
