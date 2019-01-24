<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddSubCategory.aspx.cs" Inherits="AddSubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                <div>
    
         <div class="container">
        <div class="form-horizontal">
            <h2>Add Category</h2>
            <hr />
             <div class="form-group">
                    <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Category"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="ddlCategory" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
            </div>
            <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Sub Category"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtSubCatName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtSubCatName"></asp:RequiredFieldValidator>
                    </div>
            </div>

            <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        
                        <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="btnAdd_Click"/>
                        <asp:Label ID="lblAdd" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
             </div>

                                    <h1>Categories</h1>
            <hr />
            <div class="panel panel-default">
                <!-- Default panel contents -->
                <div class="panel-heading">All Categories</div>

                <asp:Repeater ID="rptrCategory" runat="server">
                    <HeaderTemplate>
                        <table class="table"> 
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Category</th>
                            <th>Edit</th>
                        </tr>
                    </thead>
                    <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                        <th><%# Eval("SubCatID") %></th>
                        <td><%# Eval("SubCatName") %></td>
                        <td><%# Eval("CatName") %></td>
                        <td>Edit</td>
                        </tr>
                    
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
    </div>
</asp:Content>

