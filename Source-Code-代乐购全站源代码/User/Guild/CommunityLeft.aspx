<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_CommunityLeft, App_Web_34fgmwhu" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>互动功能导航</title>
<link href="../../App_Themes/UserThem/user.css"rel="stylesheet" type="text/css" />
<script src="../../JS/jquery.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript" src="../../JS/UserDefault.js"></script>
</head>
<body  class="user_left">
<div class="left_font" onclick="usershow('#td1','#span1')" >
 <span id="span1" class="imgbgover img_icon" onclick="usershow('#td1','#span1')" ></span>
社区互动</div>
<ul id="td1"  class="tabtr">
<li> <a href="../UserZone/Default.aspx" target="main_right">我的空间</a></li>
<li> <a href="../Guild/Default.aspx" target="main_right">游戏公会</a></li>
<li><a href="../Guild/Zone/Default.aspx" target="main_right">公会个人空间</a></li>
<li>  <a href="../Guild/UserQuestFriend.aspx" target="main_right" >找朋友</a></li>
<li>  <a href="../Survey/SurveyAll.aspx" target="main_right" >问卷投票</a></li>
<li>  <a href="../UserZone/Cut/List.aspx" target="main_right" >网页剪刀</a></li>
</ul>

<div class="left_font" onclick="usershow('#td2','#span2')" > 
<span id="span2" class="imgbgout img_icon" onclick="usershow('#td2','#span2')" ></span>
聊天系统</div>
<ul id="td2"  class="tabtr">
<li><a href="javascript:void(0);" onClick="window.open('/user/Usertalk/TalkIndex.aspx?'+Math.random(), 'newwindow', 'height=730, width=1028, top=0, left=0, toolbar=no, menubar=no, scrollbars=no,resizable=no,location=no, status=no');" >在线聊天</a>
</li>
</ul> 
</body>
</html>