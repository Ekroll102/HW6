<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID ="head" runat="server">

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID ="ContentPlaceHolder1" runat="server">  
     <asp:SqlDataSource 
            ID="SqlDataSource2" 
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs_StocksWebSite %>" 
            >

        </asp:SqlDataSource>
        
        <br />
          
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
</asp:Content>      