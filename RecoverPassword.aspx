<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="container">
            <div class="form-horizontal">
                <h2>Reset Password</h2>
                <hr />

                <div class="form-group" font-bold="True">
               <asp:Label ID="lblMsg" runat="server" CssClass="col-md-2 control-label" Font-Size="XX-Large"></asp:Label>
                </div>

                <div class="form-group">
               <asp:Label ID="lblPassword" runat="server" CssClass="col-md-2 control-label" Text="New Password" Visible="False"></asp:Label>
               <div class="col-md-3">
               <asp:TextBox ID="tbNewPass" CssClass="form-control" TextMode="Password" runat="server" Visible="False"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidatorPss" CssClass="text-danger" runat="server" ErrorMessage="Please enter your new Password" ControlToValidate="tbNewPass" Visible="False"></asp:RequiredFieldValidator>
                </div>
                 </div>

                 <div class="form-group">
               <asp:Label ID="lblRetypePass" runat="server" CssClass="col-md-2 control-label" Text="Confirm Password" Visible="False"></asp:Label>
               <div class="col-md-3">
               <asp:TextBox ID="tbConfirmPass" CssClass="form-control" TextMode="Password" runat="server" Visible="False"></asp:TextBox>
               <asp:CompareValidator ID="CompareValidatorPass" runat="server"  CssClass="text-danger" ErrorMessage="Both Passwords must be the same!" ControlToCompare="tbConfirmPass" ControlToValidate="tbNewPass" Visible="False"></asp:CompareValidator>
                </div>
                 </div>
       </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                <asp:Button ID="btRecPass" runat="server" CssClass="btn btn-default" Text="Reset" Visible="False" OnClick="btRecPass_Click" />
                
                </div>
            </div>
        </div>
</asp:Content>

