<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/SiteMaster2.Master"
    CodeBehind="ReportsManager.aspx.vb" Inherits="GestionnaireRapport.ReportsManager" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
 <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">
                
                <asp:Label ID="ReportNameLabel" runat="server"></asp:Label>
            </h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse">
                    <i class="fa fa-minus"></i>
                </button>
                <button class="btn btn-box-tool" data-widget="remove">
                    <i class="fa fa-remove"></i>
                </button>
            </div>
        </div>
        <div class="box-body">
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-bordered table-hover col-md-12" style="width: 70%; margin: auto">
                        <tr style="width: 100%">
                            <td style="width: 50%">
                                Nom du rapport
                            </td>
                            <td style="width: 50%">
                                <asp:TextBox ID="RepNameTextBox" runat="server" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 50%">
                                Description du rapport
                            </td>
                            <td style="width: 50%">
                                <asp:TextBox ID="ReportDesc" runat="server" Height="46px" Width="450px" 
                                    Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">
                Génération du rapport&nbsp;
                <asp:Label ID="ReportNameLabel1" runat="server"></asp:Label>
            </h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse">
                    <i class="fa fa-minus"></i>
                </button>
                <button class="btn btn-box-tool" data-widget="remove">
                    <i class="fa fa-remove"></i>
                </button>
            </div>
        </div>
        <div class="box-body">
            <div class="row" style ="height:1200px">
                <div class="col-md-12" style ="height: 100%">
                    <asp:ScriptManager ID="ScriptManager1" runat="server" />
                    <rsweb:ReportViewer ID="ReportViewer1" runat="server" ProcessingMode="Remote" Width="80%" AsyncRendering ="true" ShowToolBar ="true" ShowPrintButton ="true" CssClass ="col-md-12" Height ="100%" SizeToReportContent= "true" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
