<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test1.aspx.cs" Inherits="OracleProject.test1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>TextBox WaterMark</title>
    <script type="text/javascript"
        src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js">
    </script>  
   
    <style type="text/css">
    .water
    {
         font-family: Tahoma, Arial, sans-serif;
         color:gray;
    }
    </style>
   
    <script type="text/javascript">
        $(function () {

            $(".water").each(function () {
                $tb = $(this);
                if ($tb.val() != this.title) {
                    $tb.removeClass("water");
                }
            });

            $(".water").focus(function () {
                $tb = $(this);
                if ($tb.val() == this.title) {
                    $tb.val("");
                    $tb.removeClass("water");
                }
            });

            $(".water").blur(function () {
                $tb = $(this);
                if ($.trim($tb.val()) == "") {
                    $tb.val(this.title);
                    $tb.addClass("water");
                }
            });
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="smallDiv">
     <h2>TextBox Watermark Demonstration</h2>    <br />          
        <asp:TextBox ID="txtFNm" class="water" Text="Type your First Name"
        Tooltip="Type your First Name" runat="server"></asp:TextBox><br />
        <asp:TextBox ID="txtLNm" class="water" Text="Type your Last Name"
        Tooltip="Type your Last Name" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
        <br /><br />
        Tip: Click on the TextBox to start typing. The watermark
        text disappears.
    </div>
    </form>
</body>
</html>