<%@ Page Title="" Language="C#" MasterPageFile="~/Apartment.Master" AutoEventWireup="true" CodeBehind="ShowAllApartments.aspx.cs" Inherits="OracleProject.ShowAllApartments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <%--<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="HR" DataTextField="APP_TYPE" DataValueField="APP_TYPE" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
       
    </asp:DropDownList>--%>
    <%--<asp:SqlDataSource ID="HR" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;APP_TYPE&quot; FROM &quot;APARTMENT&quot;"></asp:SqlDataSource>--%>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="APP_TYPE" DataValueField="APP_TYPE" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Size Range :&nbsp;
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;to
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Price Range :
<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
to
<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" />
    <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <br />
    <br />
    <br />
</asp:Content>
