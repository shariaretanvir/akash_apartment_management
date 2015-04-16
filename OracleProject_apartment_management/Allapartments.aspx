<%@ Page Title="" Language="C#" MasterPageFile="~/Apartment.Master" AutoEventWireup="true" CodeBehind="Allapartments.aspx.cs" Inherits="OracleProject.Allapartments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        width: 209px;
    }
    .auto-style4 {
        width: 261px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-family:Arial">
        <fieldset id="fieldset">
            <legend>Apartments Ad</legend>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">Apartment Type :</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBoxAType" runat="server" Width="119px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Apartment Size :</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBoxASize" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Apartment Date :</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBoxAdate" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Price :</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBoxAprice" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">No. of Rooms :</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBoxAroom" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Feature :</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBoxAfeature" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </fieldset>
    </div>
</asp:Content>
