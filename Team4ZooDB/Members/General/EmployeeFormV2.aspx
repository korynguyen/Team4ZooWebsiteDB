<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeFormV2.aspx.cs" Inherits="EmployeeFormV2.EmployeeFormV2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label style="margin-left: 50px">NEW EMPLOYEE FORM</label>
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">First Name: </label>
            <asp:TextBox ID="fname" runat="server"/>
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">Middle Initial:</label>
            <asp:TextBox ID="minitial" runat="server" />
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">Last Name:</label>
            <asp:TextBox ID="lname" runat="server"/>
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">ID:</label>
            <asp:TextBox ID="id" runat="server"/>
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">Start Date:</label>
            <asp:TextBox ID="startdate" runat="server"  placeholder="yyyy-mm-dd"/>
        </div>
        <div style="margin: 10px">            
            <label style="margin-left: 10px">Address:</label>
            <asp:TextBox ID="address" runat="server" />
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">Phone Number:</label>
            <asp:TextBox ID="phone" runat="server" placeholder="###-###-####"/>
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">Sex:</label>
            <asp:TextBox ID="sex" runat="server"  placeholder="'M' or 'F'" />
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">DOB:</label>
            <asp:TextBox ID="dob" runat="server"/>
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">Email:</label>
            <asp:TextBox ID="email" runat="server"/>
        </div>
        <div style="margin: 10px">
            <label style="margin-left: 10px">Password:</label>
            <asp:TextBox ID="password" runat="server"/>
        </div>
        <div>
             <label style="margin-left: 10px">Role:</label>
             <asp:DropDownList ID="role" style="margin: 10px" runat="server">
                <asp:ListItem Text="Supervisor" Value="Supervisor"></asp:ListItem>
                <asp:ListItem Text="Employee" Value="Employee"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div style="margin: 10px"> 
            <asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit"/>
        </div>
    </form>
</body>
</html>
