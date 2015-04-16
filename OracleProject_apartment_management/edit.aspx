<%@ Page Title="" Language="C#" MasterPageFile="~/Apartment.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="OracleProject.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="Label2" runat="server" Text="Apartment ID : "></asp:Label>

    &nbsp;<asp:Label ID="Label1" runat="server" Text="Apartment ID :"></asp:Label>

    <br />
    APP_TYPE :
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    APP_SIZE :<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

    <br />
    APP_DATE :
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

    <br />
    PRICE :
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    No of Rooms :<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br />
    Feature :
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" />

</asp:Content>

