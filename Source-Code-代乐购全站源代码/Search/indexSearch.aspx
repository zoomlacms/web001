<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.indexSearch, App_Web_avwsx2yw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html runat="server">
<head id="Head1">
<title>搜索结果</title>
<link rel="stylesheet" type="text/css" href="../user/skin/user_user.css" />
<script language="javascript">
    function setEmpty(obj) {
        if (obj.value == "冬装新品") {
            obj.value = "";
        }
    }
    function settxt(obj) {
        if (obj.value == "") {
            obj.value = "冬装新品";
        }
    }
</script>
</head>
<body runat="server">
<form runat="server" id="myform" style="background:none">
<div id="Div1" runat="server" style="float: left;">
        <div style="display:none"><asp:DropDownList ID="DDLNode" runat="server" Width="100px">
        </asp:DropDownList></div>
        <asp:TextBox ID="TxtKeyword" runat="server" style="float:left; width:116px; height:15px;_height:13px; line-height:15px;_line-height:13px; margin-left:24px;_margin-left:36px; margin-top:2px; border:none;" onclick="setEmpty(this)" onblur="settxt(this)" Text="冬装新品"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text=" "  OnClick="btnSearch_Click" />
    </div>
</form>
<style>
#btnSearch{width:50px;_width:30px; height:20px; background:none; border:none; cursor:pointer;}
</style>
</body>
</html>