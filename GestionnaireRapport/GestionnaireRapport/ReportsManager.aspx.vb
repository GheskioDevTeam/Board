Public Class ReportsManager
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Try
                Dim report As New Report
                report = DirectCast(Session("ReportItem2_Reports"), Report)
                Me.RepNameTextBox.Text = report.ReportName
                Me.ReportDesc.Text = report.ReportDesc
                Me.ReportNameLabel.Text = report.ReportName
                Me.ReportNameLabel1.Text = report.ReportName
                ReportViewer1.ServerReport.ReportServerUrl = New System.Uri(report.ServerPath)
                ReportViewer1.ServerReport.ReportPath = "/" + report.FolderPath + "/" + report.ReportFileName
                ReportViewer1.ServerReport.Refresh()
            Catch ex As Exception

            End Try

        End If



    End Sub

End Class