﻿<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.SpecTree, App_Web_eslo4wtw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>专题内容管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<script>
    function OpenLink(lefturl, righturl) {
        if (lefturl != "") {
            parent.frames["left"].location = lefturl;
        }
        try {
            parent.MDIOpen(righturl); return false;
        } catch (Error) {
            parent.frames["main_right"].location = righturl;
        }
    }

    function gotourl(url) {
        try {
            parent.MDILoadurl(url); void (0);
        } catch (Error) {
            parent.frames["main_right"].location = "../" + url; void (0);
        }
    }
    </script>
</script>
<body id="Guidebody" style="margin: 0px; margin-top: 1px;">
    <form id="formGuide" runat="server">
    <div id="Guide_back">
        <ul>
            <li id="Guide_top">
                <div id="Guide_toptext">专题内容管理</div>
            </li>
            <li id="Guide_main">
                <div id="Guide_box">
                    <asp:TreeView ID="tvNav" runat="server" ExpandDepth="0" ShowLines="True" EnableViewState="False" NodeIndent="10" LineImagesFolder="~/Images/TreeLineImages">
                        <NodeStyle BorderStyle="None" />
                    </asp:TreeView>
                </div>
            </li>
        </ul>
    </div>
    </form>
</body>
</html>