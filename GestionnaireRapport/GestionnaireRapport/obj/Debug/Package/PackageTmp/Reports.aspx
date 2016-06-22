<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/SiteMaster2.Master"
    CodeBehind="Reports.aspx.vb" Inherits="GestionnaireRapport.Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">
                Créer/Modifier un rapport</h3>
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
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="EntityDataSource1" CssClass="col-md-12">
                        <EditItemTemplate>
                            <table class="table table-bordered table-hover" style="width: 70%; margin: auto">
                                <tr>
                                    <td>
                                        ID
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ReportID") %>' Width="70%" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        ModuleID:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:DropDownList ID="DDLModuleID" runat="server" DataSourceID="SqlDataSource1" DataTextField="ModuleName"
                                            DataValueField="ModuleID" Height="16px" Width="147px" SelectedValue='<%# Bind("ModuleID") %>'>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dashbaordDBConnectionString %>"
                                            SelectCommand="SELECT * FROM [Module]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        ReportName:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ReportNameTextBox" runat="server" Text='<%# Bind("ReportName") %>'
                                            Width="70%" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        ReportDesc:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ReportDescTextBox" runat="server" Text='<%# Bind("ReportDesc") %>'
                                            Height="42px" TextMode="MultiLine" Width="402px" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        ServerName:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ServerNameTextBox" runat="server" Text='<%# Bind("ServerName") %>'
                                            Width="70%" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        ServerPath:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ServerPathTextBox" runat="server" Text='<%# Bind("ServerPath") %>'
                                            Width="70%" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        &nbsp;FolderPath:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="FolderPathTextBox" runat="server" Text='<%# Bind("FolderPath") %>'
                                            Width="70%" />
                                    </td>
                                    <tr style="width: 100%">
                                        <td style="width: 50%">
                                            ReportFileName:
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="ReportFileNameTextBox" runat="server" Text='<%# Bind("ReportFileName") %>'
                                                Width="70%" />
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td style="width: 50%">
                                            CreatedAt:
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="CreatedAtTextBox" runat="server" Enabled="False" Text='<%# Bind("CreatedAt") %>'
                                                Width="70%" />
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td style="width: 50%">
                                            CreatedBy:
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="CreatedByTextBox" runat="server" Enabled="False" Text='<%# Bind("CreatedBy") %>'
                                                Width="70%" />
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td style="width: 50%">
                                            UpdatedAt:
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="UpdatedAtTextBox" runat="server" Enabled="False" Text='<%# Bind("UpdatedAt") %>'
                                                Width="70%" />
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td style="width: 50%">
                                            UpdateBy:
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="UpdatedByTextBox" runat="server" Enabled="False" Text='<%# Bind("UpdateBy") %>'
                                                Width="70%" />
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td style="width: 50%">
                                            CurrentStatus:
                                        </td>
                                        <td style="width: 50%">
                                            <asp:DropDownList ID="DDLStatus2" runat="server" DataSourceID="SqlDataSource2" DataTextField="StatusName"
                                                DataValueField="StatusID" SelectedValue='<%# Bind("CurrentStatus") %>' 
                                                Width="70%" Enabled="False">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dashbaordDBConnectionString %>"
                                                SelectCommand="SELECT * FROM [ReportStatus]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td colspan="2">
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                                                CssClass="btn btn-primary" Text="Update" onclick="UpdateButton_Click1" />
                                            &nbsp;&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                                                CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger" />
                                        </td>
                                    </tr>
                                </tr>
                            </table>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <table class="table table-bordered table-hover" style="width: 70%; margin: auto">
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        ModuleID:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:DropDownList ID="DDLModuleReports" runat="server" DataSourceID="SqlDataSource2"
                                            DataTextField="ModuleName" DataValueField="ModuleID" SelectedValue='<%# Bind("ModuleID") %>'>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dashbaordDBConnectionString %>"
                                            SelectCommand="SELECT * FROM [Module]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        ReportName:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ReportNameTextBox" runat="server" Text='<%# Bind("ReportName") %>'
                                            Width="70%" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        ReportDesc:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ReportDescTextBox1" runat="server" Height="42px" Text='<%# Bind("ReportDesc") %>'
                                            TextMode="MultiLine" Width="100%" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        ServerName:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ServerNameTextBox1" runat="server" Text='<%# Bind("ServerName") %>'
                                            Width="70%" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        ServerPath:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ServerPathTextBox" runat="server" Text='<%# Bind("ServerPath") %>'
                                            Width="70%" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        &nbsp;FolderPath:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="FolderPathTextBox1" runat="server" Text='<%# Bind("FolderPath") %>'
                                            Width="70%" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        ReportFileName:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ReportFileNameTextBox1" runat="server" Text='<%# Bind("ReportFileName") %>'
                                            Width="70%" />
                                    </td>
                                    <tr style="width: 100%">
                                        <td style="width: 50%">
                                            CreatedAt:
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="CreatedAtTextBox1" runat="server" Enabled="False" Text='<%# Bind("CreatedAt") %>'
                                                Width="70%" />
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td style="width: 50%">
                                            CreatedBy:
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="CreatedByTextBox1" runat="server" Enabled="False" Text='<%# Bind("CreatedBy") %>'
                                                Width="70%" />
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td style="width: 50%">
                                            UpdatedAt:
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="UpdatedAtTextBox1" runat="server" Enabled="False" Text='<%# Bind("UpdatedAt") %>'
                                                Width="70%" />
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td style="width: 50%">
                                            UpdateBy:
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="UpdateByTextBox1" runat="server" Enabled="False" Text='<%# Bind("UpdateBy") %>'
                                                Width="70%" />
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td style="width: 50%">
                                            CurrentStatus:
                                        </td>
                                        <td style="width: 50%">
                                            <asp:DropDownList ID="DDLStatus2" runat="server" DataSourceID="SqlDataSource3" DataTextField="StatusName"
                                                DataValueField="StatusID" SelectedValue='<%# Bind("CurrentStatus") %>' 
                                                Width="70%" Enabled="False">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dashbaordDBConnectionString %>"
                                                SelectCommand="SELECT * FROM [ReportStatus]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td colspan="2">
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                                                CssClass="btn btn-primary" Text="Insert" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                                                CommandName="Cancel" CssClass="btn btn-danger" Text="Cancel" />
                                        </td>
                                    </tr>
                                </tr>
                            </table>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <table class="table table-bordered table-hover" style="width: 70%; margin: auto">
                                <tr>
                                    <td>
                                        ID
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ReportID") %>' Width="70%"
                                            Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        ModuleID:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:DropDownList ID="DDLModuleID2" runat="server" DataSourceID="SqlDataSource1"
                                            DataTextField="ModuleName" DataValueField="ModuleID" Height="16px" Width="147px"
                                            SelectedValue='<%# Bind("ModuleID") %>' Enabled="False">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dashbaordDBConnectionString %>"
                                            SelectCommand="SELECT * FROM [Module]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        ReportName:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ReportNameTextBox2" runat="server" Text='<%# Bind("ReportName") %>'
                                            Width="70%" Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        ReportDesc:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ReportDescTextBox2" runat="server" Text='<%# Bind("ReportDesc") %>'
                                            Height="42px" TextMode="MultiLine" Width="402px" Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        ServerName:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ServerNameTextBox2" runat="server" Text='<%# Bind("ServerName") %>'
                                            Width="70%" Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        ServerPath:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ServerPathTextBox2" runat="server" Text='<%# Bind("ServerPath") %>'
                                            Width="70%" Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        &nbsp;FolderPath:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="FolderPathTextBox2" runat="server" Text='<%# Bind("FolderPath") %>'
                                            Width="70%" Enabled="False" />
                                    </td>
                                    <tr style="width: 100%">
                                        <td style="width: 50%">
                                            ReportFileName:
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="ReportFileNameTextBox2" runat="server" Text='<%# Bind("ReportFileName") %>'
                                                Width="70%" Enabled="False" />
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td style="width: 50%">
                                            CreatedAt:
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="CreatedAtTextBox2" runat="server" Enabled="False" Text='<%# Bind("CreatedAt") %>'
                                                Width="70%" />
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td style="width: 50%">
                                            CreatedBy:
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="CreatedByTextBox2" runat="server" Enabled="False" Text='<%# Bind("CreatedBy") %>'
                                                Width="70%" />
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td style="width: 50%">
                                            UpdatedAt:
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="UpdatedAtTextBox2" runat="server" Enabled="False" Text='<%# Bind("UpdatedAt") %>'
                                                Width="70%" />
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td style="width: 50%">
                                            UpdateBy:
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="UpdatedByTextBox2" runat="server" Enabled="False" Text='<%# Bind("UpdateBy") %>'
                                                Width="70%" />
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td style="width: 50%; height: 66px;">
                                            CurrentStatus:
                                        </td>
                                        <td style="width: 50%; height: 66px;">
                                            <asp:DropDownList ID="DDLStatus2" runat="server" DataSourceID="SqlDataSource2" DataTextField="StatusName"
                                                DataValueField="StatusID" SelectedValue='<%# Bind("CurrentStatus") %>' Width="70%">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dashbaordDBConnectionString %>"
                                                SelectCommand="SELECT * FROM [ReportStatus]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td colspan="2">
                                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                                                Text="Editer" CssClass="btn btn-primary"></asp:LinkButton>
                                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                                                Text="Nouveau rapport" CssClass="btn btn-success"></asp:LinkButton>
                                        </td>
                                    </tr>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=dashbaordDBEntities"
                        DefaultContainerName="dashbaordDBEntities" EnableFlattening="False" EntitySetName="Reports"
                        EnableInsert="True" EnableUpdate="True" OrderBy="it.UpdatedAt DESC,it.CreatedAt DESC" Include ="Module">
                    </asp:EntityDataSource>
                    <asp:QueryExtender ID="QueryExtender1" runat="server" TargetControlID="EntityDataSource1">
                        <asp:SearchExpression SearchType="Contains" DataFields="ReportName" ComparisonType="OrdinalIgnoreCase">
                            <asp:ControlParameter ControlID="NomDuRapporTextBox" />
                        </asp:SearchExpression>
                    </asp:QueryExtender>
                </div>
            </div>
        </div>
    </div>
    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">
                Listes des rapports postés</h3>
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
                    <table class="table table-bordered table-striped">
                        <tr>
                                                      <td>
                                Nom du rapport
                            </td>
                            <td>
                                <asp:TextBox ID="NomDuRapporTextBox" runat="server" Width="200px" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="EntityDataSource1" CssClass="table table-bordered table-hover"
                        AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True">
                        <Columns>
                            <asp:BoundField DataField="ReportName" HeaderText="ReportName" SortExpression="ReportName" />
                            <asp:BoundField DataField="Module.ModuleName" HeaderText="ModuleID" 
                                SortExpression="ModuleID" />
                            <asp:BoundField DataField="ServerName" HeaderText="ServerName" SortExpression="ServerName" />
                            <asp:BoundField DataField="ReportFileName" HeaderText="ReportFileName" SortExpression="ReportFileName" />
                            <asp:BoundField DataField="CreatedAt" HeaderText="CreatedAt" SortExpression="CreatedAt" />
                            <asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy" SortExpression="CreatedBy" />
                            <asp:TemplateField HeaderText="Actions">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" Text=" &lt;i 
    class=&quot;fa fa-eye&quot;&gt;&lt;/i&gt;"
                                        CssClass="btn btn-primary" ToolTip="Voir le rapport" 
                                        CommandArgument='<%# Eval("ReportID") %>' oncommand="EditButton_Command"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" Text="&lt;i 
    class=&quot;fa fa-comment-o&quot;&gt;&lt;/i&gt;"
                                        CssClass="btn btn-success" ToolTip="Comment et changer statut" 
                                        CommandArgument='<%# Eval("ReportID") %>' oncommand="NewButton_Command"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    
<asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:dashbaordDBConnectionString2 %>" 
                        SelectCommand="SELECT * FROM [DataManager]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
