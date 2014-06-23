<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditWorkPlaces.aspx.cs" Inherits="ArbovSite.Admin.EditWorkPlaces" %>
<asp:Content ID="ContentEditWorkPlaces" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridViewWorkplaces" runat="server" AutoGenerateColumns="False"
        DataKeyNames="id" SelectMethod="GridViewWorkplaces_GetData">   
        <Columns>

            <asp:BoundField DataField="company" HeaderText="Company" />
            <asp:BoundField DataField="position" HeaderText="Position" />
            <asp:BoundField DataField="start" HeaderText="Start" />
            <asp:BoundField DataField="finish" HeaderText="Finish" />
            <asp:HyperLinkField Text="Edit" HeaderText="Action" DataNavigateUrlFields="id" 
                DataNavigateUrlFormatString="EditWorkplace.aspx?workplaceID={0}" />

        </Columns>
    </asp:GridView>
   

    

</asp:Content>
