
Partial Class detailsview
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Dim insStock As String = e.Values("stockTicker").ToString()

        Lbl_insStock.Text = "The Record <span class=insertedstockshighlight>" & insStock & "</span> has been inserted into the database!"

        Response.AddHeader("REFRESH", "2;URL=./stocks.aspx")
    End Sub

End Class
