<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.Manage.AddOn.ShowJSCode, App_Web_0f1xyepu" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>预览JS代码</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" /> 
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 扩展功能 &gt;&gt; <a href="ADZoneManage.aspx">广告管理</a></div> 
<div class="spacingtitle">版位JS调用代码</div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
	<tr class="tdbgleft">
		<td align="center">
		<span style="color:Green">调用方法：将下面的代码插入到网页中预定的广告位置</span></td>
	</tr>
	<tr class="tdbg">
		<td align="center" style="height: 27px">
			<asp:TextBox ID="TxtZoneCode" runat="server" TextMode="MultiLine" class="x_input" style="Width:578px;Height:102px;"></asp:TextBox>
		</td>
	</tr>
	<tr class="tdbg">
		<td align="center">
			<input id="Button1" type="button" onclick="location.href='ADZoneManage.aspx';" value="返回列表" class="C_input" /></td>
	</tr>
</table>
</form>
</body>
</html>
