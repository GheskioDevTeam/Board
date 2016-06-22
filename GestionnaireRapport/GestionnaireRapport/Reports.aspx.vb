Public Class Reports
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub FormView1_ItemInserted(sender As Object, e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Response.Redirect("./Reports.aspx")
    End Sub


    Protected Sub FormView1_ItemInserting(sender As Object, e As System.Web.UI.WebControls.FormViewInsertEventArgs) Handles FormView1.ItemInserting
     
    End Sub

    Protected Sub FormView1_ItemUpdating(sender As Object, e As System.Web.UI.WebControls.FormViewUpdateEventArgs) Handles FormView1.ItemUpdating
       
    End Sub

    Protected Sub InsertButton_Click(sender As Object, e As EventArgs)
        If Me.FormView1.DefaultMode = FormViewMode.Insert Then
            Dim CreatedByTextBox = DirectCast(FormView1.FindControl("CreatedByTextBox"), TextBox)
            CreatedByTextBox.Text = "test"
        End If
    End Sub

    Protected Sub UpdateButton_Click(sender As Object, e As EventArgs)
     
    End Sub


  
    Protected Sub FormView1_DataBound(sender As Object, e As EventArgs) Handles FormView1.DataBound
        If Not IsPostBack Then
            If Me.FormView1.CurrentMode = FormViewMode.Insert Then
                Dim CreatedByTextBox1 = DirectCast(FormView1.FindControl("CreatedByTextBox1"), TextBox)
                CreatedByTextBox1.Text = "test"
            End If

            If Me.FormView1.CurrentMode = FormViewMode.Edit Then
                Dim UpdatedByTextBox = DirectCast(FormView1.FindControl("UpdatedByTextBox"), TextBox)
                UpdatedByTextBox.Text = "test"
            End If
            If FormView1.DataItemCount = 0 Then
                Me.FormView1.ChangeMode(FormViewMode.Insert)
            End If


        End If
     

    End Sub

    Protected Sub UpdateButton_Click1(sender As Object, e As EventArgs)

    End Sub

    Protected Sub FormView1_ItemUpdated(sender As Object, e As System.Web.UI.WebControls.FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        Response.Redirect("./Reports.aspx")
    End Sub

    Protected Sub NewButton_Command(sender As Object, e As System.Web.UI.WebControls.CommandEventArgs)
        Dim ReportId As String = e.CommandArgument
        Using em As New dashbaordDBEntities
            Dim u = (From item In em.Reports
                    Where item.ReportID = CInt(ReportId)
                    Select item).ToList.FirstOrDefault
            Session("ReportID_Reports") = u.ReportID
            Session("StatutsID_Reports") = u.CurrentStatus
        End Using
        
        Response.Redirect("./ReportTimeLine.aspx")


    End Sub

    Protected Sub EditButton_Command(sender As Object, e As System.Web.UI.WebControls.CommandEventArgs)
        Dim ReportId As String = e.CommandArgument
        Using em As New dashbaordDBEntities
            Dim u = (From item In em.Reports
                    Where item.ReportID = CInt(ReportId)
                    Select item).ToList.FirstOrDefault
            Session("ReportItem2_Reports") = u
        End Using

        Session("ReportID_Reports") = ReportId
        Response.Redirect("./ReportsManager.aspx")
    End Sub
End Class