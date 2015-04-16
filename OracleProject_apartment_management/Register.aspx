<%@ Page Title="" Language="C#" MasterPageFile="~/Apartment.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OracleProject.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="WaterMark.min.js" type="text/javascript"></script>--%>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 206px;
        }

        .auto-style3 {
            width: 206px;
            height: 22px;
        }

        .auto-style4 {
            height: 22px;
        }

        .auto-style5 {
            width: 163px;
        }

        .auto-style6 {
            height: 22px;
            color: #009933;
            width: 163px;
        }

        .auto-style7 {
            width: 206px;
            font-weight: normal;
            height: 26px;
        }

        .auto-style8 {
            width: 163px;
            height: 26px;
        }

        .auto-style9 {
            height: 26px;
        }
        .textbox {
            border: 3px solid gray;
            width: 368px;
            height: 20px;
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
    </style>

    <%--//////--%>

     
<script type="text/javascript">
    $(function () {
        $("[id*=TextBox1], [id*=TextBox2], [id*=TextBox3],[id*=TextBox7],[id*=TextBox4],[id*=TextBox8],[id*=TextBox5]").WaterMark();

        //To change the color of Watermark
        $("[id*=Email]").WaterMark(
        {
            WaterMarkTextColor: '#000'
        });
    });
</script>
    <script type="text/javascript">
        function clientValidate(sender, args) {
            if (args.Value.length < 3 ||args.Value.length > 20) {
                args.IsValid = false;
            }
        }
        </script>
   

    <script type="text/javascript">
        function passValidate(sender, args) {
            if (args.Value.length < 6 || args.Value.length > 20) {
                args.IsValid = false;
            }
        }
        </script>
    <script type="text/javascript">
        function fullnameValidate(sender, args) {
            if (args.Value.length < 3 || args.Value.length > 25) {
                args.IsValid = false;
            }
        }
        </script>
    

    <%--//////--%>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-family:Arial";>
        <fieldset id="fieldset">
            <legend>Register</legend>
            
            <table class="auto-style1" style="background-color:cornsilk">
                <tr>
                    <td class="auto-style7">UserName :</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox1" CssClass="textbox"  runat="server"  Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" ClientValidationFunction="clientValidate" Display="Dynamic" ErrorMessage="Min 3 to Max 20 characters" ForeColor="Red"></asp:CustomValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" TextMode="Password" ToolTip="At least 6 character long" Width="180px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator2" ControlToValidate="TextBox2" ClientValidationFunction="passValidate" runat="server" ErrorMessage="Min 6 to Max 20 characters" ForeColor="Red"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm Password :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" CssClass="textbox" runat="server" TextMode="Password" ToolTip="Enter Password" Width="180px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Confirmation Password Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Password Should Be Match" ForeColor="Red"></asp:CompareValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">FullName :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox7" CssClass="textbox" runat="server" ToolTip="Enter Fullname" Width="180px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox7" ErrorMessage="Fullname Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator3" runat="server" ClientValidationFunction="fullnameValidate" ControlToValidate="TextBox7" ErrorMessage="Min 6 to Max 20 characters" ForeColor="Red"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Email : </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox4" CssClass="textbox" runat="server" ToolTip="Enter Email" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Location :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox8" CssClass="textbox" runat="server" ToolTip="Enter Location" Width="180px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Contact No :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox5" CssClass="textbox" runat="server" ToolTip="Enter Contact" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="ContactNumber Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Date Of Birth :</td>
                    <td class="auto-style5">
                        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged1"></asp:Calendar>
                        <br />
                        <asp:TextBox ID="TextBox6" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            
        </fieldset>
    </div>
</asp:Content>
