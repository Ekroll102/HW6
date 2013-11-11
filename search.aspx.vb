
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub searchTextbox_TextChanged(sender As Object, e As EventArgs) Handles searchTextbox.TextChanged


        Dim searchWord As String

        searchWord = "Select * From Table where (stockTicker = '%" + searchTextbox.Text.ToString() + "%')"

        SqlDataSource2.SelectCommand = searchWord

    End Sub


    Protected Sub searchTextbox2_TextChanged(sender As Object, e As EventArgs) Handles searchTextbox2.TextChanged


        Dim searchWord As String

        searchWord = "Select * From Table where (stockTicker = '%" + searchTextbox2.Text.ToString() + "%')"

        SqlDataSource2.SelectCommand = searchWord
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lbl_date.Text = DateTime.Now.ToLongDateString
        lbl_copy.Text = DateTime.Now.Year
    End Sub

End Class
