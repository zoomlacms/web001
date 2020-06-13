﻿<%@ page language="C#" autoeventwireup="true" inherits="User_PrintServer_ImageList, App_Web_szk3nv0r" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的作品</title>
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
</head>
<body>
<form id="form1" runat="server">
  <!-- str -->
  <div class="us_topinfo">
    <div class="us_showinfo">
      <span class="us_showinfo1">您现在的位置：<span><a title="网站首页" href="/" target="_blank">
        <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label>
        </a></span><span> &gt;&gt; </span><span><a title="会员中心" href='/User/MyInfo.aspx' target="_parent" >会员中心</a></span> &gt;&gt; <span>我的作品</span>
    </div>
    <div class="cleardiv"> </div>
  </div>
  <table cellpadding="0" cellspacing="0" border="0" width="100%">
    <tr>
      <td align="center"><asp:DataList ID="dlPic" runat="server" DataKeyField="P_ID" RepeatColumns="4" Width="100%">
          <ItemTemplate>
            <table cellpadding="2" cellspacing="0" border="1">
              <tr>
                <td><a href='ShowImage.aspx?PID=<%#Eval("P_ID") %>'><img src='<%#DataBinder.Eval(Container.DataItem, "P_PrintUrl")%>'  width="160PX" /></a></td>
              </tr>
            </table>
          </ItemTemplate>
        </asp:DataList></td>
    </tr>
    <tr class="tdbg">
      <td align="center"> 共 
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        &nbsp;
        <asp:Label ID="Toppage" runat="server" Text=""></asp:Label>
        <asp:Label ID="Nextpage" runat="server" Text=""></asp:Label>
        <asp:Label ID="Downpage" runat="server" Text=""></asp:Label>
        <asp:Label ID="Endpage" runat="server" Text=""></asp:Label>
        页次：
        <asp:Label ID="Nowpage" runat="server" Text=""></asp:Label>
        /
        <asp:Label ID="PageSize" runat="server" Text=""></asp:Label>
        页
        <asp:Label ID="pagess" runat="server" Text=""></asp:Label>
        个/页 转到第
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"> </asp:DropDownList>
        页 </td>
    </tr>
  </table>
</form>
</body>
</html>
