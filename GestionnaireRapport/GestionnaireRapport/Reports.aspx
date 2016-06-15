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
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="EntityDataSource1" DefaultMode="Insert"
                        CssClass="col-md-12">
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
                                        <asp:DropDownList ID="DDLModuleID" runat="server" DataSourceID="SqlDataSource1"
                                            DataTextField="ModuleName" DataValueField="ModuleID" Height="16px" 
                                            Width="147px" SelectedValue='<%# Bind("ModuleID") %>'>
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
                                            <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Text='<%# Bind("UpdateBy") %>'
                                                Width="70%" />
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td style="width: 50%">
                                            CurrentStatus:
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="CurrentStatusTextBox" runat="server" Text='<%# Bind("CurrentStatus") %>'
                                                ReadOnly="True" Width="70%" />
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td colspan="2">
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                                                CssClass="btn btn-primary" Text="Update" />
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
                                       <asp:DropDownList ID="DDLModuleID" runat="server" DataSourceID="SqlDataSource2"
                                            DataTextField="ModuleName" DataValueField="ModuleID" Height="16px" 
                                            Width="147px" SelectedValue='<%# Bind("ModuleID") %>'>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dashbaordDBConnectionString %>"
                                            SelectCommand="SELECT * FROM [Module]"></asp:SqlDataSource>
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
                                            Height="42px" TextMode="MultiLine" Width="100%" />
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
                                            <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Text='<%# Bind("UpdateBy") %>'
                                                Width="70%" />
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td style="width: 50%">
                                            CurrentStatus:
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="CurrentStatusTextBox" runat="server" Text='<%# Bind("CurrentStatus") %>'
                                                ReadOnly="True" Width="70%" />
                                        </td>
                                    </tr>
                                    <tr style="width: 100%">
                                        <td colspan="2">
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                                                Text="Insert" CssClass="btn btn-primary" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                                                CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger" />
                                        </td>
                                    </tr>
                                </tr>
                            </table>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            ModuleID:
                            <asp:Label ID="ModuleIDLabel" runat="server" Text='<%# Bind("ModuleID") %>' />
                            <br />
                            ReportName:
                            <asp:Label ID="ReportNameLabel" runat="server" Text='<%# Bind("ReportName") %>' />
                            <br />
                            ReportDesc:
                            <asp:Label ID="ReportDescLabel" runat="server" Text='<%# Bind("ReportDesc") %>' />
                            <br />
                            ServerName:
                            <asp:Label ID="ServerNameLabel" runat="server" Text='<%# Bind("ServerName") %>' />
                            <br />
                            ServerPath:
                            <asp:Label ID="ServerPathLabel" runat="server" Text='<%# Bind("ServerPath") %>' />
                            <br />
                            FolderPath:
                            <asp:Label ID="FolderPathLabel" runat="server" Text='<%# Bind("FolderPath") %>' />
                            <br />
                            ReportFileName:
                            <asp:Label ID="ReportFileNameLabel" runat="server" Text='<%# Bind("ReportFileName") %>' />
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
                            CurrentStatus:
                            <asp:Label ID="CurrentStatusLabel" runat="server" Text='<%# Bind("CurrentStatus") %>' />
                            <br />
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=dashbaordDBEntities"
                        DefaultContainerName="dashbaordDBEntities" EnableFlattening="False" EntitySetName="Reports"
                        EnableInsert="True" EnableUpdate="True">
                    </asp:EntityDataSource>
                    <asp:QueryExtender ID="QueryExtender1" runat="server" TargetControlID="EntityDataSource1">
                        <asp:PropertyExpression>
                            <asp:ControlParameter ControlID="DDLSearchModule" Name="ModuleID" PropertyName="SelectedValue"
                                Type="Int32" />
                            <asp:ControlParameter ControlID="DDLSearchReport" Name="ReportID" PropertyName="SelectedValue"
                                Type="Int32" />
                        </asp:PropertyExpression>
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
                                Nom du module
                            </td>
                            <td>
                                <asp:DropDownList ID="DDLSearchModule" runat="server" DataSourceID="SqlDataSource3"
                                    DataTextField="ModuleName" DataValueField="ModuleID" Height="26px" Width="186px"
                                    AutoPostBack="True">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dashbaordDBConnectionString %>"
                                    SelectCommand="SELECT * FROM [Module]"></asp:SqlDataSource>
                            </td>
                            <td>
                                Nom du rapport
                            </td>
                            <td>
                                <asp:DropDownList ID="DDLSearchReport" runat="server" DataSourceID="SqlDataSource4"
                                    DataTextField="ReportName" DataValueField="ReportID" Height="26px" Width="186px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dashbaordDBConnectionString %>"
                                    SelectCommand="SELECT * FROM [Reports] WHERE (([ModuleID] = @ModuleID))">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DDLSearchModule" Name="ModuleID" PropertyName="SelectedValue"
                                            Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="EntityDataSource1" CssClass="table table-bordered table-hover"
                        AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="ReportName" HeaderText="ReportName" SortExpression="ReportName" />
                            <asp:BoundField DataField="ServerName" HeaderText="ServerName" SortExpression="ServerName" />
                            <asp:BoundField DataField="ServerPath" HeaderText="ServerPath" SortExpression="ServerPath" />
                            <asp:BoundField DataField="ReportFileName" HeaderText="ReportFileName" SortExpression="ReportFileName" />
                            <asp:BoundField DataField="CreatedAt" HeaderText="CreatedAt" SortExpression="CreatedAt" />
                            <asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy" SortExpression="CreatedBy" />
                            <asp:TemplateField HeaderText="Actions">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" ToolTip="voir le rapport">LinkButton</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton3" runat="server">LinkButton</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
