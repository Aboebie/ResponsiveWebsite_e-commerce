﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="form-horizontal">
            <h2>Add Product</h2>
            <hr />
            <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Name"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtPName"></asp:RequiredFieldValidator>
                    </div>
            </div>

            <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Price"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                    </div>
            </div>

            <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="SellingPrice"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtSelPrice" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtSelPrice"></asp:RequiredFieldValidator>
                    </div>
            </div>

             <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Brand"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlBrands" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="ddlBrands" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
            </div>

             <div class="form-group">
                    <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Category"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlCategory" autopostback="true" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="ddlBrands" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
            </div>

            <div class="form-group">
                    <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="Sub Category"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlSubCat" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlSubCat_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="ddlBrands" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
            </div>
             <div class="form-group">
                    <asp:Label ID="Label19" runat="server" CssClass="col-md-2 control-label" Text="Gender"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlGender" AutoPostBack="true" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlGender_SelectedIndexChanged"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="ddlGender" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
            </div>

            <div class="form-group">
                    <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="Size"></asp:Label>
                    <div class="col-md-3">
                        <asp:CheckBoxList ID="cblSize" runat="server" RepeatDirection="Horizontal"></asp:CheckBoxList>
                    </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label20" runat="server" CssClass="col-md-2 control-label" Text="Quantity"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtSelPrice"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                    <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" Text="Description"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtDesc" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtDesc"></asp:RequiredFieldValidator>
                    </div>
            </div>

            <div class="form-group">
                    <asp:Label ID="Label9" runat="server" TextMode="MultiLine"  CssClass="col-md-2 control-label" Text="Product Details"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPDetails" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtPDetails"></asp:RequiredFieldValidator>
                    </div>
            </div>

            <div class="form-group">
                    <asp:Label ID="Label10" runat="server" TextMode="MultiLine"  CssClass="col-md-2 control-label" Text="Material and Care"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtMatCare" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtMatCare"></asp:RequiredFieldValidator>
                    </div>
            </div>

            <!-- IMAGE UPLOADS --------------------------------------------------->


            <div class="form-group">
                    <asp:Label ID="Label11" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="fuImg01" CssClass="form-control" runat="server" />
                    </div>
            </div>
           <div class="form-group">
                    <asp:Label ID="Label12" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="fuImg02" CssClass="form-control" runat="server" />
                    </div>
            </div>
           <div class="form-group">
                    <asp:Label ID="Label13" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="fuImg03" CssClass="form-control" runat="server" />
                   </div>
            </div>
            <div class="form-group">
                    <asp:Label ID="Label14" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="fuImg04" CssClass="form-control" runat="server" />
                   </div>
            </div>
            <div class="form-group">
                    <asp:Label ID="Label15" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="fuImg05" CssClass="form-control" runat="server" />
                          </div>
            </div>
            <div class="form-group">
                    <asp:Label ID="Label16" runat="server" CssClass="col-md-2 control-label" Text="Free Delivery"></asp:Label>
                    <div class="col-md-3">
                        <asp:CheckBox ID="cbFD" runat="server" />
                    </div>
            </div>
            <div class="form-group">
                    <asp:Label ID="Label17" runat="server" CssClass="col-md-2 control-label" Text="30 Days Return"></asp:Label>
                    <div class="col-md-3">
                        <asp:CheckBox ID="cb30Ret" runat="server" />
                    </div>
            </div>
            <div class="form-group">
                    <asp:Label ID="Label18" runat="server" CssClass="col-md-2 control-label" Text="COD"></asp:Label>
                    <div class="col-md-3">
                        <asp:CheckBox ID="cbCOD" runat="server" />
                    </div>
            </div>
            <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        
                        <asp:Button ID="btnAdd" runat="server" Text="Add Product" CssClass="btn btn-default" OnClick="btnAdd_Click"/>
                        <asp:Label ID="lblAdd" runat="server"></asp:Label>
                    </div>
                </div>
        </div>
    </div>
</asp:Content>

