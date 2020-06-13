﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_Space_AddTemplate, App_Web_b23wmswg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>添加模板</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; 空间管理 &gt;&gt; <span><a href="AgioProject.aspx">
            模板管理</a></span> &gt;&gt; <span>
                    添加模板</span></div>
    <div class="clearbox">
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                模板信息
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" align="right" style="width: 24%">
                <strong>模板名称：</strong>
            </td>
            <td width="76%" valign="middle">
                <asp:TextBox ID="TextBox1" runat="server" Width="273px" class="l_input"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" align="right" style="width: 24%" valign="top">
                <strong>模板分类：</strong>
            </td>
            <td height="22" valign="middle">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" style="width: 24%" align="right" valign="top">
                <strong>模板内容：</strong>
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
