Public Class SiteMaster2
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

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


    Protected Sub LinkButton1_Command1(sender As Object, e As System.Web.UI.WebControls.CommandEventArgs)
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