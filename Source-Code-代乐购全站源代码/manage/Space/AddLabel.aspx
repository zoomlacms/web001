﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_Space_AddLabel, App_Web_b23wmswg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加标签</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 空间管理 &gt;&gt; <a href="AgioProject.aspx">标签管理</a> &gt;&gt;添加标签</div>
<table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
    <tr align="center">
        <td colspan="2" class="spacingtitle">
            标签信息
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" align="right" style="width: 24%">
            <strong>标签名称：</strong>
        </td>
        <td width="76%" valign="middle">

            <asp:TextBox ID="TextBox2" runat="server" Width="270px" class="l_input"></asp:TextBox>

        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" align="right" style="width: 24%" valign="top">
            <strong>标签分类：</strong>
        </td>
        <td height="22" valign="middle">
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            <br />
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 24%" align="right" valign="top">
            <strong>标签内容：</strong>
        </td>
        <td height="22" valign="middle">
            &nbsp;</td>
    </tr>
    <tr class="tdbg">
        <td height="22" colspan="5" align="center" class="tdbgleft">
            <asp:Button ID="Button4" runat="server" Text="提  交" class="C_input"/>&nbsp;
            &nbsp; &nbsp;<input id="Button5" type="button" value="返  回" onclick="javascript:window.history.go(-1);" class="C_input"/>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
        </td>
    </tr>
</table>
</form>
</body>
</html>
