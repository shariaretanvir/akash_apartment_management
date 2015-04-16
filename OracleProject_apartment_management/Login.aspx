<%@ Page Title="" Language="C#" MasterPageFile="~/Apartment.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OracleProject.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>

    <script src="WaterMark.min.js" type="text/javascript"></script>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }

        .auto-style3 {
            height: 22px;
        }

        .auto-style4 {
            height: 22px;
            width: 154px;
        }

        .auto-style5 {
            width: 154px;
        }

        .auto-style6 {
            height: 22px;
            width: 259px;
        }

        .auto-style7 {
            width: 259px;
        }
        .textbox {
            border: 3px solid gray;
            color: black;
            font-size: 14px;
            padding-left: 10px;
            border: 2px solid red;
            border-radius: 7px;
            font-size: 14px;
            padding: 5px;
            /*.textbox:focus;

        {
            outline: none;
            border-color: blue;
            box-shadow: 0 0 10px blue;
        }*/

        }

        .textbox:focus {
            outline: none;
            border-color: blue;
            box-shadow: 0 0 10px blue;
        }
        .auto-style8 {
            width: 154px;
            height: 34px;
        }
        .auto-style9 {
            width: 259px;
            height: 34px;
        }
        .auto-style10 {
            height: 34px;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            $("[id*=TextBox1], [id*=TextBox2]").WaterMark();

            //To change the color of Watermark
            $("[id*=Email]").WaterMark(
            {
                WaterMarkTextColor: '#000'
            });
        });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-family: Arial">
        <fieldset id="fieldset">
            <legend>Login</legend>
            <table class="auto-style2" style="background-color:cornsilk">
                <tr>
                    <td class="auto-style4"><span class="auto-style1">UserName</span> :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox1" CssClass="textbox" ToolTip="Enter Username" runat="server" Width="233px"></asp:TextBox>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style8">Password :</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox2" CssClass="textbox" ToolTip="Enter Password" runat="server" Width="234px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /></td>
                    <td class="auto-style7"></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style7"></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </fieldset>
    </div>
</asp:Content>
