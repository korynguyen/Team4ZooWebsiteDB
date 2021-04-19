<%@ Page Title="" Language="C#" MasterPageFile="~/Members/Supervisor.Master" AutoEventWireup="true" CodeBehind="TicketBooth.aspx.cs" Inherits="Team4ZooDB.Members.FormsSupervisor.TicketBooth" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <div class="ticketbooth" id="form1" runat="server" >
            <label style="margin-left: 80px; color: #000000;"><b> TICKET BOOTH </b> </label>
            <label style ="color:#000000" for = "boothID" > Booth ID </label>
            <input type = "text" name = "boothID" placeholder = "ID Number" id="boothIDBox"/>&nbsp;
            <asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit"/>
    </div>
</asp:Content>
