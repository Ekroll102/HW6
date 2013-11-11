<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID ="head" runat="server">

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID ="ContentPlaceHolder1" runat="server">
    <h1 class="centered"> Contact </h1>
                    
    <asp:Label ID="Label1" runat="server" Text="Your Email Address:"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Your Message:"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="TextBox2" runat="server" Height="101px" TextMode="MultiLine" Width="270px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Send Message" />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server"></asp:Label>
</asp:Content>

                    
   
