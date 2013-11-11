<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="stocks.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID ="head" runat="server">

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID ="ContentPlaceHolder1" runat="server">
   
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
    <br />
</asp:Content>            