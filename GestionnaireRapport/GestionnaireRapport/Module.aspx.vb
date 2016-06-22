Public Class _Module
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
     
    End Sub

    Protected Sub FormView1_ItemInserted(sender As Object, e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Response.Redirect("./Module.aspx")
    End Sub

    Protected Sub FormView1_DataBound(sender As Object, e As EventArgs) Handles FormView1.DataBound
        If Me.FormView1.CurrentMode = FormViewMode.Insert Then
            Me.FormView1.ChangeMode(FormViewMode.Insert)
            Dim CreatedByTextBox1 = DirectCast(FormView1.FindControl("CreatedByTextBox"), TextBox)
            ''CreatedByTextBox1.Text = "test"
        End If
        If FormView1.DataItemCount = 0 Then
            Me.FormView1.ChangeMode(FormViewMode.Insert)
            Dim CreatedByTextBox1 = DirectCast(FormView1.FindControl("CreatedByTextBox1"), TextBox)
            ''CreatedByTextBox1.Text = "test"
        End If



    End Sub

    Protected Sub FormView1_ModeChanged(sender As Object, e As EventArgs) Handles FormView1.ModeChanged

        If Me.FormView1.CurrentMode = FormViewMode.Insert Then
            Me.FormView1.ChangeMode(FormViewMode.Insert)
            Dim CreatedByTextBox1 = DirectCast(FormView1.FindControl("CreatedByTextBox"), TextBox)
            ''CreatedByTextBox1.Text = "test"
        End If

        If Me.FormView1.CurrentMode = FormViewMode.Edit Then
            Dim UpdatedByTextBox As TextBox
            Me.FormView1.ChangeMode(FormViewMode.Edit)
            If Not IsNothing(FormView1.FindControl("UpdatedByTextBox1")) Then
                UpdatedByTextBox = DirectCast(FormView1.FindControl("UpdatedByTextBox1"), TextBox)
                UpdatedByTextBox.Text = "test"
            End If
        End If

    End Sub

    Protected Sub UpdateCancelButton_Command(sender As Object, e As System.Web.UI.WebControls.CommandEventArgs)
        Response.Redirect("./Module.aspx")
    End Sub

    Protected Sub FormView1_ItemUpdated(sender As Object, e As System.Web.UI.WebControls.FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        Response.Redirect("./Module.aspx")
    End Sub
End Class