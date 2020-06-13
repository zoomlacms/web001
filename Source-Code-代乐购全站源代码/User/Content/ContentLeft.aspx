 <%@ page language="C#" autoeventwireup="true" inherits="User_Left, App_Web_wgtylnoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>功能导航</title>
<link href="../../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script src="../../JS/jquery.js" type="text/javascript"></script>
<script src="../../js/UserDefault.js" type="text/javascript"></script>
</head>
<body class="user_left">  
<div class="left_font" onclick="usershow('#td1','#span1')" >
<span id="span1" class="imgbgover img_icon" onclick=" usershow('#td1','#span1')" ></span>
常规管理</div>
<ul id="td1" class="tabtr">
<li><a href="../Content/Default.aspx?t=1"target="main_right">投稿管理</a></li>
<li> <a href="../../manage/AddOn/ProjectsList.aspx" target="main_right">项目列表</a></li>
<li><a href="../../manage/AddOn/UserAddProjects.aspx"target="main_right">添加项目</a></li>
<li><a href="../../user/iServer/FiServer.aspx"target="main_right" >有问必答</a></li>
</ul>

<div class="left_font"  onclick="usershow('#td2','#span2')" >
<span id="span2" class="imgbgout img_icon" onclick=" usershow('#td2','#span2')" ></span> 
人才招聘</div>
<ul id="td2" class="tabtr">
<li> <a href="../../Jobs/ExamineeList.aspx" target="main_right">面试通知</a></li>
<li><a href="../../CN/nite/Content/PositionManage.aspx"target="main_right">职位管理</a></li>
<li><a href="../../CN/nite/Content/ResumeManage.aspx"target="main_right">简历管理</a></li>
<li><asp:Literal ID="lt_src" runat="server" Text="视频房间申请"></asp:Literal></li>
<li> <a href="../../CN/nite/Content/CompanyHouseManage.aspx" target="main_right" >视频房间管理</a></li>
<li><a href="../../CN/nite/Content/VideoManage.aspx"target="main_right" >企业视频</a></li>
<li><a href="MyFavori.aspx"target="main_right" >我的收藏</a></li>
</ul>

<div class="left_font" onclick="usershow('#td3','#span3')" >
<span id="span3" class="imgbgout img_icon" onclick="usershow('#td3','#span3')" ></span>
我的互动</div>
<ul id="td3" class="tabtr">
<li><a href="../Content/Default.aspx?t=1"target="main_right">我的发表</a></li>
<li><a href="../Content/CommentList.aspx" target="main_right">我的评论</a></li>
<li><a href="../../manage/AddOn/ProjectsList.aspx" target="main_right">收件箱</a></li>
</ul>

<div class="left_font" onclick="usershow('#td4','#span4')" >
<span id="span4" class="imgbgout img_icon" onclick="usershow('#td4','#span4')" ></span>
威客竞标</div>
<ul id="td4" class="tabtr">
<li><a href="../Content/IRelease.aspx"target="main_right">竞标管理</a></li>
<li><a href="../Content/MyCommentList.aspx" target="main_right">我参与的</a></li>
</ul>
</body>
</html>