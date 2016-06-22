<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/SiteMaster2.Master"
    CodeBehind="Module.aspx.vb" Inherits="GestionnaireRapport._Module" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">
                Ajouter/Modifier Module</h3>
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
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="EntityDataSource1" Width="100%">
                        <EditItemTemplate>
                            <table class="table table-bordered table-hover" style="width: 70%; margin: auto">
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Module ID
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ReportID" runat="server" Text='<%# Bind("ModuleID") %>' Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Nom du Module:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ModuleNameTextBox" runat="server" Text='<%# Bind("ModuleName") %>' />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Description du Module:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ModuleDescTextBox" runat="server" Text='<%# Bind("ModuleDesc") %>'
                                            TextMode="MultiLine" Width="489px" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Crée le :
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="CreatedAtTextBox" runat="server" Text='<%# Bind("CreatedAt") %>'
                                            Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Crée par :
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="CreatedByTextBox" runat="server" Text='<%# Bind("CreatedBy") %>'
                                            Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Data Manager associé:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:DropDownList ID="DDLDataManager" runat="server" DataSourceID="SqlDataSource1"
                                            DataTextField="FULLNAME" DataValueField="DMCardID" Height="25px" Width="255px"
                                            CssClass="l" SelectedValue='<%# Bind("DMCardID") %>'>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dashbaordDBConnectionString %>"
                                            SelectCommand="SELECT [DMCardID]
       ,[DMFirstName] + ''+[DMLastName] as FULLNAME
         
FROM [dashbaordDB].[dbo].[DataManager]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%; height: 43px;">
                                        Modifié le:
                                    </td>
                                    <td style="width: 50%; height: 43px;">
                                        <asp:TextBox ID="UpdatedAtTextBox" runat="server" Text='<%# Bind("UpdatedAt") %>'
                                            Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Modifié par:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="UpdatedByTextBox" runat="server" Text='<%# Bind("UpdateBy") %>' Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td colspan="2">
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                                            Text="Ajouter" CssClass="btn btn-primary" />
                                        &nbsp; &nbsp; &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                                            CommandName="Cancel" Text="Annuler" CssClass="btn btn-danger" />
                                    </td>
                                </tr>
                            </table>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <table class="table table-bordered table-hover" style="width: 70%; margin: auto">
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Nom du Module:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ModuleNameTextBox1" runat="server" Text='<%# Bind("ModuleName") %>' />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Description du Module:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ModuleDescTextBox1" runat="server" Text='<%# Bind("ModuleDesc") %>'
                                            TextMode="MultiLine" Width="489px" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Crée le :
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="CreatedAtTextBox1" runat="server" Text='<%# Bind("CreatedAt") %>'
                                            Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Crée par :
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="CreatedByTextBox1" runat="server" Text='<%# Bind("CreatedBy") %>'
                                            Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Data Manager associé:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:DropDownList ID="DDLDataManager1" runat="server" DataSourceID="SqlDataSource1"
                                            DataTextField="FULLNAME" DataValueField="DMCardID" Height="30px" Width="255px"
                                            CssClass="footer" SelectedValue='<%# Bind("DMCardID") %>'>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dashbaordDBConnectionString %>"
                                            SelectCommand="SELECT [DMCardID]
       ,[DMFirstName] + ''+[DMLastName] as FULLNAME
         
FROM [dashbaordDB].[dbo].[DataManager]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Modifié le:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="UpdatedAtTextBox1" runat="server" Text='<%# Bind("UpdatedAt") %>'
                                            Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Modifié par:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="UpdatedByTextBox1" runat="server" Text='<%# Bind("UpdateBy") %>' Enabled="False" />
                                    </td>
                                </tr>
                               
                                <tr>
                                    <td colspan="2">
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                                            CssClass="btn btn-primary" Text="Ajouter" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                                            CommandName="Cancel" CssClass="btn btn-danger" Text="Annuler" />
                                    </td>
                                </tr>
                            </table>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <table class="table table-bordered table-hover" style="width: 70%; margin: auto">
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Module ID
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ModuleID2" runat="server" Text='<%# Bind("ModuleID") %>' Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Nom du Module:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ModuleNameTextBox2" runat="server" 
                                            Text='<%# Bind("ModuleName") %>' Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Description du Module:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="ModuleDescTextBox2" runat="server" Text='<%# Bind("ModuleDesc") %>'
                                            TextMode="MultiLine" Width="489px" Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Crée le :
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="CreatedAtTextBox2" runat="server" Text='<%# Bind("CreatedAt") %>'
                                            Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Crée par :
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="CreatedByTextBox2" runat="server" Text='<%# Bind("CreatedBy") %>'
                                            Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Data Manager associé:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:DropDownList ID="DDLDataManager2" runat="server" DataSourceID="SqlDataSource1"
                                            DataTextField="FULLNAME" DataValueField="DMCardID" Height="25px" Width="255px"
                                            CssClass="l" SelectedValue='<%# Bind("DMCardID") %>' Enabled="False">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dashbaordDBConnectionString %>"
                                            SelectCommand="SELECT [DMCardID]
       ,[DMFirstName] + ''+[DMLastName] as FULLNAME
         
FROM [dashbaordDB].[dbo].[DataManager]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Modifié le:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="UpdatedAtTextBox2" runat="server" Text='<%# Bind("UpdatedAt") %>'
                                            Enabled="False" />
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 50%">
                                        Modifié par:
                                    </td>
                                    <td style="width: 50%">
                                        <asp:TextBox ID="UpdateByTextBox2" runat="server" Text='<%# Bind("UpdateBy") %>' Enabled="False" />
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
                            </table>
                        </ItemTemplate>
                    </asp:FormView>
                </div>
            </div>
        </div>
    </div>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=dashbaordDBEntities"
        DefaultContainerName="dashbaordDBEntities" EnableFlattening="False" EntitySetName="Modules"
        EnableInsert="True" EnableUpdate="True" EntityTypeFilter="Module">
    </asp:EntityDataSource>
    <asp:QueryExtender ID="QueryExtender1" runat="server" TargetControlID="EntityDataSource1">
        <asp:SearchExpression SearchType="Contains" DataFields="ModuleName" ComparisonType="OrdinalIgnoreCase">
            <asp:ControlParameter ControlID="ModuleIDTextSearch" />
        </asp:SearchExpression>
    </asp:QueryExtender>
    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">
                Liste des modules</h3>
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
                                <asp:TextBox ID="ModuleIDTextSearch" runat="server" Width="221px" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="EntityDataSource1"
                        Width="100%" class="table table-bordered table-striped">
                        <Columns>
                            <asp:BoundField DataField="ModuleName" HeaderText="ModuleName" SortExpression="ModuleName" />
                            <asp:BoundField DataField="ModuleDesc" HeaderText="ModuleDesc" SortExpression="ModuleDesc" />
                            <asp:BoundField DataField="CreatedAt" HeaderText="CreatedAt" SortExpression="CreatedAt" />
                            <asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy" SortExpression="CreatedBy" />
                            <asp:BoundField DataField="DMCardID" HeaderText="DMCardID" SortExpression="DMCardID" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
