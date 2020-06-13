﻿<%@ page language="C#" autoeventwireup="true" inherits="User_Pages_ChangeSkins, App_Web_jzrthtdl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>设置风格</title>
<link rel="stylesheet" type="text/css" href="../Skin/User_Main.css" />
<link rel="stylesheet" type="text/css" href="../Skin/user_user.css" />
</head>
<body>
<form id="form1" runat="server">
  <div class="us_topinfo">
    <div class="us_showinfo">
      您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank">
        <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label>
        </a></span><span> &gt;&gt; </span><span><a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a></span><span> &gt;&gt; </span><span><a title="信息管理" href="Default.aspx">企业黄页</a></span></span>
    </div>
    <div class="cleardiv"> </div>
  </div>
  <div id="regpage" class="us_seta" style="margin-top: 10px;">
    <h1 style="text-align: center"> <span id="Label2">设置黄页风格</span></h1>
    <ul style="float:left; width:100%">
      <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
          <li style="width: 33%; float: left; text-align: center;">
            <table width="50%" height="120">
              <tr>
                <td><img src="../../<%#Eval("ShowImg") %>" width="60px" height="60px" /></td>
              </tr>
              <tr>
                <td><input id="Styleid<%#Eval("id")%>" value="<%#Eval("id")%>" name="Styleid" type="radio" <%#styleid(Eval("id","{0}")) %> />
                  <label for="Styleid<%#Eval("id")%>"><%#Eval("Stylename")%></label></td>
              </tr>
            </table>
          </li>
        </ItemTemplate>
      </asp:Repeater>
    </ul>
    <li style="width: 100%; float: left; line-height: 30px; text-align:center">
      <asp:Button ID="Button1" runat="server" Text="设置保存" onclick="Button1_Click" />
    </li>
    <li style="width: 100%; float: left; line-height: 30px"></li>
  </div>
</form>
</body>
</html>
