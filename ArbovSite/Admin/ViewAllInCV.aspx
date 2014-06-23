<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewAllInCV.aspx.cs" Inherits="ArbovSite.ViewAllInCV" %>


<asp:Content ID="ContentViewAll" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">   
        <AlternatingRowStyle BackColor="White" />
        <Columns>

            <asp:BoundField DataField="company" HeaderText="Company" />
            <asp:BoundField DataField="position" HeaderText="Position" />
            <asp:BoundField DataField="start" HeaderText="Start" />
            <asp:BoundField DataField="finish" HeaderText="Finish" />
            <asp:HyperLinkField DataNavigateUrlFields="id" Text="Edit" />

        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>

</asp:Content>

