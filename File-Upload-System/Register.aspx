<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="h1 text-center">Register</div>
            <br />
            <asp:Label ID="lblMessage" runat="server" CssClass="text-danger" Text=""></asp:Label>
            <div class="form-group">
                <label for="txtusrename">Username</label>
                <asp:TextBox ID="txtusrename" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ForeColor="Red"
                    ErrorMessage="Username required" ControlToValidate="txtusrename"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="txtpassword">Password</label>
                <asp:TextBox ID="txtpassword" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ForeColor="Red"
                    ErrorMessage="Password Required" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="txtcpassword">Confirm Password</label>
                <asp:TextBox ID="txtcpassword" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="txtcpassword"
                    ErrorMessage="Password and Confirm Password must match" ControlToCompare="txtpassword" Operator="Equal" Type="String"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ForeColor="Red"
                    ErrorMessage="Password Required" ControlToValidate="txtcpassword"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="txtemail">Email</label>
                <asp:TextBox ID="txtemail" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ForeColor="Red" 
                    ErrorMessage="Email is required" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" Display="Dynamic" ForeColor="Red"
                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="txtemail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
            </div>
            <asp:Button ID="btnRegister" OnClick="btnRegister_Click" CssClass="btn btn-default" runat="server" Text="Register" />
        </div>
    </div>
</asp:Content>

