<%@ page language="C#" autoeventwireup="true" inherits="User_Left, App_Web_pvpn01r3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>功能导航</title>
<link href="../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script src="../JS/jquery.js" type="text/javascript"></script>
<script src="../js/UserDefault.js" type="text/javascript"></script>
</head>
<body class="user_left">
<form id="form1" runat="server">
<div class="left_font"  onclick="usershow('#td1','#span1')">
<span id="span1" class="imgbgover img_icon" onclick=" usershow('#td1','#span1')" ></span>我的信息</div>
<ul id="td1" class="tabtr">
<li><a href="Info/UserInfo.aspx" target="main_right">账号信息</a></li>
<li><a href="CashCoupon/ArriveManage.aspx" target="main_right">优惠劵列表</a></li>
<li> <a href="CashCoupon/ArriveJihuo.aspx" target="main_right">优惠劵激活</a></li>
<li><a href="ConstPassen.aspx" target="main_right">常用客户</a></li>
<li><a href="info/UserRecei.aspx" target="main_right">我的地址簿</a></li>
<li><a href="info/UserDay.aspx" target="main_right">节日提醒</a></li>
<li><a href="info/MyGetMoney.aspx" target="main_right">我的收入</a></li>
<li><a href="info/MtrlsMrktng.aspx" target="main_right">推广收入</a></li>
</ul>

<div class="left_font" onclick="usershow('#td4','#span4')"> 
<span id="span4"  class="imgbgout img_icon"  onclick="usershow('#td4','#span4')"></span>订阅导航</div>
<ul id="td4"  class="tabtr">
<li> <a href="MySubscription.aspx" target="main_right">我的订阅</a></li>
<li><a href="BidList.aspx?type=myBid"target="main_right">我的竞标</a></li>
<li><a href="BidList.aspx?type=myJoin"target="main_right">我参与的竞标</a></li>
<li><a href="BidList.aspx?type=settlement"target="main_right" >竞标结算</a></li>
<li><a href="../Questions/Default.aspx" target="main_right" >组卷系统</a></li>
</ul>
  
</form>
</body>
</html>