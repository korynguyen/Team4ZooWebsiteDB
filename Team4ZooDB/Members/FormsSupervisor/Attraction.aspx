<%@ Page Title="" Language="C#" MasterPageFile="~/Members/Supervisor.Master" AutoEventWireup="true" CodeBehind="Attraction.aspx.cs" Inherits="Team4ZooDB.Members.FormsSupervisor.attraction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="attractionForm" id="form1" runat="server">
        <label class="attraction1">ATTRACTION</label>
        <label>Attraction Name:</label>
        <asp:TextBox ID="Name" runat="server"/>
        <label>Manager ID:</label>
        <asp:TextBox ID="ManagerID" runat="server" />
        <label>Animal ID:</label>
        <asp:TextBox ID="AnimalID" runat="server"/>
        <label>Price:</label>
        <asp:TextBox ID="Price" runat="server" placeholder="yyyy-mm-dd"/>
        <label>Upkeep Cost:</label>
        <asp:TextBox ID="UpkeepCost" runat="server"/>
        
        <asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit"/>
    </div>
</asp:Content>
