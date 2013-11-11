<%@ Page Language="VB" AutoEventWireup="false" CodeFile="stocks.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="StocksDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:cs_StocksWebSite %>" DeleteCommand="DELETE FROM [Table] WHERE [stockId] = @stockId" InsertCommand="INSERT INTO [Table] ([stockTicker], [stockName], [stockExchange], [stockType], [stockEntryPrice], [stockEntryComments], [stockSellTarget], [stockSellPrice], [stockSellComments], [stockIndicators]) VALUES (@stockTicker, @stockName, @stockExchange, @stockType, @stockEntryPrice, @stockEntryComments, @stockSellTarget, @stockSellPrice, @stockSellComments, @stockIndicators)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [stockTicker] = @stockTicker, [stockName] = @stockName, [stockExchange] = @stockExchange, [stockType] = @stockType, [stockEntryPrice] = @stockEntryPrice, [stockEntryComments] = @stockEntryComments, [stockSellTarget] = @stockSellTarget, [stockSellPrice] = @stockSellPrice, [stockSellComments] = @stockSellComments, [stockIndicators] = @stockIndicators WHERE [stockId] = @stockId">
            <DeleteParameters>
                <asp:Parameter Name="stockId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="stockTicker" Type="String" />
                <asp:Parameter Name="stockName" Type="String" />
                <asp:Parameter Name="stockExchange" Type="String" />
                <asp:Parameter Name="stockType" Type="String" />
                <asp:Parameter Name="stockEntryPrice" Type="String" />
                <asp:Parameter Name="stockEntryComments" Type="String" />
                <asp:Parameter Name="stockSellTarget" Type="String" />
                <asp:Parameter Name="stockSellPrice" Type="String" />
                <asp:Parameter Name="stockSellComments" Type="String" />
                <asp:Parameter Name="stockIndicators" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="stockTicker" Type="String" />
                <asp:Parameter Name="stockName" Type="String" />
                <asp:Parameter Name="stockExchange" Type="String" />
                <asp:Parameter Name="stockType" Type="String" />
                <asp:Parameter Name="stockEntryPrice" Type="String" />
                <asp:Parameter Name="stockEntryComments" Type="String" />
                <asp:Parameter Name="stockSellTarget" Type="String" />
                <asp:Parameter Name="stockSellPrice" Type="String" />
                <asp:Parameter Name="stockSellComments" Type="String" />
                <asp:Parameter Name="stockIndicators" Type="String" />
                <asp:Parameter Name="stockId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <div id="container">
    
            <div id="menu">

            <div id="navcontainer">
                 <ul id="navlist">
                    <li><a href="./default.aspx">Home</a></li> 
                    <li><a href="./newstock.aspx">New Stock</a></li> 
                    <li><a href="./aboutus.aspx">About Us</a></li>
                    <li><a href="./search.aspx">Search</a></li> 
                    <li><a href="./contact.aspx">Contact</a></li> 
                 </ul>
            </div>
            </div>
            <div id="date">
                <asp:Label ID="lbl_date" runat="server" Text=""></asp:Label>

            </div>

            <div id="content">
                  
                <asp:GridView 
                    ID="GridView1"
                    runat="server" 
                    AllowPaging="True" 
                    AllowSorting="True"
                    AutoGenerateColumns="False" 
                    DataKeyNames="stockId" 
                    DataSourceID="StocksDataSource" 
                    PageSize="10"
                    Gridlines="None"
                    CssClass="cssgridview"
                    AlternatingRowStyle-CssClass="alt"
                    PagerStyle-CssClass="pgr">

                    <Columns>
                        <asp:BoundField DataField="stockTicker" HeaderText="Ticker Symbol" SortExpression="stockTicker" />
                        <asp:BoundField DataField="stockName" HeaderText="Company Name" SortExpression="stockName" />
                        <asp:HyperLinkField DataNavigateUrlFields="stockID" DataNavigateUrlFormatString="stockdetails.aspx?stockID={0}" HeaderText="View Details" Text="Select" />
                    </Columns>
                </asp:GridView>
            </div>

        <div id="footer">
            Copyright &copy; <asp:Label ID="lbl_copy" runat="server" Text=""></asp:Label> Eric Kroll - 6k:183:Systems Design &amp; Development 
        </div>

        </div>
    
    
    </div>
    </form>
</body>
</html>
