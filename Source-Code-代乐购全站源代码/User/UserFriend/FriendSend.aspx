﻿<%@ page language="C#" autoeventwireup="true" inherits="User_UserFriend_FriendSend, App_Web_f1iyhkjt" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../UserZone/WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<%@ Register Src="../UserFriend/WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc3" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>好友</title>
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript">
    function CheckAll(spanChk)//CheckBox全选
    {
        var oItem = spanChk.children;
        var theBox=(spanChk.type=="checkbox")?spanChk:spanChk.children.item[0];
        xState=theBox.checked;
        elm=theBox.form.elements;
        for(i=0;i<elm.length;i++)
        if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
        {
            if(elm[i].checked!=xState)
            elm[i].click();
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
    <div style="margin: auto; width: 100%">
    <div class="us_topinfo">
        <div class="us_pynews">
			您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank"><asp:Label
				ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt;
				</span><span><a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a></span><span>
					&gt;&gt; </span><span><a title="我的好友" href="/User/UserFriend/Default.aspx">我的好友</a></span></span>&gt;&gt;我的好友
                    
            </div>
            <div class="cleardiv">
            </div>
        </div>
        <uc1:WebUserControlTop ID="WebUserControlTop2" runat="server" />
        <uc3:WebUserControlTop ID="WebUserControlTop1" runat="server" />
        <br />
        <div class="us_topinfo" style="overflow: hidden; width: 98%">
            <ul>
            <li style="width: 100%; float: left; ">把下面的链接发送给你的好友:<br />
                <br />
                &nbsp; &nbsp; &nbsp;<%=Url %>
            </li>
            </ul>
        </div>
     </div>
</form>
</body>
</html>