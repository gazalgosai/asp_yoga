<%@ Page Title="" Language="VB" MasterPageFile="~/master_main.Master" AutoEventWireup="false" CodeFile="frm_admin_login.aspx.vb" Inherits="admin_frm_admin_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Panel ID="Panel1" runat="server">
    <br />
    <br />
    <br />
      <center style="height: 492px; width: 1256px" backcolor="pink">
          <h2 style="height: 77px">Admin Login Page</h2>
          <asp:Label ID="Label1" runat="server" Text="Username:" Font-Bold="True" 
              Font-Size="Medium"></asp:Label>
        <asp:TextBox ID="txtuser" runat="server" Height="42px" Width="355px" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
              ErrorMessage="Please Enter Correct Username!" Font-Bold="True" 
              Font-Size="Small" ForeColor="Red" ControlToValidate="txtuser"></asp:RequiredFieldValidator>
        <br />
          <br />
         <asp:Label ID="Label2" runat="server" Text="Password:" Font-Bold="True" 
              Font-Size="Medium"></asp:Label>
        <asp:TextBox ID="txtpwd" runat="server" Height="47px" Width="355px" 
              TextMode="Password"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
              ErrorMessage="Please Enter Correct Password!" Font-Bold="True" 
              Font-Size="Small" ForeColor="Red" ControlToValidate="txtpwd"></asp:RequiredFieldValidator>
        <br />
          <br />
    <br />
    <br />
        <asp:Button ID="Button1" runat="server" Text="Login" BackColor="#6699FF" 
              Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="50px" 
              Width="150px"  />

         <br />
    <br />
        <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" 
              Font-Size="Large" ForeColor="Red" Visible="False"></asp:Label>
        <br />
        </center>
    
    </asp:Panel>
    

</asp:Content>

