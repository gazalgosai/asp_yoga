<%@ Page Title="" Language="VB" MasterPageFile="~/master_main.Master" AutoEventWireup="false" CodeFile="frm_user_signup.aspx.vb" Inherits="User_frm_user_signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:Panel ID="Panel1" runat="server">
    <center style="height: 1183px; width: 1262px">
          <h2 style="height: 135px; width: 1266px;">User Create Account Page</h2>
          <asp:Label ID="Label1" runat="server" Text="Username:" Font-Bold="True" 
              Font-Size="Medium"></asp:Label>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtuser" runat="server" Height="42px" Width="355px" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
              ErrorMessage="Please Enter Correct Username!" Font-Bold="True" 
              Font-Size="Small" ForeColor="Red" ControlToValidate="txtuser"></asp:RequiredFieldValidator>
        <br />
          <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" 
              Text="Age"></asp:Label>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtage" runat="server" Height="42px" Width="355px" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
              ErrorMessage="Please Enter Age!" Font-Bold="True" 
              Font-Size="Small" ForeColor="Red" ControlToValidate="txtage"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
              ErrorMessage="Please Enter Valid Age!" Font-Bold="True" 
              Font-Size="Small" ForeColor="Red" ControlToValidate="txtage" 
              MinimumValue="25" MaximumValue="75" ></asp:RangeValidator>
        <br />

          <asp:Label ID="Label6" runat="server" Text="Mobile Number" Font-Bold="True" 
              Font-Size="Medium"></asp:Label>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtphone" runat="server" Height="42px" Width="355px" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
              ErrorMessage="Please Enter Phone!" Font-Bold="True" 
              Font-Size="Small" ForeColor="Red" ControlToValidate="txtphone"></asp:RequiredFieldValidator>
        <br />
          <br />

         <asp:Label ID="Label2" runat="server" Text="Create Password:" Font-Bold="True" 
              Font-Size="Medium"></asp:Label>
        <asp:TextBox ID="txtpwd" runat="server" Height="47px" Width="355px" 
              TextMode="Password"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
              ErrorMessage="Please Enter Correct Password!" Font-Bold="True" 
              Font-Size="Small" ForeColor="Red" ControlToValidate="txtpwd"></asp:RequiredFieldValidator>
        <br />
          <br />

          <asp:Label ID="Label4" runat="server" Text="Conform Password:" Font-Bold="True" 
              Font-Size="Medium"></asp:Label>
        <asp:TextBox ID="txtcpwd" runat="server" Height="47px" Width="355px" 
              TextMode="Password"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
              ErrorMessage="Please Enter Conform Password!" Font-Bold="True" 
              Font-Size="Small" ForeColor="Red" ControlToValidate="txtcpwd"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Please Enter Mathing Password" Font-Bold="True" 
              Font-Size="Small" ForeColor="Red" ControlToValidate="txtcpwd" ControlToCompare="txtpwd"></asp:CompareValidator>
        <br />
          <br />
    <br />
    <br />
        <asp:Button ID="btnsignup" runat="server" Text="Sign Up" BackColor="#6699FF" 
              Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="50px" 
              Width="150px"  />

         <br />
         <br />
        <asp:HyperLink ID="HyperLink1" runat="server" 
               Font-Size="Medium" NavigateUrl="~/User/frm_user_login.aspx">If You Have an Account , Please Login</asp:HyperLink>
    <br />
    <br />
    <br />
        <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" 
              Font-Size="Large" ForeColor="Red" Visible="False"></asp:Label>
        <br />
        </center>
    </asp:Panel>
</asp:Content>

