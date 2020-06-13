<%@ page language="C#" autoeventwireup="true" inherits="User_Sera_shopLeft, App_Web_pvpn01r3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>商城功能导航</title>
<link href="../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script src="../JS/jquery.js" type="text/javascript"></script>
<script src="../js/UserDefault.js" type="text/javascript"></script>
</head>
<body class="user_left">
<form id="form1" runat="server">
  <div class="left_font" onclick="usershow('#td1','#span1')">
  <span id="span1" class="imgbgover img_icon" onclick="usershow('#td1','#span1')" ></span>
  商城管理</div>
<ul id="td1" class="tabtr">
<li><a href="GroupList.aspx?start=true" target="main_right">我的团定</a></li>
<li><a href="Info/DredgeVip.aspx" target="main_right">VIP卡管理</a></li>
<li><a href="BossInfo/NodeTree.aspx"target="main_right">我的加盟商</a></li>
<li><a href="BossInfo/MeInfo.aspx"target="main_right">我的加盟信息</a></li>
<li><a href="PreViewOrder.aspx?menu=Orderinfo"target="main_right" >购物订单</a></li>
</ul>

<div class="left_font"  onclick="usershow('#td2','#span2')">
<span id="span2" class="imgbgout img_icon" onclick="usershow('#td2','#span2')" ></span>
店铺管理</div>
<ul id="td2" class="tabtr">
    <li><a href="UserShop/Default.aspx" target="main_right">我的店铺</a></li>
    <li><a href="Profile/OrderManage.aspx" target="main_right">我的订单</a></li>
    <li><a href="Profile/Default.aspx" target="main_right">我的返利</a></li>
    <li><a href="Profile/PointRecord.aspx" target="main_right">我的积分</a></li>
    <li><a href="Profile/ExChangeRecord.aspx" target="main_right">兑换记录</a></li>
    <li><a href="Profile/Accountinfo.aspx" target="main_right">收款信息设置</a></li>
    <li><a href="siteManage/Default.aspx" target="_blank">分站联盟推广</a></li>
    <li><a href="producter/ProducterManage.aspx" target="main_right">出售商品信息</a></li>
    <li><a href="UserShop/Pay_View.aspx" target="main_right">支付平台</a></li>
    <li><a href="UserShop/Pay_List.aspx" target="main_right">支付记录</a></li>
    <li><a href="PrintServer/ImageList.aspx" target="main_right">Flex作品</a></li>
</ul>
<div class="left_font"  onclick="usershow('#td3','#span3')" >
<span id="span3" class="imgbgout img_icon" onclick="usershow('#td3','#span3')" ></span>推广赚钱</div>

<ul id="td3" class="tabtr">
<li><a href="PromotUnion/Default.aspx" target="_blank" >赚钱计划</a></li>
<li><a href="PromotUnion/userunioninviteview.aspx" target="main_right">赚钱记录</a></li>

</ul>
<div class="left_font" onclick="usershow('#td4','#span4')">
<span id="span4"  class="imgbgout img_icon" onclick="usershow('#td4','#span4')"></span>竞拍</div>

<ul id="td4" class="tabtr">
<li>
<a href="BidManage/Default.aspx?type=0"target="main_right">正在竞拍</a></li>
<li><a href="BidManage/BidEnd.aspx?type=0"target="main_right">竞拍成功</a></li>
<li> <a href="BidManage/Bidpaul.aspx?type=1"target="main_right" >保价购买</a></li>
<li><a href="BidManage/Bidpaul.aspx?type=2" target="main_right" >放弃购买</a></li>
</ul>

<div class="left_font" onclick="usershow('#td5','#span5')">
<span  id="span5" class="imgbgout img_icon" onclick="usershow('#td5','#span5')"></span>
体验区竞拍</div>
<ul id="td5" class="tabtr">
<li><a href="BidManage/Default.aspx?type=1"target="main_right">正在竞拍</a></li>
<li> <a href="BidManage/BidEnd.aspx?type=1" target="main_right">竞拍成功</a></li>
</ul>

</form>
</body>
</html>