
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub searchTextbox_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles searchTextbox.TextChanged

        Dim searchWord As String

        searchWord = "Select * From [Table] where (stockTicker Like '%" + searchTextbox.Text.ToString() + "%')"

        SqlDataSource2.SelectCommand = searchWord

    End Sub


    Protected Sub searchTextbox2_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles searchTextbox2.TextChanged


        Dim searchWord As String

        searchWord = "Select * From [Table] where (stockTicker Like '%" + searchTextbox2.Text.ToString() + "%')"

        SqlDataSource2.SelectCommand = searchWord
    End Sub

End Class
