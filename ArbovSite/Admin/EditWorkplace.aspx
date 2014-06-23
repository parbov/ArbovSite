<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditWorkplace.aspx.cs" Inherits="ArbovSite.Admin.EditWorkplace" %>
<asp:Content ID="ContentEditWorkplace" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Edit Workplace</h1>

    <asp:TextBox ID="TextBoxCompany" runat="server" />
    <asp:LinkButton ID="LinkButtonSaveWorkplace" Text="Save" runat="server" OnClick="LinkButtonSaveWorkplace_Click" />

    <ul>
        <asp:Repeater ID="RepeaterProjects" runat="server" ItemType="ArbovSite.Models.Project">
            <ItemTemplate>
            <li>
                <%#: Item.Name %>
                <a href="EditProject.aspx?id=<%# Item.ProjectID %>">Edit..</a>
                <asp:LinkButton Text="Delete Project" runat="server" CommandName="Delete" CommandArgument="<%# Item.ProjectID %>" />
                <a href="EditProject.aspx?workplaceID=<%# Item.ProjectID %>">Delete</a>
            </li>

            </ItemTemplate>
        </asp:Repeater>
    </ul>

</asp:Content>
