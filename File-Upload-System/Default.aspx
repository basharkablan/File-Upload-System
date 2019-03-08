<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
            font-family: Arial;
            font-size: 10pt;
        }

        table {
            border: 1px solid #ccc;
            border-collapse: collapse;
        }

        table th {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }

        table th, table td {
            padding: 5px;
            border: 1px solid #ccc;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="row">
                <div class="col-md-12">
                    <div class="input-group">
                        <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" style="height:100%;float:none;" />
                        <span class="input-group-addon" style="padding:0px;border-radius:0px 4px 4px 0px;">
                            <asp:Button ID="btnUpload" OnClick="btnUpload_Click" CssClass="btn btn-success" runat="server" Text="Upload"/>
                        </span>
                    </div>
                    <br />
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="File Name" />
                    <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderText="Operations">
                        <ItemTemplate>
                            <asp:Button ID="btnDownload" CssClass="btn btn-primary" Text="Download" runat="server" OnClick="btnDownload_Click"
                                CommandArgument='<%# Eval("Id") %>'/>
                            <asp:Button ID="btnRemove" CssClass="btn btn-danger" Text="Remove" runat="server" OnClick="btnRemove_Click"
                                CommandArgument='<%# Eval("Id") %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
