<%@ Page Language="VB" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource 
            ID="SqlDataSource2" 
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs_StocksWebSite %>" 
            >

        </asp:SqlDataSource>
        
        <br />
            
        <div id="container">
    
            <div id="menu">

                <div id="navcontainer">
                        <ul id="navlist">
                        <li><a href="./default.aspx">Home</a></li>
                        <li><a href="./stocks.aspx">View Stocks</a></li> 
                        <li><a href="./newstock.aspx">New Stock</a></li> 
                        <li><a href="./aboutus.aspx">About Us</a></li>
                        <li><a href="./contact.aspx">Contact</a></li> 
                        </ul>
                </div>
            </div>

        <div id="date">
            <asp:Label ID="lbl_date" runat="server" Text=""></asp:Label>

        </div>

        <div id="content">
            <h1 class ="centered"> Search </h1>
            <br />
            <% If Not IsPostBack Then%>
             
                    <asp:Label ID="Lbl_search" runat="server" Text="Search for a stock by its Ticker Symbol:"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="searchTextbox" runat="server">search</asp:TextBox>
                    <br />
                    <br />
      
            <% Else%>

                    <asp:Label ID="Lbl_search2" runat="server" Text= "Search for another stock by its Ticker Symbol:"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="searchTextbox2" runat="server">search</asp:TextBox>
                    <br />
                    <br />
       
                    <asp:GridView
                        ID="GridView1"
                        runat="server" 
                        AllowPaging="True" 
                        AllowSorting="True"
                        AutoGenerateColumns="False" 
                        DataKeyNames="stockId" 
                        DataSourceID="SqlDataSource2"
                        Gridlines="None"
                        CssClass="cssgridview"
                        AlternatingRowStyle-CssClass="alt"
                        PagerStyle-CssClass="pgr">
           
                   
           
                         <Columns>
                            <asp:BoundField DataField="stockTicker" HeaderText="Ticker Symbol" SortExpression="stockTicker" />
                            <asp:BoundField DataField="stockName" HeaderText="Company Name" SortExpression="stockName" />
                            <asp:HyperLinkField DataNavigateUrlFields="stockID" DataNavigateUrlFormatString="stockdetails.aspx?stockID={0}" HeaderText="View Details" Text="Select" />
            
                         </Columns>
                         <PagerStyle CssClass="pgr" />
                    </asp:GridView>
            <% End If%>
        </div>
           <div id="footer">
                    Copyright &copy; <asp:Label ID="lbl_copy" runat="server" Text=""></asp:Label> Eric Kroll - 6k:183:Systems Design &amp; Development 
           </div>
     </div>
    </div>
    </form>
</body>
</html>
