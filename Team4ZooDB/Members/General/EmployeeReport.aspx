<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeReport.aspx.cs" Inherits="EmployeeReport.EmployeeReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <label style="margin-left: 50px">EMPLOYEE REPORT</label>
            <p>Enter the fields you want to search by. Click the left checkbox to show the attributes. Leave all checkboxes blank to show all attributes.</p>
        </div>
        <div style="margin: 10px">
            <asp:CheckBox ID="includefname" runat="server"/>
            <label style="margin-left: 10px">First Name: </label>
            <asp:TextBox ID="fname" runat="server"/>
        </div>
        <div style="margin: 10px">
            <asp:CheckBox ID="includeminitial" runat="server"/>
            <label style="margin-left: 10px">Middle Initial:</label>
            <asp:TextBox ID="minitial" runat="server" />
        </div>
        <div style="margin: 10px">
            <asp:CheckBox ID="includelname" runat="server"/>
            <label style="margin-left: 10px">Last Name:</label>
            <asp:TextBox ID="lname" runat="server"/>
        </div>
        <div style="margin: 10px">
            <asp:CheckBox ID="includeid" runat="server"/>
            <label style="margin-left: 10px">ID:</label>
            <asp:TextBox ID="id" runat="server"/>
        </div>
        <div style="margin: 10px">
            <asp:CheckBox ID="includestartdate" runat="server"/>
            <label style="margin-left: 10px">Start Date:</label>
            <asp:TextBox ID="startdate" runat="server"  placeholder="yyyy-mm-dd" />
            <label style="margin-left: 10px">Before Date:</label>
            <asp:CheckBox ID="startdateb" runat="server"/>
            <label style="margin-left: 10px">After Date:</label>
            <asp:CheckBox ID="startdatea" runat="server"/>
        </div>
        <div style="margin: 10px">  
            <asp:CheckBox ID="includeaddr" runat="server"/>
            <label style="margin-left: 10px">Address:</label>
            <asp:TextBox ID="addr" runat="server" />
        </div>
        <div style="margin: 10px">
            <asp:CheckBox ID="includephone" runat="server"/>
            <label style="margin-left: 10px">Phone Number:</label>
            <asp:TextBox ID="phone" runat="server" placeholder="###-###-####"/>
        </div>
        <div style="margin: 10px">
            <asp:CheckBox ID="includesex" runat="server"/>
            <label style="margin-left: 10px">Sex:</label>
            <asp:TextBox ID="sex" runat="server" placeholder="'M' or 'F'"/>
        </div>
        <div style="margin: 10px">
            <asp:CheckBox ID="includedob" runat="server"/>
            <label style="margin-left: 10px">DOB:</label>
            <asp:TextBox ID="dob" runat="server"/>
            <label style="margin-left: 10px">Before Date:</label>
            <asp:CheckBox ID="dobb" runat="server"/>
            <label style="margin-left: 10px">After Date:</label>
            <asp:CheckBox ID="doba" runat="server"/>
        </div>
        <div style="margin: 10px"> 
            <asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit"/>
        </div>
        <div>
            <asp:Literal ID="reportTable" runat ="server" />
        </div>
    </form>
</body>
</html>
