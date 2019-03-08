<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="h1 text-center">Login</div>
            <br />
            <br />
            <div class="form-group">
                <label for="txtusername">Username</label>
                <asp:TextBox ID="txtusername" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ForeColor="Red"
                    ErrorMessage="Username required" ControlToValidate="txtusername"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="txtpassword">Password</label>
                <asp:TextBox ID="txtpassword" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ForeColor="Red"
                    ErrorMessage="Password Required" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
            </div>
            <asp:Button ID="btnlogin" OnClick="btnlogin_Click" CssClass="btn btn-default" runat="server" Text="Login" />
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Register.aspx" runat="server">Register</asp:HyperLink>
            <br />
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>

