Public Class ReportTimeLine
    Inherits System.Web.UI.Page
    Shared report As Report

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim index = CInt(Session("ReportID_Reports"))
        Try
            Int(Session("ReportID_Reports"))
        Catch ex As Exception

        End Try

        Using em As New dashbaordDBEntities
            Dim u = (From item In em.Reports
                    Where item.ReportID = index
                    Select item).ToList.FirstOrDefault
            report = u
        End Using

    End Sub

    Protected Sub FormView1_DataBound(sender As Object, e As EventArgs) Handles FormView1.DataBound
        If Me.FormView1.CurrentMode = FormViewMode.Insert Then
            Dim DDLStatus = DirectCast(FormView1.FindControl("DDLStatus"), DropDownList)
            Dim DDLReports = DirectCast(FormView1.FindControl("DDLReports"), DropDownList)
            DDLStatus.SelectedValue = report.CurrentStatus
            DDLReports.SelectedValue = report.ReportID
        End If
    End Sub

    Protected Sub FormView1_ItemInserted(sender As Object, e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Response.Redirect(".\ReportTimeLine.aspx")
    End Sub
End Class