<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AnimalForm.aspx.cs" Inherits="Zoo2.AnimalForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label style="margin-left: 50px">ANIMAL FORM</label>
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">Animal Name: </label>
            <asp:TextBox ID="Name" runat="server"/>
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">Animal ID:</label>
            <asp:TextBox ID="AnimalID" runat="server" />
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">Breed:</label>
            <asp:TextBox ID="Breed" runat="server"/>
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">Arrival Date:</label>
            <asp:TextBox ID="ArrivalDate" runat="server"  placeholder="yyyy-mm-dd"/>
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">Species:</label>
            <asp:TextBox ID="Species" runat="server"  />
        </div>
        <div style="margin: 10px">            
            <label style="margin-left: 10px">Diet:</label>
            <asp:TextBox ID="Diet" runat="server" />
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">Sex:</label>
            <asp:TextBox ID="Sex" runat="server" />
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">DOB:</label>
            <asp:TextBox ID="DOB" runat="server"  placeholder="yyyy-mm-dd" />
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">CarerID:</label>
            <asp:TextBox ID="CarerID" runat="server"/>
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">Attraction Name:</label>
            <asp:TextBox ID="AttractionName" runat="server"/>
        </div>
        <div style="margin: 10px"> 
            <asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit"/>
        </div>
        <div>
            <p>List of employees and their IDs:</p>
        </div>
        <div>
            <asp:Literal ID="reportTable" runat ="server" />
        </div>
    </form>
</body>
</html>
