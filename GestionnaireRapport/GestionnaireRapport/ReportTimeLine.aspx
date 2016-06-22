<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/SiteMaster2.Master"
    CodeBehind="ReportTimeLine.aspx.vb" Inherits="GestionnaireRapport.ReportTimeLine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">
                Changer le statut du rapport</h3>
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
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ReportID,StatusID" DataSourceID="EntityDataSource1"
                        CssClass="col-md-12" DefaultMode="Insert">
                        <EditItemTemplate>
                            <table class="table table-bordered table-hover" style="width: 70%">
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        ReportID:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:DropDownList ID="DDLReports" runat="server" DataSourceID="SqlDataSource1" DataTextField="ReportName"
                                            DataValueField="ReportID" Height="16px" Width="145px">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dashbaordDBConnectionString %>"
                                            SelectCommand="SELECT * FROM [Reports]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        StatusID:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:DropDownList ID="DDLStatus" runat="server" Height="16px" Width="145px" DataSourceID="SqlDataSource2"
                                            DataTextField="StatusID" DataValueField="StatusID">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dashbaordDBConnectionString %>"
                                            SelectCommand="SELECT * FROM [ReportStatus]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Comment:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' Height="24px" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        CreatedAt:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="CreatedAtTextBox" runat="server" Text='<%# Bind("CreatedAt") %>' />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        CreatedBy:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="CreatedByTextBox" runat="server" Text='<%# Bind("CreatedBy") %>' />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        UpdatedAt:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="UpdatedAtTextBox" runat="server" Text='<%# Bind("UpdatedAt") %>' />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        UpdateBy:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="UpdateByTextBox" runat="server" Text='<%# Bind("UpdateBy") %>' />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                                            Text="Update" CssClass="btn btn-primary" />
                                        &nbsp;&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                                            CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger" />
                                    </td>
                                </tr>
                            </table>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <table class="table table-bordered table-hover" style="width: 70%; margin: auto;">
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Nom du rapport
                                    </td>
                                    <td style="width: 50%">
                                        <asp:DropDownList ID="DDLReports" runat="server" DataSourceID="SqlDataSource1" DataTextField="ReportName"
                                            DataValueField="ReportID" Height="16px" Width="145px" Enabled="False" SelectedValue='<%# Bind("ReportID") %>'>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dashbaordDBConnectionString %>"
                                            SelectCommand="SELECT * FROM [Reports]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Statut du rapport:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:DropDownList ID="DDLStatus" runat="server" Height="16px" Width="145px" DataSourceID="SqlDataSource2"
                                            DataTextField="StatusName" DataValueField="StatusID" SelectedValue='<%# Bind("StatusID") %>'>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dashbaordDBConnectionString %>"
                                            SelectCommand="SELECT * FROM [ReportStatus]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Comment:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Comment") %>' Height="56px"
                                            Width="420px" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Créer le
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CreatedAt") %>' Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Crée par:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("CreatedBy") %>' Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Modifier le:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("UpdatedAt") %>' Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Modifier par:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("UpdateBy") %>' Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                                            Text="Insert" CssClass="btn btn-primary" />
                                        &nbsp;&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                                            CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger" />
                                    </td>
                                </tr>
                            </table>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            ReportID:
                            <asp:Label ID="ReportIDLabel" runat="server" Text='<%# Eval("ReportID") %>' />
                            <br />
                            StatusID:
                            <asp:Label ID="StatusIDLabel" runat="server" Text='<%# Eval("StatusID") %>' />
                            <br />
                            Comment:
                            <asp:Label ID="CommentLabel" runat="server" Text='<%# Bind("Comment") %>' />
                            <br />
                            CreatedAt:
                            <asp:Label ID="CreatedAtLabel" runat="server" Text='<%# Bind("CreatedAt") %>' />
                            <br />
                            CreatedBy:
                            <asp:Label ID="CreatedByLabel" runat="server" Text='<%# Bind("CreatedBy") %>' />
                            <br />
                            UpdatedAt:
                            <asp:Label ID="UpdatedAtLabel" runat="server" Text='<%# Bind("UpdatedAt") %>' />
                            <br />
                            UpdateBy:
                            <asp:Label ID="UpdateByLabel" runat="server" Text='<%# Bind("UpdateBy") %>' />
                            <br />
                            VoidedAt:
                            <asp:Label ID="VoidedAtLabel" runat="server" Text='<%# Bind("VoidedAt") %>' />
                            <br />
                            VoidedBy:
                            <asp:Label ID="VoidedByLabel" runat="server" Text='<%# Bind("VoidedBy") %>' />
                            <br />
                            Voided:
                            <asp:CheckBox ID="VoidedCheckBox" runat="server" Checked='<%# Bind("Voided") %>'
                                Enabled="false" />
                            <br />
                            Active:
                            <asp:CheckBox ID="ActiveCheckBox" runat="server" Checked='<%# Bind("Active") %>'
                                Enabled="false" />
                            <br />
                            Report:
                            <asp:Label ID="ReportLabel" runat="server" Text='<%# Bind("Report") %>' />
                            <br />
                            ReportStatu:
                            <asp:Label ID="ReportStatuLabel" runat="server" Text='<%# Bind("ReportStatu") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                                Text="Edit" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                                Text="New" />
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=dashbaordDBEntities"
                        DefaultContainerName="dashbaordDBEntities" EnableFlattening="False" EnableInsert="True"
                        EnableUpdate="True" EntitySetName="ReportLogStatus">
                    </asp:EntityDataSource>
                </div>
            </div>
        </div>
    </div>
    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">
               Log des status</h3>
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
                    <ul class="timeline">
                        <asp:ListView runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <!-- timeline time label -->
                                <li class="time-label"><span class="bg-red">
                                    <%# Eval("CreatedAt")%>
                                </span></li>
                                <!-- /.timeline-label -->
                                <!-- timeline item -->
                                <li>
                                    <!-- timeline icon -->
                                    <i class="fa fa-envelope bg-blue"></i>
                                    <div class="timeline-item">
                                        <span class="time"><i class="fa fa-clock-o"></i>12:05</span>
                                        <h3 class="timeline-header">
                                            <a href="#">Support Team</a> ...</h3>
                                        <div class="timeline-body">
                                            ...
                                            <%# Eval("Comment")%>
                                        </div>
                                        <div class="timeline-footer">
                                            <a class="btn btn-primary btn-xs">...</a>
                                        </div>
                                    </div>
                                </li>
                                <!-- END timeline item -->
                            </ItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dashbaordDBConnectionString %>"
                            SelectCommand="SELECT * FROM [ReportLogStatus] WHERE ([ReportID] = @ReportID)">
                            <SelectParameters>
                                <asp:SessionParameter DefaultValue="1" Name="ReportID" SessionField="ReportID_Reports"
                                    Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:EntityDataSource ID="EntityDataSource2" runat="server">
                        </asp:EntityDataSource>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
