<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.MyInfo, App_Web_ea4g3xou" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>会员信息页</title>
<link rel="stylesheet" type="text/css" href="skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="skin/user_user.css" />
<link href="<%Call.Label("{$CssDir/}"); %>global.css" rel="stylesheet" type="text/css">
</head>
<body>
<form id="form1" runat="server">
<div class="left" style="float:right; width:720px;">
<div class="Personalr-t"><div id="sdemo" style="overflow: hidden; width: 450px; height:42px;">
<table width="550" border="0" align="left" cellpadding="0" cellspacing="0" >
<tbody>
<tr>
<td id="sdemo1" valign="top"><table width="550" height="27" border="0" cellpadding="0" cellspacing="0">
<tr>
<td width="338" valign="middle"> 
<%Call.Label("{ZL.Label id=\"输出指定节点标题_无时间属性span\" NodeID=\"17\" TitleNum=\"40\" ShowNum=\"10\" /}"); %>
</td>
</tr>
</table></td>
<td id="sdemo2" valign="top">　</td></tr></tbody></table></div>
<script> 
function $k(id)
{
return document.getElementById(id);
}
var speed3=25;//速度数值越大速度越慢
$k("sdemo2").innerHTML=$k("sdemo1").innerHTML;
function marquee(){
if($k("sdemo2").offsetWidth-$k("sdemo").scrollLeft<=0){
$k("sdemo").scrollLeft-=$k("demo1").offsetWidth;
}else{
$k("sdemo").scrollLeft++;
}
}
var mymar=setInterval(marquee,speed3);
$k("sdemo").onmouseover=function() {clearInterval(mymar)}
$k("sdemo").onmouseout=function() {mymar=setInterval(marquee,speed3)}
</script>
</div> 
<div class="left-c" style="width:720px;" > 
<div class="right-c-product" style="width:705px;">
<div class="Personalr-nr">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="18%" rowspan="3" valign="top"><asp:Image ID="imgUserPic" runat="server" Width="96px" Height="109px" /></td>
    <td height="30" colspan="3">您好！<%Call.Label("{ZL:GetuserName()/}"); %> ，欢迎回来！<br /></td>
  </tr> 
  <tr>
    <td colspan="3">身份：普通会员 RMB帐户：<span class="email">￥！<%Call.Label("{ZL.Label id=\"用户信息\" field=\"Purse\" /}"); %></span> <br />
        信箱：<asp:Label ID="LblUnreadMsg" runat="server" Text="" />条未读信息  帐户积分：<span class="email"><asp:Label ID="LblExp" runat="server" /></span>
        </td>
  </tr>
  <tr>
    <td width="32%" height="30" bgcolor="#FFFFFF" style="border-top:1px solid #ecefec; border-bottom:1px solid #ecefec; padding-left:10px; color:#3e3e3e;"><strong>交易提醒：</strong>待支付订单(！<%Call.Label("{ZL.Label id=\"订单统计\" Status=\"0\" field=\"Paymentstatus\" /}"); %>)</td>
    <td width="22%" bgcolor="#FFFFFF" style="border-top:1px solid #ecefec; border-bottom:1px solid #ecefec;  padding-left:10px;color:#3e3e3e;">
       <span style="display:none;"> 待提交运单(！<%Call.Label("{ZL.Label id=\"订单统计\" Status=\"0\" field=\"Paymentstatus\" /}"); %></span></td>
    <td width="28%" bgcolor="#FFFFFF" style="border-top:1px solid #ecefec; border-bottom:1px solid #ecefec;  padding-left:10px;color:#3e3e3e;">
        待确认收货(！<%Call.Label("{ZL.Label id=\"订单统计\" Status=\"0\" field=\"Signed\" /}"); %>)</td>
  </tr>
</table>
</div>
<div class="Personall-t2">我的购物车 <span style="font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#ccc">
    My Shopping Cart</span><br />
</div>
<div class="Personalr-cart">
	<div id="cart_welcome">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="83%" height="30" style="font-size:14px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="19%" rowspan="3" align="left" valign="top"><img src="<%Call.Label("{$CssDir/}"); %>images/Personal_pic2.gif" width="85" height="72" /></td>
        <td width="81%" height="30" style="font-size:14px;"><a href="/shopcar.aspx" class="cart">我的购物车</a></td>
      </tr>
      <tr>
        <td height="30" style="font-size:14px; color:#333;"><a href="/NodeElite.aspx?NodeID=39" class="dg">
            您的购物车还是空的哦，赶紧行动吧！我要代购</a></td>
      </tr>
      <tr>
        <td height="30" style="color:#bbbbbb;">由于时效性问题，您所选择商品的价格丶优惠政策等信息随时可能发生变化哦。赶快去看看吧！ </td>
      </tr>
    </table></td>
  </tr>
</table>
    </div>
    
</div>
<div class="Personall-t2">我的最新订单 <span style="font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#ccc">
    My New Order</span><br />
</div>
<div class="Personalr-cart"> 
    <div class="bigc-nr-back" style="overflow:hidden;">
  <iframe src="/user/PreViewOrde2.aspx?menu=Orderinfo" width="700" height="220" frameborder="0" scrolling="no" ></iframe>
  </div>
      
</div>
<div class="Personall-t2" style="display:none;">我的最新运单 <span style="font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#ccc">
    Orders In Transit
</span><br />
</div>
<div class="Personalr-cart" style="display:none;">
    <div class="bigc-nr-back" style="overflow:hidden;">
  <table width="95%" border="0" cellpadding="0" cellspacing="0" id="orderGrid">
          <tr>
            <td height="35" bgcolor="#ededed" style="color:#333; font-size:14px;">运单编号</td>
            <td height="35" bgcolor="#ededed" style="color:#333; font-size:14px;">收货人</td>
            <td height="35" bgcolor="#ededed" style="color:#333; font-size:14px;">电话</td>
            <td height="35" bgcolor="#ededed" style="color:#333; font-size:14px;">地区</td>
            <td height="35" bgcolor="#ededed" style="color:#333; font-size:14px;">服务费</td>
            <td height="35" bgcolor="#ededed" style="color:#333; font-size:14px;">总运费</td>
            <td height="35" bgcolor="#ededed" style="color:#333; font-size:14px;">运单状态</td>
            <td height="35" bgcolor="#ededed" style="color:#333; font-size:14px;">操作</td>
          </tr>
    
  </table>
  </div>
      
</div>
</div>
</div>
<div class="left-b"></div>
</div>
<div class="s_bright" style="display:none;">
<div class="us_r_infoa">
<div class="us_logo">
<ul>
  </ul>
<ul><a href='<%=ResolveUrl("~/User/Info/UserInfo.aspx") %>'>【个人信息】</a></ul>
</div>
<div class="us_pynews">
  您现在的位置：<span id="YourPosition"><a title="网站首页" href="/" target="_blank">
  <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label>
  </a><span> &gt;&gt; </span><span><a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a></span><span> &gt;&gt; </span><span><a title="信息管理" href="MyInfo.aspx">个人信息</a></span></span>
  <div class="us_xzb">
	<h2>会员组别：<asp:Label ID="LblGroupName" runat="server" Text="" /><br />
	待阅短信：条<br />
	最近登陆：<asp:Label ID="LblLastLoginTime" runat="server" /> <br />
	等级：<asp:Image ID="Grouppicture" runat="server" Width="20" Height="20" />
   </h2>
  </div>
	<div class="us_message">
		<h3>便捷菜单</h3>
		<ul>
			<li><a href="Project/ProjectRequire.aspx">创建项目</a></li>
			<li><a href="Project/ProjectList.aspx">查看项目</a></li>
			<li><a href="Message/Message.aspx">站内短信</a></li>
			<li><a href="ChangPSW.aspx">修改密码</a></li>
			<li><a href="/PayOnline/SelectPayPlat.aspx">在线支付</a></li>
			<li><a href="/GuestBook/Default.aspx" target="_blank">在线留言</a></li>
		</ul>
	</div>
</div>
<div class="cleardiv"></div>
</div>
<!-- str -->
<div>
<div class="us_r_infoa">
	<div class="us_seta">
		<h1>◎信息维护</h1>
		<div class="us_pynews">
            <h2>您的联系信息</h2>
            <ul>
            <li><strong><a href="">性别：</a></strong> <asp:Label ID="LblSex" runat="server" /></li>
            <li><a href="">邮箱地址：</a><asp:Label ID="LblEmail" runat="server" Text="" /></li>
            <li><strong><a href="">手机号码：</a></strong> <asp:Label ID="LblMobile" runat="server" /></li>
            </ul>              

          <h2>您的交易信息</h2>
            <ul>
            <li>结算总金额：<asp:Label ID="ship" runat="server" /></li> 
            <li>已支付金额：<asp:Label ID="Almoney" runat="server" /></li>                 
            <li>未支付金额：<asp:Label ID="Nonemoney" runat="server" /></li>
            <li>上次支付时间：<asp:Label ID="time" runat="server" /></li>
           
          </ul>
          
           <h2>您的其它信息</h2>
            <ul>
            <li>积分：</li>
            <li>游戏币值：<asp:Label ID="LblGuessMP" runat="server" /></li>                  
            <li>注册日期：<asp:Label ID="LblRegTime" runat="server" /></li>
            <li>登陆次数：<asp:Label ID="LblLoginTimes" runat="server" /></li>
            <li>最近修改密码时间：<asp:Label ID="LblChgPswTime" runat="server" /></li>
            <li>上次被锁定时间：<asp:Label ID="LblLastLockTime" runat="server" /></li>
            <li>最后登陆IP：<asp:Label ID="LblLastLoginIP" runat="server" /></li>
          </ul>

		</div>
	</div>
		<div class="us_seta">
		<h1 style="clear:both;">◎SNS社区功能导航</h1>
		<div class="c_pynews">
			<h2>社区娱乐</h2>
			<ul>
				<li><a href="/User/UserFriend/">好友</a></li>
				<li><a href="/User/UserZone/LogManage/SelfLogManage.aspx">日志</a></li>
				<li><a href="/User/UserZone/Pic/CategList.aspx">相册</a></li>
				<li><a href="/User/userzone/GatherStrainManage/GSManage.aspx">族群</a></li>
				<li><a href="/User/UserZone/Memo/MemoList.aspx">备忘录</a></li>
				<li><a href="/User/UserZone/Message/MyMessage.aspx">留言板</a></li>
				<li><a href="/User/UserZone/Parking/Default.aspx">抢车位</a></li>
				<li><a href="/User/UserZone/Home/MyHome.asp">小屋</a></li>
				<li><a href="/User/UserZone/ChitChat.aspx">蒙面聊</a></li>
				<li><a href="/User/UserZone/Book/BookList.aspx">读书</a></li>
				<li><a href="/User/UserZone/Book/MusicList.aspx">音乐</a></li>
				<li><a href="/User/UserZone/Book/MovieList.aspx">电影</a></li>
				<li><a href="/User/UserZone/Book/ItineraryList.aspx">旅途</a></li>
			</ul>
		</div>
        
            <div class="c_pynews">
			<h2>班级功能</h2>
			<ul>
				<li><a href="/User/UserZone/School/MySchoolList.aspx">班级列表</a></li>
				<li><a href="/User/UserZone/School/SchoolList.aspx">加入班级</a></li>
				<li><a href="/User/UserZone/School/SchoolFellow.aspx">查找同学</a></li>
				<li><a href="/User/UserZone/School/AddRessList.aspx">我的通讯录</a></li>
			</ul>
		</div>
</div>

</div>
</div></div>
</form>
</body>
</html>