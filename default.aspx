<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <div id="container">
    
            <div id="menu">

            <div id="navcontainer">
                 <ul id="navlist">
                 <li><a href="./default.aspx">Home</a></li>
                 <li><a href="./stocks.aspx">View Stocks</a></li>
                 <li><a href="./newstock.aspx">New Stock</a></li>
                 <li><a href="./search.aspx">Search</a></li>
                 <li><a href="./aboutus.aspx">About Us</a></li>
                 <li><a href="./contact.aspx">Contact</a></li>
                 </ul>
            </div>
            </div>
            <div id="date">
                <asp:Label ID="lbl_date" runat="server" Text=""></asp:Label>

            </div>

                <div id="content">

                   <h1 class="centered"> Welcome to Stock Watch List </h1>
       
                   <h2 class="centeredd"> Focusing on the OTC and NASDAQ Markets!</h2>
           
                   <p class="centered">

                        <img alt="Bull" title="Bull" src="./images/Bull.jpg" />
                    </p>
                </div>

            <div id="footer">
            Copyright &copy; <asp:Label ID="lbl_copy" runat="server" Text=""></asp:Label> Eric Kroll - 6k:183:Systems Design &amp; Development 
            </div>

            
        </div>
        

    </div>
    </form>
</body>
</html>
