<%@ Page Language="VB" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
     
     <div id="container">
    
           <div id="menu">

            <div id="navcontainer">
                 <ul id="navlist">
                 <li><a href="./default.aspx">Home</a></li>
                 <li><a href="./stocks.aspx">View Stocks</a></li>
                 <li><a href="./newstock.aspx">New Stock</a></li>
                 <li><a href="./search.aspx">Search</a></li>  
                 <li><a href="./aboutus.aspx">About Us</a></li>
                 </ul>
            </div>
            </div>
            <div id="date">
                <asp:Label ID="lbl_date" runat="server" Text=""></asp:Label>

            </div>

                <div id="content">

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
                    
                </div>
            
            <div id="footer">
            Copyright &copy; <asp:Label ID="lbl_copy" runat="server" Text=""></asp:Label> Eric Kroll - 6k:183:Systems Design &amp; Development 
            </div>

     </div>

    </form>
</body>
</html>
