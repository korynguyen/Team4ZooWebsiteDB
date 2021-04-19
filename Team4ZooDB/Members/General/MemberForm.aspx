﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberForm.aspx.cs" Inherits="Member_Form.Member_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label style="margin-left: 50px">MEMBER FORM. This is to enter a new Member into the database.</label>
        </div>
        <p>
            <asp:TextBox ID="AddMEmail" runat="server"/>
            &nbsp;Member Email</p>
        <p>
            <asp:TextBox ID="AddMFname" runat="server"/>
            &nbsp;Member First Name</p>
        <p>
            <asp:TextBox ID="AddMMInit" runat="server"/>
            &nbsp;Member Middle Initial</p>
        <p>
            <asp:TextBox ID="AddMLName" runat="server"/>
            &nbsp;Member Last Name</p>
        <p>
            <asp:Button ID="CreateMember" runat="server" OnClick="SubmitMember_Click" Text="Submit" OnClientClick="SubmitMember_Click" />
        </p>
        <p>
            <label style="margin-left: 50px">MEMBER LIST. This is to get all Members from the database.</label>
        </p>
        <p>
            <asp:Button ID="GetMembers" runat="server" OnClick="GetMembers_Click" Text="Get All Members" />
        </p>
        <p>
            <asp:Literal ID="reportTable" runat ="server" />
        </p>
        <p>
            <label style="margin-left: 50px">MEMBER DELETION. This is to delete any Member from the database.</label> </p>
        <p>
            <asp:TextBox ID="Del_MEmail" runat="server" OnTextChanged="Del_MEmail_TextChanged"/>
            &nbsp;Member Email</p>
        <p>
            <asp:Button ID="DeleteMember" runat="server" Text="Banish" OnClick="DeleteMember_Click" />
        </p>
    </form>
</body>
</html>
