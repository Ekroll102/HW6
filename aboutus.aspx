<%@ Page Language="VB" AutoEventWireup="false" CodeFile="aboutus.aspx.vb" Inherits="aboutus" %>

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
                 <li><a href="./contact.aspx">Contact</a></li>
                 </ul>
            </div>
            </div>
            <div id="date">
                <asp:Label ID="lbl_date" runat="server" Text=""></asp:Label>

            </div>

                <div id="content">

                    <h1 class="centered"> About Us </h1>

                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec interdum consectetur lectus sit amet pellentesque. Maecenas ultrices pharetra tempor. Aliquam enim metus, iaculis ac consectetur elementum, dapibus pretium dui. Sed bibendum nibh non leo fringilla dictum. Ut sem ante, luctus a laoreet ac, ultricies sed ipsum. Praesent gravida dictum nisi, a suscipit sem bibendum vel. Aliquam erat volutpat. Nunc nec enim metus, quis volutpat ante. Donec blandit aliquam vehicula. Integer at ante magna, sit amet eleifend justo. Nulla congue convallis consequat. Suspendisse non enim ipsum. Integer iaculis metus eget elit semper vehicula. Morbi semper, nisi vel semper consequat, eros velit faucibus lorem, sit amet feugiat risus felis eget turpis. Aenean consequat dignissim urna nec aliquet. Proin consectetur bibendum auctor.

                    Ut quis risus quis libero blandit pretium a at sem. Duis consequat malesuada nisi, ac accumsan sapien ornare ut. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras dapibus enim nisi. Donec non justo sapien, quis feugiat elit. Donec neque nunc, ultricies et laoreet sit amet, varius non dolor. Etiam aliquet accumsan arcu, ullamcorper suscipit tellus accumsan vitae. Praesent aliquam augue a nunc dapibus mollis. Ut nec condimentum dolor. Nullam pharetra pellentesque nulla eget vestibulum. Maecenas ut tincidunt mi.

                  
                </div>
            
            <div id="footer">
            Copyright &copy; <asp:Label ID="lbl_copy" runat="server" Text=""></asp:Label> Eric Kroll - 6k:183:Systems Design &amp; Development 
            </div>

     </div>

    </form>
</body>
</html>
