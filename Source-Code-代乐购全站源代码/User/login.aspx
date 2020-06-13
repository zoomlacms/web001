<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="User_login, App_Web_pvpn01r3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI" TagPrefix="asp" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>用户登陆-<%Call.Label("{$SiteName/}"); %></title>
<!--<link href="../App_Themes/UserThem/style.css"rel="stylesheet" type="text/css" />-->
<link href="<%Call.Label("{$CssDir/}"); %>global.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../JS/ajaxrequest.js"></script>
<script type="text/javascript">
if (self != top) { top.location = self.location; }
function onfocus() {
    try {
     document.getElementById('TxtUserName').focus();
    }catch(Error){}
}
var sts = 3;//登陆后跳转等待时间;单位：秒
function sucse(s, url) {
    if (s == 1) {//成功
        document.getElementById("main_l").style.display = "none";
        document.getElementById("main_s").style.display = "";
        document.getElementById("sec").innerHTML = sts;
        setInterval(loacationgoto, 1000);
    }
    else {
        document.getElementById("main_l").style.display = "";
        document.getElementById("main_s").style.display = "none";
    }
}
function loacationgoto() {
    if (document.getElementById("alipayDIV") != null)
        document.getElementById("alipayDIV").style.display = "none";
    if (sts > 0) {
        sts--;
        document.getElementById("sec").innerHTML = sts;
        if (sts <= 0) {
            location.href = "Default.aspx";
        }
    }
    else {
        location.href = "Default.aspx";
    }
}
function resize() {
  //  document.getElementById("alipayDIV").style.left = (document.getElementById("checkbox").offsetLeft - 100)+"px";
}
</script>
<style>
#btnLogin{ background:url(<%Call.Label("{$CssDir/}"); %>images/login.gif) no-repeat; width:78px; height:28px; border:none;}
</style>
</head>
<body onload="onfocus();" onresize="resize()">
<%Call.Label("{ZL.Label id=\"全站头部\"/}"); %><form runat="server"> 

<div id="contain">
<div class="big-bj-t2">会员中心</div>
<div class="big-bj-c" style="padding-bottom:15px;">
<div class="bigc-nr4">
<div class="bigc-nr4-title"><img src="<%Call.Label("{$CssDir/}"); %>images/login-title.gif" /></div>
<div class="bigc-nr4-title" style="padding-top:10px;">
  <div id="main" style="position:relative;">
<div id="main_l" style="margin:0; padding:0;">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="15%" height="40" align="right">邮箱或昵称：</td>
      <td width="85%" height="40" align="left"><span style="line-height:22px;">
        <asp:Label ID="lblUser" runat="server" Text=" "></asp:Label>
<asp:TextBox ID="TxtUserName" runat="server" style="width:260px; height:25px; line-height:25px; padding-left:10px;border:#CCC solid 1px;"  CssClass="input_out"  onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></asp:TextBox>
      </span></td>
    </tr>
    <tr>
      <td height="40" align="right">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
      <td height="40" align="left"><span style="line-height:22px;">
<asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" style="width:260px; height:25px;line-height:25px; padding-left:10px; border:#CCC solid 1px;"  CssClass="input_out"  onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></asp:TextBox>        </span></td>
    </tr>
    <tr>
      <td height="40"  align="right">验&nbsp;&nbsp;证&nbsp;&nbsp;码：</td>
      <td height="40"><asp:TextBox ID="TxtValidateCode" MaxLength="6" runat="server" style="width:80px; height:25px;border:#CCC solid 1px;" CssClass="input_out"  onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></asp:TextBox>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Common/ValidateCode.aspx" Height="20px" ToolTip="点击刷新验证码" Style="cursor: pointer; border: 0; vertical-align: middle;" onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" /> </td>
    </tr>
    <tr>
      <td height="40">&nbsp;</td>
      <td height="40">
			<asp:Button ID="btnLogin" CssClass="i_bottom" runat="server" Text="" onclick="btnLogin_Click"  />　
       <img src="<%Call.Label("{$CssDir/}"); %>images/register.gif" style="cursor:pointer;" onclick="location.href='register.aspx';" />
        <span class="mm" style="cursor:pointer;" onclick="javascript:location.href='/User/GetPassword.aspx';">忘记密码？</span>
        
 <div style="display:none;">
<input type="checkbox" name="checkbox" checked="checked" id="checkbox" style="margin-left:18px" />记住登录&nbsp;
<asp:HyperLink ID="hlReg" runat="server"  NavigateUrl="~/User/login.aspx?RegID=1">Email登录</asp:HyperLink> &nbsp;
<span style="margin-top:25px; padding-left:100px;">如果您尚未在本站注册为用户，请先点击<a href="Register.aspx">点此注册</a>。</span></div></td>
    </tr>
    <tr>
      <td height="40">&nbsp;</td>
      <td height="40"><font style="color:#F00"></font></td>
    </tr>
  </table>
</div>
<div id="main_s" style="display:none">
<ul>
<li style="color:green; font-size:14px; font-weight:bold">欢迎您！登陆成功</li>
<li style="margin-top:25px;">系统将在 <span id="sec">3</span> 秒后自动跳转到<a href="Default.aspx">会员首页</a></li>
</ul>
</div>
<div style="clear:both;"></div> 
</div>
</div>
<div style="clear:both;"></div> 
</div>
</div>
<div class="big-bj-b"></div>
  <div style="clear:both;"></div>
</div>
 
<asp:RequiredFieldValidator ID="ValrUserName" runat="server" ErrorMessage="请输入用户名！" ControlToValidate="TxtUserName" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="ValrPassword" runat="server" ErrorMessage="请输入密码！" ControlToValidate="TxtPassword" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="false" ShowSummary="False" />
<%if (EnableAlipayCheckReg) { %>
<div  id="alipayDIV" style="display:none;" >
<asp:Label ID="lbButton"  runat="server" style="cursor:pointer;">支付宝登录</asp:Label>
</div>
<%} %>

</form>
<%Call.Label("{ZL.Label id=\"全站底部\"/}"); %>

</body>
</html>