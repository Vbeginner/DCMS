
Partial Class VB
    Inherits System.Web.UI.Page
    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim dt As String = Request.Form(txtDate.UniqueID)
        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Selected Date: " & dt & "');", True)
    End Sub
End Class
