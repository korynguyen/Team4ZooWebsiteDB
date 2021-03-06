<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ItemForm.aspx.cs" Inherits="ItemForm.ItemForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label style="margin-left: 50px">ITEM FORM. This is to enter a new Item into the database.</label>
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">Item ID: </label>
            <asp:TextBox ID="ItemID" runat="server"/>
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">Inital Stock:</label>
            <asp:TextBox ID="InitialStock" runat="server" />
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">Item Name:</label>
            <asp:TextBox ID="ItemName" runat="server"/>
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">Giftshop ID:</label>
            <asp:TextBox ID="GiftshopID" runat="server"/>
        </div>
        <div style="margin: 10px"> 
            <asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit"/>
        </div>

        <div>
            <label style="margin-left: 50px">UPDATE STOCK. This adds to the current stock in the database.</label>
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">Item ID: </label>
            <asp:TextBox ID="updateid" runat="server"/>
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">Amount of stock to add:</label>
            <asp:TextBox ID="updatestock" runat="server" />
        </div>
        <div style="margin: 10px"> 
            <asp:Button ID="updateButton" runat="server" OnClick="UpdateButton_Click" Text="Update"/>
            <asp:Literal ID="updateMessage" runat ="server" />
        </div>

        <div>
            <label style="margin-left: 50px">ITEM REPORT</label>
            <p>Enter the fields you want to search by. Click the left checkbox to show the attributes. Leave all checkboxes blank to show all attributes.</p>
        </div>
        <div style="margin: 10px">
            <asp:CheckBox ID="includeid" runat="server"/>
            <label style="margin-left: 10px">ItemID: </label>
            <asp:TextBox ID="reportItemID" runat="server"/>
        </div>
        <div style="margin: 10px">
            <asp:CheckBox ID="includestock" runat="server"/>
            <label style="margin-left: 10px">Current Stock:</label>
            <asp:TextBox ID="reportInStock" runat="server" />
            <label style="margin-left: 10px">Below:</label>
            <asp:CheckBox ID="stockb" runat="server"/>            
            <label style="margin-left: 10px">Above:</label>
            <asp:CheckBox ID="stocka" runat="server"/>
        </div>
        <div style="margin: 10px">
            <asp:CheckBox ID="includename" runat="server"/>
            <label style="margin-left: 10px">Item Name:</label>
            <asp:TextBox ID="reportItemName" runat="server"/>
        </div>
        <div style="margin: 10px">
            <asp:CheckBox ID="includegiftshopid" runat="server"/>
            <label style="margin-left: 10px">Giftshop ID:</label>
            <asp:TextBox ID="reportGiftshopID" runat="server"  />
        </div>
        <div style="margin: 10px"> 
            <asp:Button ID="ReportButton" runat="server" OnClick="ReportButton_Click" Text="Submit"/>
        </div>
        <div>
            <asp:Literal ID="reportTable" runat ="server" />
        </div>

    </form>
</body>
</html>
