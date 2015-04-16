<%@ Page Title="" Language="C#" MasterPageFile="~/Apartment.Master" AutoEventWireup="true" CodeBehind="Address.aspx.cs" Inherits="OracleProject.Address" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 215px;
        }
        .auto-style7 {
            width: 249px;
        }
        .auto-style8 {
            width: 215px;
            height: 23px;
        }
        .auto-style9 {
            width: 249px;
            height: 23px;
        }
        .auto-style10 {
            height: 23px;
        }
        .auto-style11 {
            width: 215px;
            height: 26px;
        }
        .auto-style12 {
            width: 249px;
            height: 26px;
        }
        .auto-style13 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3>Give Address Of Your Appartment</h3>
    <table class="auto-style5">
        <tr>
            <td class="auto-style11">Your Name </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style11">Appartment Name </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBoxAppName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style6">Floor Number</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBoxFloor" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">Road</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBoxRoad" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style8">APP_ADD</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBoxAppArea" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style6">Area Name</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBoxCity" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">City</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBoxCountry" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        
</asp:Content>
