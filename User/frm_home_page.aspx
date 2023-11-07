<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/master_main.Master" CodeBehind="frm_home_page.aspx.vb" Inherits="tybca_asp.frm_home_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 299px;
        }
        .style1
        {
            height: 299px;
            width: 483px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <div class="hero-content" style="background-position: center top; background-image: url('../Images/Meditation-for-Stress-Relief.jpg'); background-repeat: no-repeat; background-attachment: scroll; height: 1051px; width: 1400px;">
            <h1 class="main-heading" style="font-family: Arial, Helvetica, sans-serif; font-size: 65px; font-weight: 900; color: #333399;">"Yoga is the journey
                <span class="main-heading-focus" >of <br>The Self,<br>To The Self,<br> Through The Self" </span>
            </h1>
            <p class="sub-heading" style="font-size: 18px; font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Bhagavad Gita</p>
            <a href="" class="hero-cta link" style="padding: 20px; margin: 5px; background-color: #FF9900; font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #000000;">Get Started</a>
            <br />
            <br />
        </div>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Label ID="Label1" runat="server" Text="It is a really Help"></asp:Label>
    <br />
    <table>
        <tr>
            <td class="style1">
                <asp:Image ID="Image1" runat="server" Height="300px" 
                    ImageUrl="~/Images/istockphoto-1433041855-170667a.webp" Width="450px" 
                    ImageAlign="Middle" style="margin-right: 0px" /></td>
            <td class="auto-style1"> 
                <asp:Image ID="Image2" runat="server" 
                    ImageUrl="~/Images/istockphoto-1421241475-170667a.webp" Height="300px"  
                    Width="450px" ImageAlign="Middle" style="margin-right: 3px"/></td>
            <td class="auto-style1"> 
                <asp:Image ID="Image3" runat="server" 
                    ImageUrl="~/Images/istockphoto-1370277217-170667a.webp" Height="300px"  
                    Width="450px" ImageAlign="Middle"/></td>
        </tr>
    </table>

</asp:Content>
