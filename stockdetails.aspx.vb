
Partial Class detailsview
    Inherits System.Web.UI.Page
    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim delStock As String = e.Values("stockTicker").ToString()

        Lbl_delStock.Text = "The Record <span class=deletedstockshighlight>" & delStock & "</span> has been deleted from the database!"

        Response.AddHeader("REFRESH", "3;URL=./stocks.aspx")


    End Sub
    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./stocks.aspx")
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lbl_date.Text = DateTime.Now.ToLongDateString
        lbl_copy.Text = DateTime.Now.Year
    End Sub
End Class
