﻿
Partial Class contact
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lbl_date.Text = DateTime.Now.ToLongDateString
        lbl_copy.Text = DateTime.Now.Year
    End Sub


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Label3.Text = "Your <span class=insertedstockshighlight> message</span> has been sent!"

        Response.AddHeader("REFRESH", "3;URL=./default.aspx")
    End Sub
End Class
