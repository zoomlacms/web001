﻿<%@ page language="C#" autoeventwireup="true" inherits="FreeHome.Shop.ProductBuy, App_Web_p14pdize" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>我的空间</title>
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td align="center" rowspan="2">
                    &nbsp;<asp:Image ID="PicImage" runat="server" />
                </td>
                <td>
                    &nbsp;<asp:Label ID="Namelabel" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 18px">
                    价格：<asp:Label ID="pricelabel" runat="server" Text="Label"></asp:Label>(30天使用期限)
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;<asp:Button ID="BuyBtn" runat="server" Text="确定购买" OnClick="BuyBtn_Click" />
                    <asp:Button ID="resetbtn" runat="server" Text="取消" OnClientClick='window.parent.hidePopWin(true);' />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
