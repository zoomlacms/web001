<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.User_GetPassword, App_Web_pvpn01r3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>找回密码</title>
<!--<link href="../App_Themes/UserThem/style.css" rel="stylesheet" type="text/css" />-->
<link href="<%Call.Label("{$CssDir/}"); %>global.css" rel="stylesheet" type="text/css">
</head>
<body>
<%Call.Label("{ZL.Label id=\"全站头部\"/}"); %>
<div id="contain">
  <div class="big-bj-t2">找回密码</div>
  <div class="big-bj-c" style="padding-bottom:15px; padding-top:15px;">
    <div id="regsendDiv" class="bigc-nr5">
      <div id="setp1" style="margin:50px 0;">
<form id="form1" runat="server">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="24" colspan="3">
                <span style="font-family:'微软雅黑'; color:red; font-size:14px;"><asp:Panel ID="PnlStep1" runat="server" Visible="false"></span></td>
              </tr>
              <tr>
                <td height="50" colspan="3"><span style="font-family:'微软雅黑'; color:#f16500; font-size:18px;"> 输入您注册代乐购时使用的会员名，通过回答密保问题找回密码!</span></td>
              </tr>
              <tr>
                <td width="11%" height="35"> <span style=" color:#000">输入会员名：</span></td>
                <td width="32%" height="35"><span style="line-height:22px;">
               <asp:TextBox ID="TxtUserName" runat="server" CssClass="input_out" runat="server"
				onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};"
				onmousemove="this.className='input_move'" onmouseout="this.className='input_out'" class="input7" Width="240" Height="24">
			</asp:TextBox><asp:RequiredFieldValidator ID="ValrTxtUserName" runat="server" ErrorMessage="请输入用户名！"
				ControlToValidate="TxtUserName" Display="dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </span></td>
                <td width="57%" height="30"><div id="regEmailChk" style="color:#000;"> 输入您注册代乐购时使用的会员名，通过回答密保问题找回密码!</div></td>
              </tr>
              <tr>
                <td height="35"><span style="color:#000;">验证码： </span></td>
                <td height="35"><span style="line-height:22px;">
                <asp:TextBox ID="txtCode" MaxLength="6" runat="server" class="input5" style="width:105px;border:#CCC solid 1px;height:24px; line-height:24px;" autocomplete="off"></asp:TextBox>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Common/ValidateCode.aspx" Height="18px"
				ToolTip="点击刷新验证码" Style="cursor: pointer; border: 0; vertical-align: middle;"
				onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" />
                  </span></td>
                <td height="30"><div id="regCheckCodeInputChk" class="off" style="color:#000;">请输入验证码</div></td>
              </tr>
              <tr>
                <td height="25" colspan="3"></td>
              </tr>
              <tr>
                <td height="50" colspan="3">
                <asp:Button ID="BtnStep1" runat="server" Text=" " OnClick="BtnStep1_Click"  style=" width:106px; height:36px;background:url(/Template/dai/style/images/next2.gif) no-repeat; border:none;" />
                </asp:Panel>
		<asp:Panel ID="PnlStep2" runat="server" Visible="false">
            </td>
              </tr>
              
              
              <tr>
              <td colspan="3" height="50"><span style="color:#000">密码提示问题：</span><asp:Literal ID="LitQuestion" runat="server"></asp:Literal></td>
              </tr>
              <tr>
              <td colspan="3" height="50"><span style="color:#000">密码提示答案：</span><asp:TextBox ID="TxtAnswer" runat="server" CssClass="input_out" runat="server"
				onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};"
				onmousemove="this.className='input_move'" onmouseout="this.className='input_out'" Width="100" Height="24"></asp:TextBox><br /><br />
<br />			<asp:Button ID="BtnStep2" runat="server" Text=" " OnClick="BtnStep2_Click" class="i_bottom" style=" width:106px; height:36px;background:url(/Template/dai/style/images/next3.gif) no-repeat; border:none;"  />
		</asp:Panel>
		<asp:Panel ID="PnlStep3" runat="server" Visible="false"></td>
              </tr>
              <tr>
              <td colspan="3"><span style="color:#000">新密码：</span><asp:TextBox ID="TxtPassword" TextMode="Password" runat="server"></asp:TextBox></td>
              </tr>
                <tr>
              <td colspan="3"><span style="color:#000">确认新密码：</span><asp:TextBox ID="TxtConfirmPassword" runat="server" TextMode="Password"
				Width="148px" CssClass="input_out" runat="server" onfocus="this.className='input_on';this.onmouseout=''"
				onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};"
				onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></asp:TextBox>
				<asp:CompareValidator ID="CompareValTxtConfirmPassword" ControlToValidate="TxtConfirmPassword"
					ControlToCompare="TxtPassword" Display="Dynamic" Type="String" Operator="Equal"
					runat="server" ErrorMessage="两次密码输入不一致！"></asp:CompareValidator>
				<asp:Button ID="BtnStep3" runat="server" Text="修改密码" OnClick="BtnStep3_Click" class="i_bottom" /></td>
              </tr>
              </asp:Panel>
            </table>
          </form>
      </div>
        
        
        
    </div>
  </div>
  <div class="big-bj-b"></div>
  <div style="clear:both;"></div>
</div>


</form>
<%Call.Label("{ZL.Label id=\"全站底部\"/}"); %>
</body>
</html>
