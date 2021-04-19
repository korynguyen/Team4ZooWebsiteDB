<%@ Page Title="" Language="C#" MasterPageFile="~/Members/Supervisor.Master" AutoEventWireup="true" CodeBehind="ItemForm.aspx.cs" Inherits="Team4ZooDB.Members.FormsSupervisor.ItemForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <div class="ItemFormGrid" id="form1" runat="server">
            <label class="item1">ITEM FORM. This is to enter a new Item into the database.</label>
            <asp:TextBox class="item2" ID="ItemID" runat="server"/>
            <label class="item3">Item ID: </label>
            <asp:TextBox class="item4"  ID="InitialStock" runat="server" />
            <label class="item5" style="margin-left: 10px">Inital Stock:</label>
            <asp:TextBox class="item6"  ID="ItemName" runat="server"/>
            <label class="item7"  style="margin-left: 10px">Item Name:</label>
            <asp:TextBox class="item8"  ID="GiftshopID" runat="server"/>
            <label class="item9"  style="margin-left: 10px">Giftshop ID:</label>
            <asp:Button class="item10"  ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit"/>
            <label class="item11"  style="margin-left: 50px">UPDATE STOCK. This adds to the current stock in the database.</label>
            <asp:TextBox class="item12"  ID="updateid" runat="server"/>
            <label class="item13"  style="margin-left: 10px">Item ID: </label>
            <asp:TextBox class="item14"  ID="updatestock" runat="server" />
            <label class="item15"  style="margin-left: 10px">Amount of stock to add:</label>
            <asp:Button class="item16"  ID="updateButton" runat="server" OnClick="UpdateButton_Click" Text="Update"/>
            <asp:Literal  ID="updateMessage" runat ="server" />
            <label class="item18"  style="margin-left: 50px">ITEM REPORT</label>
            <p class="item19" >Enter the fields you want to search by. Click the left checkbox to show the attributes. Leave all checkboxes blank to show all attributes.</p>

            <asp:CheckBox class="item20" ID="includeid" runat="server"/>
            <asp:TextBox class="item21" ID="reportItemID" runat="server"/>
            <label class="item22"  style="margin-left: 10px">ItemID: </label>
            <asp:CheckBox class="item23" ID="includestock" runat="server"/>
            <asp:TextBox class="item24" ID="reportInStock" runat="server" />
            <label class="item25" style="margin-left: 10px">Current Stock:</label>
            <label class="item26"  style="margin-left: 10px">Below:</label>
            <asp:CheckBox class="item27"  ID="stockb" runat="server"/>            
            <label class="item28"  style="margin-left: 10px">Above:</label>
            <asp:CheckBox class="item29"  ID="stocka" runat="server"/>
            <asp:CheckBox class="item30"  ID="includename" runat="server"/>
            <asp:TextBox  class="item31" ID="reportItemName" runat="server"/>
            <label class="item32"  style="margin-left: 10px">Item Name:</label>
            <asp:CheckBox class="item33"  ID="includegiftshopid" runat="server"/>
            <asp:TextBox class="item34"  ID="reportGiftshopID" runat="server"  />
            <label class="item35"  style="margin-left: 10px">Giftshop ID:</label>
            <asp:Button class="item36"  ID="ReportButton" runat="server" OnClick="ReportButton_Click" Text="Submit"/>
            <asp:Literal ID="reportTable" runat ="server" />
    </div>
</asp:Content>
