<%@ page language="C#" autoeventwireup="true" inherits="manage_Config_Sql, App_Web_24osmk5a" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>执行SQL语句</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/boxy.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/jquery.boxy.js"></script>
<script> 
window.onload=function()
{
	Boxy.confirm("此操作涉及系统关键数据库，操作不当可能造成数据丢失，请先行备份并具备非常丰富的开发经验者操作。");
	}
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;扩展功能&gt;&gt;数据维护&gt;&gt;执行SQL语句</span></div>
<div class="spacingtitle">执行SQL语句</div>
<table style="width: 100%;" cellpadding="2" cellspacing="1" class="border">
<tr class="tdbg">
    <td colspan="2">
    <div style="margin:5px;">
    输入您要执行SQL语句：<br/>
    <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" TextMode="MultiLine" CssClass="x_input" style="width:780px;height:170px;"></asp:TextBox>
    <div class="clear"></div>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="执行SQL语句" class="C_input" />
 <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="清空内容" class="C_input" />

    <div id="RunOK" runat="server"></div>
    <div id="Error" runat="server" style="color:Red;"></div>
    </div>
   </td>
</tr>
</table>
</form>
</body>
</html>