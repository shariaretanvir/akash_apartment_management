<%@ Page Title="" Language="C#" MasterPageFile="~/Apartment.Master" AutoEventWireup="true" CodeBehind="ShowYourAds.aspx.cs" Inherits="OracleProject.ShowYourAds_aspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Apartment ID "></asp:Label>
    <%--<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
 --%>   
    <br />
    Delete Your Ad : Insert Your APP_ID :
    <asp:DropDownList ID="DropDownList1" DataTextField="APP_ID" DataValueField="APP_ID" runat="server">
    </asp:DropDownList>
&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" style="width: 55px" />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Edit" />
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" >
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
</asp:Content>
