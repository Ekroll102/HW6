<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="stockdetails.aspx.vb" Inherits="detailsview" %>

<asp:Content ID="Content1" ContentPlaceHolderID ="head" runat="server">

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID ="ContentPlaceHolder1" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_StocksWebSite %>" DeleteCommand="DELETE FROM [Table] WHERE [stockId] = @stockId" InsertCommand="INSERT INTO [Table] ([stockTicker], [stockName], [stockExchange], [stockType], [stockEntryPrice], [stockEntryComments], [stockSellTarget], [stockSellPrice], [stockSellComments], [stockIndicators]) VALUES (@stockTicker, @stockName, @stockExchange, @stockType, @stockEntryPrice, @stockEntryComments, @stockSellTarget, @stockSellPrice, @stockSellComments, @stockIndicators)" SelectCommand="SELECT * FROM [Table] WHERE ([stockId] = @stockId)" UpdateCommand="UPDATE [Table] SET [stockTicker] = @stockTicker, [stockName] = @stockName, [stockExchange] = @stockExchange, [stockType] = @stockType, [stockEntryPrice] = @stockEntryPrice, [stockEntryComments] = @stockEntryComments, [stockSellTarget] = @stockSellTarget, [stockSellPrice] = @stockSellPrice, [stockSellComments] = @stockSellComments, [stockIndicators] = @stockIndicators WHERE [stockId] = @stockId">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="stockId" QueryStringField="stockID" Type="Int32" />
            </SelectParameters>
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
        <br />

        <asp:Label ID="Lbl_delStock" runat="server"></asp:Label> 
     
        <asp:DetailsView 
            ID="DetailsView1" 
            runat="server" 
            AutoGenerateRows="False"
            DataKeyNames="stockId"
            DataSourceID="SqlDataSource1"            
            HeaderText="Stock Details"
            CssClass="cssdetailsview"
            HeaderStyle-CssClass="header"
            FieldHeaderStyle-CssClass="fieldheader"
            ItemStyle-CssClass="item"
            AlternatingRowStyle-CssClass="altrow"
            CommandRowStyle-CssClass="command"
            PagerStyle-CssClass="pager">

            <Fields>
                <asp:BoundField DataField="stockTicker" HeaderText="Ticker Symbol" SortExpression="stockTicker" />
                <asp:BoundField DataField="stockName" HeaderText="Company Name" SortExpression="stockName" />
                <asp:BoundField DataField="stockExchange" HeaderText="Stock Exchange" SortExpression="stockExchange" />
                <asp:BoundField DataField="stockType" HeaderText="Buy or Short" SortExpression="stockType" />
                <asp:BoundField DataField="stockEntryPrice" HeaderText="Entry Price" SortExpression="stockEntryPrice" />
                <asp:BoundField DataField="stockEntryComments" HeaderText="Entry Comments" SortExpression="stockEntryComments" />
                <asp:BoundField DataField="stockSellTarget" HeaderText="Exit Target" SortExpression="stockSellTarget" />
                <asp:BoundField DataField="stockSellPrice" HeaderText="Exit Price" SortExpression="stockSellPrice" />
                <asp:BoundField DataField="stockSellComments" HeaderText="Exit Comments" SortExpression="stockSellComments" />
                <asp:BoundField DataField="stockIndicators" HeaderText="Stock Indicators" SortExpression="stockIndicators" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
        <br />
</asp:Content>          