<%@ Page Title="" Language="C#" MasterPageFile="~/Members/Employee.Master" AutoEventWireup="true" CodeBehind="GiftShop.aspx.cs" Inherits="Team4ZooDB.Members.FormsEmployee.GiftShop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class ="giftshopform" id ="form1" runat="server">
        <label style="color: #000000" class = "item1">ENTER NEW GIFTSTHOP INTO DATABASE</label>
        <label style="color: #000000">Giftshop ID: </label>
        <asp:TextBox ID="GiftshopID" runat="server"/>
        
        <asp:Button class = "item2" ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit"/>
        <asp:Button ID="GetGiftshops" runat="server" OnClick="GetButton_Click" Text="Get All Giftshops"/>
        <span style="color: #000000"><asp:Literal ID="reportTable" runat ="server" /></span>
    </div>
</asp:Content>
