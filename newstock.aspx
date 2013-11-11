<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="newstock.aspx.vb" Inherits="detailsview" %>

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
        
        <asp:Label ID="Lbl_insStock" runat="server"></asp:Label>
        
         
        <br />
        <asp:DetailsView 
            ID="DetailsView1"
                runat="server"
                AutoGenerateRows="False"
                DataKeyNames="stockId"
                DataSourceID="SqlDataSource1"
                DefaultMode="Insert"
                HeaderText="Add A New Stock"
                CssClass="cssdetailsview"
                HeaderStyle-CssClass="header"
                FieldHeaderStyle-CssClass="fieldheader"
                ItemStyle-CssClass="item"
                AlternatingRowStyle-CssClass="altrow"
                CommandRowStyle-CssClass="command"
                PagerStyle-CssClass="pager" 
                Width="762px"  
                    
            >
            
            <AlternatingRowStyle CssClass="altrow"></AlternatingRowStyle>
            <CommandRowStyle CssClass="command"></CommandRowStyle>
            <FieldHeaderStyle CssClass="fieldheader"></FieldHeaderStyle>

            <Fields>
                <asp:TemplateField HeaderText="Ticker Symbol" SortExpression="stockTicker">
                            
                    <InsertItemTemplate>
                        <asp:TextBox 
                            ID="TextBox1" 
                            runat="server" 
                            Text='<%# Bind("stockTicker") %>'>

                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="** Ticker Symbol is Required **"
                                ControlToValidate="TextBox1">
                        </asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                            
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Company Name" SortExpression="stockName">
                            
                    <InsertItemTemplate>
                        <asp:TextBox 
                            ID="TextBox2" 
                            runat="server"
                                Text='<%# Bind("stockName") %>'>

                        </asp:TextBox>
                        <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="** Company Name is Required **"
                                ControlToValidate="TextBox2">
                        </asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                            
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Stock Exchange" SortExpression="stockExchange">
                           
                    <InsertItemTemplate>
                        <asp:TextBox 
                            ID="TextBox5" 
                            runat="server" 
                            Text='<%# Bind("stockExchange") %>'>

                        </asp:TextBox>
                        <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator5" runat="server" 
                                ErrorMessage="** Stock Exchange is Required **"
                                ControlToValidate="TextBox5">
                        </asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                           
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Buy or Short" SortExpression="stockType">
                            
                    <InsertItemTemplate>
                        <asp:TextBox 
                            ID="TextBox3" 
                            runat="server" 
                            Text='<%# Bind("stockType") %>'>

                        </asp:TextBox>
                        <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="** Buy or Short is Required **"
                                ControlToValidate="TextBox3">
                        </asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                            
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Entry Price" SortExpression="stockEntryPrice">
                            
                    <InsertItemTemplate>
                        <asp:TextBox 
                            ID="TextBox4"
                                runat="server" 
                            Text='<%# Bind("stockEntryPrice") %>'>

                        </asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator4" runat="server" 
                                ErrorMessage="** Entry Price is Required **"
                                ControlToValidate="TextBox4">
                        </asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                            
                </asp:TemplateField>
                <asp:BoundField DataField="stockEntryComments" HeaderText="Entry Comments" SortExpression="stockEntryComments" />
                <asp:TemplateField HeaderText="Exit Target" SortExpression="stockSellTarget">
                           
                    <InsertItemTemplate>
                        <asp:TextBox 
                            ID="TextBox6" 
                            runat="server" 
                            Text='<%# Bind("stockSellTarget") %>'>

                        </asp:TextBox>
                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator6" runat="server" 
                            ErrorMessage="** Stock Exchange is Required **"
                            ControlToValidate="TextBox6">
                        </asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                            
                </asp:TemplateField>
                <asp:BoundField DataField="stockSellPrice" HeaderText="Exit Price" SortExpression="stockSellPrice" />
                <asp:BoundField DataField="stockSellComments" HeaderText="Exit Comments" SortExpression="stockSellComments" />
                <asp:BoundField DataField="stockIndicators" HeaderText="Stock Indicators" SortExpression="stockIndicators" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <HeaderStyle CssClass="header"></HeaderStyle>

            <PagerStyle CssClass="pager"></PagerStyle>
        </asp:DetailsView>
    <br />
</asp:Content>

    
      
      
           
         
               
        
       
