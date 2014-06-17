<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CV.aspx.cs" Inherits="ArbovSite.CV" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:ListView ID="ListViewWorkPlaces" runat="server" ItemType="ArbovSite.Models.Workplace">
        <LayoutTemplate>
            <div id="itemPlaceHolder" runat="server">


            </div>

        </LayoutTemplate>
        
        <ItemTemplate>
            <div class="work-place">
                <%#: Item.company %>
                <%#: Item.start %> - <%#: Item.finish %>
                <ul><asp:Repeater runat="server" DataSource="<%# Item.Projects %>" ItemType="ArbovSite.Models.Project">
                    <ItemTemplate> 
                        <li><%#: Item.Name %></li>
                    </ItemTemplate>
                </asp:Repeater>

                </ul>
            </div>
        </ItemTemplate>
    </asp:ListView>

</asp:Content>
