<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.User_Register, App_Web_ea4g3xou" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>用户注册-<%Call.Label("{$SiteName/}"); %></title>
<link href="../App_Themes/UserThem/style.css" rel="stylesheet" type="text/css" />
<link href="<%Call.Label("{$CssDir/}"); %>global.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../Common/Common.js"></script>
<script type="text/javascript" src="../JS/ajaxrequest.js"></script>
<script type="text/javascript" src="../JS/PassStrong.js"></script>
<script type="text/javascript">
    var ajax = new AJAXRequest;
    function e_get() {
        var url = document.getElementById("hfUrl").value;
        var username = document.getElementById("<%= TxtUserName.ClientID %>").value;
        var pass = document.getElementById("<%=TxtPassword.ClientID %>").value;
        var mail = document.getElementById("<%=TxtEmail.ClientID %>");
        url = url + "?username=" + username + "&pass=" + pass + "&mail=" + mail;
        ajax.get(
	url,
	function (obj) {
		var index = 1;
		var i = obj.responseText;
		if (i == "[Fail]" && index <= 3) {
		    e_get();
		}
	}
        );
}
</script>
<style type="text/css">
#apDiv1 {
	position:absolute;
	width:106px;
	height:16px;
	z-index:1;
	top: 991px;
	left: 166px;
}
#BtnSubmit{ background:url(<%Call.Label("{$CssDir/}"); %>images/next2.gif); width:105px; height:36px; border:none;}
.input_out,.input_off,.input_on,.input_move{ width:240px; border:1px solid #ccc; height:20px; line-height:20px;}
</style>
</head>
<body style="background:#fff;">
<%Call.Label("{ZL.Label id=\"全站头部\"/}"); %>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <script type="text/javascript" src="/js/RiQi.js"></script>
    <script type="text/javascript">
    function gotouser() {
        window.setTimeout("gotouserpage()", 5000);
    }
    function gotouserpage() {
    <%
    if(Session["MicroLogin"]!=null)
    {
    %>
        location = "../Microblog.aspx?id="+<%=GetUserID()%>;
    <%
    }
    else
    {
        %>
        location = "Default.aspx";
        <%
        }
        %>  
    }
    var ms=5;
    function setTimeShow(){
    document.getElementById("spanTime").innerHTML="还剩"+ms+"秒跳转到登录";
    ms--;
    if(ms<=0){
    window.location.href="login.aspx";
    }
    window.setTimeout("setTimeShow()", 5000);
    }
    </script>
    <!-- 顶部代码布局 -->
    <!-- 正文布局 -->
		
<div id="ucontain"> 
<div id="main" class="reg" style="margin:0; padding:0;">
		<!-- 右边开始 -->
		<asp:Literal ID="LitControlTreeInfo" runat="server"></asp:Literal>
		<asp:Panel ID="PnlRegStep0" runat="server" Visible="false" Width="100%">
				未开放注册，请和网站管理员联系！</asp:Panel>
		<asp:Panel ID="PnlRegStep1" runat="server" Visible="false" Width="100%">
				<h1>
						第一步：服务条款和声明<img alt="" src="../App_Themes/UserThem/images/regl1.gif" /></h1>
				<textarea name="textarea" cols="20" rows="2" readonly="readonly" style="font-weight: normal;
						font-size: 9pt; width: 99%; line-height: normal; font-style: normal; height: 372px;
						font-variant: normal"><asp:Literal ID="LitProtocol" runat="server"></asp:Literal>
						</textarea>
				<div class="rsubmit">
						<asp:Button ID="BtnRegStep1" CssClass="i_bottom" runat="server" Text="同意" OnClick="BtnRegStep1_Click" />
						<asp:Button ID="BtnRegStep1NotApprove" runat="server" Text="不同意" OnClick="BtnRegStep1NotApprove_Click"
								CssClass="i_bottom" />
				</div>
				<asp:HiddenField ID="hfUrl" runat="server" />
				<!--第二轮开始 -->
				<script type="text/javascript" language="javascript">	
				<!--
						var secs = 9;
						var wait = secs * 1000;
						var btnId = "<%= BtnRegStep1.ClientID %>";
						document.getElementById(btnId).disabled = true;

						function regload() {
								document.getElementById(btnId).value = "我同意[" + secs + "]";
								for (i = 1; i <= secs; i++) {
										window.setTimeout("Update(" + i + ")", i * 1000);
								}
								window.setTimeout("Timer()", wait);
						}

						function Update(num) {
								if (num != secs) {
										printnr = (wait / 1000) - num;
										document.getElementById(btnId).value = "我同意[" + printnr + "]";
								}
						}
						function Timer() {
								document.getElementById(btnId).disabled = false;
								document.getElementById(btnId).value = "我同意";
						}
						function endbtn() {
								document.getElementById(btnId).disabled = false;
						}
				//-->
				</script>
		</asp:Panel> 
		
<div class="big-bj-t2">会员注册 <h1 style="display:none;" >
								<asp:Literal ID="Literal3" runat="server" Text="第二步："></asp:Literal>填写会员信息<img alt="" src="../App_Themes/UserThem/images/regl2.gif" /></h1></div>
<div class="big-bj-c" style="padding-bottom:15px; padding-top:15px;">
<div class="bigc-nr5">
<div class="bigc-nr5-title"><img src="<%Call.Label("{$CssDir/}"); %>images/Register_1h.gif" /> <img src="<%Call.Label("{$CssDir/}"); %>images/Register_2.gif" /> <img src="<%Call.Label("{$CssDir/}"); %>images/Register_3.gif" /></div>
<asp:Panel ID="PnlRegStep2" runat="server" Visible="false" Width="100%">
				<script type="text/javascript" language="javascript">

				var btnId2 = "<%=BtnSubmit.ClientID %>";

				 function checkreg(obj) {
							 
								if (document.getElementById("CheckBox1").checked) {
										document.getElementById(btnId2).disabled = false;
								}
								else {
										document.getElementById(btnId2).disabled = true;
								}
						}
				function dispbtn()
				{
						document.getElementById(btnId2).disabled = true;
				}


				function CheckUser()
				{
						var userName = document.getElementById("<%= TxtUserName.ClientID %>");
						var checkUserNameMessage = document.getElementById("CheckUserNameMessage");       
						if(userName.value=="" ||userName.value == null)
						{
								checkUserNameMessage.innerHTML = "用户名为空";       
								checkUserNameMessage.className = "d_err";
						}
						else
						{
								CallTheServer(userName.value,"");
						}
				}
						
				function CallTheServer(arg,context)
				{                    
						var checkUserNameMessage = document.getElementById("CheckUserNameMessage");
						checkUserNameMessage.className = "";
						checkUserNameMessage.innerHTML = "<img src=\"images/loading.gif\" align=\"absmiddle\" />";                        
						<%= CallBackReference %>
				}
						
				function ReceiveServerData(result)
				{
						var checkUserNameMessage = document.getElementById("CheckUserNameMessage");
						if(result == "true")
						{
								checkUserNameMessage.innerHTML = "用户名已经被注册了！";
								checkUserNameMessage.className = "d_err";
						}
				
						if(result == "error01")
						{
								checkUserNameMessage.innerHTML = "用户名不允许纯数字！";//
								checkUserNameMessage.className = "d_err";
						}
						if(result == "error02")
						{
								checkUserNameMessage.innerHTML = "用户名不允许纯英文！";//
								checkUserNameMessage.className = "d_err";
						}
						if(result == "error03")
						{
								checkUserNameMessage.innerHTML = "用户名不允许带有中文！";//
								checkUserNameMessage.className = "d_err";
						}

						if(result == "error04")
						{
								checkUserNameMessage.innerHTML = "用户名不允许带有特殊字符！";//
								checkUserNameMessage.className = "d_err";
						}
						if(result == "error05")
						{
								checkUserNameMessage.innerHTML = "用户名不合法！";//
								checkUserNameMessage.className = "d_err";
						}

						if(result == "error06")
						{
								checkUserNameMessage.innerHTML = "包含不允许注册的词语！";//
								checkUserNameMessage.className = "d_err";
						}
						if(result == "error07")
						{
								checkUserNameMessage.innerHTML = "用户名已经存在！";//
								checkUserNameMessage.className = "d_err";
						}
						

						if(result == "disabled")
						{
								checkUserNameMessage.innerHTML = "该用户名禁止注册！";
								checkUserNameMessage.className = "d_err";
						}
								
						if(result == "false")
						{
								checkUserNameMessage.innerHTML = "恭喜您，用户名可以使用！";
								checkUserNameMessage.className = "d_ok";
						}


						if(result == "error")
						{
								checkUserNameMessage.innerHTML = "用户名必须大于<%=UserNameLimit() %>个字符并且不能超过<%=UserNameMax() %>！";//
								checkUserNameMessage.className = "d_err";
						}

				}
						
				function SwicthSelectFill()
				{
						var selectFill = document.getElementById("<%= TableRegisterSelect.ClientID %>");
						var selectFill2 = document.getElementById("TableRegisterSelect2");
						if(selectFill.style.display=="none")
						{
								selectFill.style.display="";
								selectFill2.style.display="";
						}
						else
						{
								selectFill.style.display="none";
								selectFill2.style.display="none";
						}
				}

				function hidenbtn()
				{
								var selectFill = document.getElementById("<%= TableRegisterSelect.ClientID %>");
								var selectFill2 = document.getElementById("TableRegisterSelect2");
								selectFill.style.display="none";
								selectFill2.style.display="none";
								document.getElementById("checkSelectFill").checked=false;
				}

				function EndRequestHandler(sender, args)
				{
						if (args.get_error() != undefined){
						alert("检测到表单中存在HTML代码！");
						args.set_errorHandled(true);
						}
				}
				</script> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
	<td height="24" colspan="3"><span style="font-family:'微软雅黑'; color:red; font-size:14px;"></span></td>
</tr>
<tr>
	<td height="50" colspan="3"><span style="font-family:'微软雅黑'; color:#f16500; font-size:18px;">
			欢迎加入代乐购大家庭，享受代购带来的乐趣!</span></td>
</tr>
<tr>
	<td width="11%" height="35">Email地址：</td>
	<td width="32%" height="35"><span style="line-height:22px;">
		 <asp:TextBox ID="TxtEmail" runat="server" CssClass="input_out" onfocus="this.className='input_on';this.onmouseout=''"
																onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};"
																onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></asp:TextBox>
													 
	</span></td>
	<td width="57%" height="30"><div id="regEmailChk" class="off">
			此邮箱将作为您登录代乐购的帐号，并将用来接收验证邮件!</div><span style="display:none">  <asp:RequiredFieldValidator ID="ReqTxtEmail" runat="server" ControlToValidate="TxtEmail"
																SetFocusOnError="false" Display="None" ErrorMessage="Email不能为空"></asp:RequiredFieldValidator>
														<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail"
																ErrorMessage="邮件地址不规范" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator></span></td>
</tr>
<tr>
	<td height="35">设置昵称： </td>
	<td height="35"><span style="line-height:22px;">
 <asp:TextBox ID="TxtUserName" CssClass="input_out" runat="server" onfocus="this.className='input_on';this.onmouseout=''"
																						onblur="CheckUser();this.className='input_off';this.onmouseout=function(){this.className='input_out'};"
																						onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"
																						Style="float: left; "   ></asp:TextBox>															
	</span></td>
	<td height="30"><div id="regNickNameChk" class="off">昵称也可以作为您登录代乐购i的帐号，大家以后就这样称呼您!</div>
																				<span style="color: Red" id="CheckUserNameMessage"></span> 
																		 <span style="display:none">  <asp:Literal ID="usertip" runat="server"></asp:Literal>  &nbsp;昵称在<asp:Literal ID="Literal2" runat="server"></asp:Literal>～<asp:Literal ID="Literal1"
																						runat="server"></asp:Literal>个字符之间
																				<asp:RequiredFieldValidator ID="ReqTxtUserName" runat="server" ControlToValidate="TxtUserName"
																						SetFocusOnError="false" ErrorMessage="昵称不能为空" Display="None"></asp:RequiredFieldValidator>
																				<asp:RegularExpressionValidator ID="ValgTextMaxLength" ControlToValidate="TxtUserName"
																						ValidationExpression="^[a-zA-Z0-9_\u4e00-\u9fa5\@\.]{4,40}$" SetFocusOnError="false"
																						Display="None" runat="server"></asp:RegularExpressionValidator></span>
		</td>
</tr>
<tr>
	<td height="35">设定密码： </td>
	<td height="35"><span style="line-height:22px;">
		<asp:TextBox ID="TxtPassword" TextMode="Password" runat="server" CssClass="input_out"  
																onfocus="this.className='input_on';this.onmouseout=''; focusinput();" onblur="this.className='input_off';document.getElementById('valPass').style.display='none';this.onmouseout=function(){this.className='input_out'};"
																onmousemove="this.className='input_move'" onmouseout="this.className='input_out'" ></asp:TextBox> 
															</span> </td>
	<td height="30"><div id="regPasswordChk" class="off">请输入您的帐号密码</div> <div id="valPass"  style="width:100px; height:30px; display:none; float:left; margin-left:10px; "><span class="spantxt" ><a id ="idshow" class="atxt"></a></span> <span class="spantxt"><a id="apass1" class="a_bor"></a><a id="apass2"  class="a_bor"></a><a id="apass3"  class="a_bor"></a> </span></div>

													 <span style="display:none"> <asp:RegularExpressionValidator ID="RegularExpressionValidatorPassword" runat="server"
																ControlToValidate="TxtPassword" ValidationExpression="[\S]{6,}" ErrorMessage="密码至少6位"
																Display="Dynamic"></asp:RegularExpressionValidator>
														<asp:RequiredFieldValidator ID="ReqTxtPassword" runat="server" ControlToValidate="TxtPassword"
																SetFocusOnError="false" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator></span>
	
		 </td>
</tr>
<tr>
	<td height="35">确认密码： </td>
	<td height="35"><span style="line-height:22px;">
	 <asp:TextBox ID="TxtPwdConfirm" TextMode="Password" runat="server" CssClass="input_out"
																onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};"
																onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></asp:TextBox>
														
	</span></td>
	<td height="30"><div id="regRePasswordChk" class="off">请再输入一次您的密码</div><span style="display:none"> <asp:RequiredFieldValidator ID="ReqTxtPwdConfirm" runat="server" ControlToValidate="TxtPwdConfirm"
																SetFocusOnError="false" Display="Dynamic" ErrorMessage="确认密码不能为空"></asp:RequiredFieldValidator><asp:CompareValidator
																		ID="ValCompPassword" runat="server" ControlToValidate="TxtPwdConfirm" ControlToCompare="TxtPassword"
																		Operator="Equal" SetFocusOnError="false" ErrorMessage="两次密码输入不一致" Display="Dynamic"></asp:CompareValidator></span></td>
</tr>
<!--<tr >
	<td height="35">验证码： </td>
	<td height="35"><span style="line-height:22px;">

		<img id="imgVerify" src="ValidateCode.aspx?" alt="看不清？点击更换" onclick="this.src=this.src+'?'" style="cursor:pointer;" /></span></td>
	<td height="30"><div id="regCheckCodeInputChk" class="off">请输入验证码</div></td>
</tr>-->
<tr>
	<td height="35" colspan="3"> 
	 <asp:CheckBox ID="CheckBox1" runat="server" Text=" 同意并接受注册协议" Visible="false" onclick="checkreg()" />
			我已阅读并同意<a href="/content.aspx?ItemID=254" target="_blank">《代乐购注册协议》</a></td>
</tr>
<tr>
	<td height="50" colspan="3"> 
																				
																				<asp:Button ID="BtnSubmit" runat="server" Text="  " OnClick="BtnSubmit_Click" CssClass="i_bottom"   /><!--注册<input id="Reset" type="reset" value=" 重置 " name="Reset" class="i_bottom" />-->
																				
																				<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="False" />
																		</td> </td>
</tr>
</table>

</div>
</div>




				<div class="reg">
					 
						<div class="reg_sub">
				 
								<ul style=" display:none;">
										<li>
												<div class="reg_put">
														<asp:DropDownList ID="DropDownList1" runat="server" CssClass="input_out">
																<asp:ListItem>最喜欢的运动是什么？</asp:ListItem>
																<asp:ListItem>最喜欢的运动员是谁？</asp:ListItem>
																<asp:ListItem>我最喜欢的物品的名称？</asp:ListItem>
																<asp:ListItem>我最喜欢的歌曲？</asp:ListItem>
																<asp:ListItem>我最喜欢的食物？</asp:ListItem>
																<asp:ListItem>我最爱的人的名字？</asp:ListItem>
																<asp:ListItem>我最爱的电影？</asp:ListItem>
																<asp:ListItem>我妈妈的生日？</asp:ListItem>
																<asp:ListItem>我的初恋日期？</asp:ListItem>
														</asp:DropDownList>
												</div>
												密码问题：<b>*</b> </li>
										<li>
												<div class="reg_put">
														<asp:TextBox ID="TxtAnswer" runat="server" CssClass="input_out" onfocus="this.className='input_on';this.onmouseout=''"
																onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};"
																onmousemove="this.className='input_move'" onmouseout="this.className='input_out'" Text="1111"></asp:TextBox>
														<asp:RequiredFieldValidator ID="ReqAnswer" runat="server" ControlToValidate="TxtAnswer"
																SetFocusOnError="false" Display="None" ErrorMessage="问题答案不能为空"></asp:RequiredFieldValidator>
												</div>
												问题答案：<b>*</b> </li>
										
								</ul> 
								<ul style="display:none;">
										<li>
												<div class="reg_put">
														<asp:UpdatePanel ID="UpdatePanel1" runat="server">
																<ContentTemplate>
																		<asp:RadioButtonList ID="UserGroup" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="UserGroup_SelectedIndexChanged"
																				RepeatColumns="4" AutoPostBack="True">
																		</asp:RadioButtonList>
																</ContentTemplate>
														</asp:UpdatePanel>
												</div>
												用户类型： </li>
										<li>
												<div class="reg_put">
														<table id="TableRegisterMust" runat="server" style="border-collapse: collapse" cellspacing="1"
																cellpadding="2" width="100%" border="0">
																<tr id="usergroupss" runat="server" style="display: none;">
																		<td style="width: 15%" class="tdbgleft">
																		</td>
																</tr>
														</table>
														<asp:UpdatePanel ID="UpdatePanel3" runat="server">
																<ContentTemplate>
																		<table id="Table1" style="border-collapse: collapse" cellspacing="1" cellpadding="2"
																				width="100%" border="0">
																				<asp:Literal ID="modelhtml" runat="server"></asp:Literal>
																		</table>
																</ContentTemplate>
														</asp:UpdatePanel>
												</div>
										</li>
										<li id="trSwicthSelectFill">
												<div class="reg_put">
														<input id="checkSelectFill" onclick="SwicthSelectFill()" type="checkbox" />
														<label style="color: blue" for="checkSelectFill">
																显示用户设置选填信息</label>
												</div>
												选填信息： </li>
								</ul>
						 
								<ul style=" display:none;">
										<li>
												<div class="reg_put">
														<table style="border-collapse: collapse; display: none;" id="TableRegisterSelect"
																cellspacing="1" cellpadding="2" width="100%" border="0" runat="server">
																<thead>
																</thead>
																<tbody>
																</tbody>
																<tr id="trSwicthSelectFill" runat="server" onmouseover="this.className='tdbgmouseover'"
																		onmouseout="this.className='tdbg'">
																		<td style="width: 15%" class="tdbgleft" onclick="SwicthSelectFill()">
																		</td>
																		<td>
																		</td>
																</tr>
														</table>
														<asp:UpdatePanel ID="UpdatePanel2" runat="server">
																<ContentTemplate>
																		<table style="border-collapse: collapse; display: none" id="TableRegisterSelect2"
																				name="TableRegisterSelect2" cellspacing="1" cellpadding="2" width="100%" border="0">
																				<asp:Label ID="reghtml" runat="server"></asp:Label>
																				<asp:Literal ID="lblHtml" runat="server"></asp:Literal>
																		</table>
																</ContentTemplate>
														</asp:UpdatePanel>
														<table style="border-collapse: collapse" cellspacing="1" cellpadding="2" width="100%"
																border="0">
																<tr class="tdbgleft" style="width: 15%" align="center" onmouseover="this.className='tdbgmouseover'"
																		onmouseout="this.className='tdbg'">
																		<td style="height: 30px;">
																				<span style="color: #ff0000">以上所有信息除选填项都必须先正确填写后才能成功注册。</span>
																		</td>
																</tr>
																<tr class="tdbgleft" style="width: 15%" align="center">
																		
																</tr>
														</table>
														<table style="border-collapse: collapse; display: none" id="TableRegister" cellspacing="1"
																cellpadding="2" width="100%" border="0" runat="server" visible="false">
																<tbody>
																		<tr id="trUserSex" runat="server" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>性别：</strong>
																				</td>
																				<td>
																						<asp:DropDownList ID="DropSex" runat="server">
																								<asp:ListItem Text="男" Value="1" Selected="True"></asp:ListItem>
																								<asp:ListItem Text="女" Value="0"></asp:ListItem>
																						</asp:DropDownList>
																						<asp:Literal ID="musttrUserSex" runat="server"></asp:Literal>
																				</td>
																		</tr>
																		<tr id="trBirthday" runat="server" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>出生日期：</strong>
																				</td>
																				<td>
																						<asp:TextBox ID="TxtBirthday" runat="server" onclick="setday(this);" CssClass="input_out"
																								onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};"
																								onmousemove="this.className='input_move'" onmouseout="this.className='input_out'">1985/5/12 </asp:TextBox>
																						<asp:Literal ID="musttrBirthday" runat="server"></asp:Literal>
																						<asp:RequiredFieldValidator ID="ReqTxtBirthday" runat="server" Display="None" ErrorMessage="出生日期不能为空"
																								SetFocusOnError="false" ControlToValidate="TxtBirthday"></asp:RequiredFieldValidator>
																				</td>
																		</tr>
																		<tr id="trHomepage" runat="server" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>主页：</strong>
																				</td>
																				<td>
																						<asp:TextBox ID="TxtHomepage" runat="server" CssClass="input_out">http://</asp:TextBox>
																						<asp:Literal ID="musttrHomepage" runat="server"></asp:Literal><asp:RequiredFieldValidator
																								ID="ReqTxtHomepage" runat="server" Display="None" ErrorMessage="主页地址不能为空" SetFocusOnError="false"
																								ControlToValidate="TxtHomepage"></asp:RequiredFieldValidator>
																				</td>
																		</tr>
																		<tr id="trQQ" runat="server" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>QQ号码：</strong>
																				</td>
																				<td>
																						<asp:TextBox ID="TxtQQ" runat="server" CssClass="input_out"></asp:TextBox>
																						<asp:Literal ID="musttrQQ" runat="server"></asp:Literal><asp:RequiredFieldValidator
																								ID="ReqTxtQQ" runat="server" Display="None" ErrorMessage="QQ号码不能为空" SetFocusOnError="false"
																								ControlToValidate="TxtQQ"></asp:RequiredFieldValidator>
																				</td>
																		</tr>
																		<tr id="trICQ" runat="server" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>ICQ号码：</strong>
																				</td>
																				<td>
																						<asp:TextBox ID="TxtICQ" runat="server" CssClass="input_out"></asp:TextBox>
																						<asp:Literal ID="musttrICQ" runat="server"></asp:Literal><asp:RequiredFieldValidator
																								ID="ReqTxtICQ" runat="server" Display="None" ErrorMessage="ICQ号码不能为空" SetFocusOnError="false"
																								ControlToValidate="TxtICQ"></asp:RequiredFieldValidator>
																				</td>
																		</tr>
																		<tr id="trMSN" runat="server" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>MSN帐号：</strong>
																				</td>
																				<td>
																						<asp:TextBox ID="TxtMSN" runat="server" CssClass="input_out"></asp:TextBox>
																						<asp:Literal ID="musttrMSN" runat="server"></asp:Literal><asp:RequiredFieldValidator
																								ID="ReqTxtMSN" runat="server" Display="None" ErrorMessage="MSN帐号不能为空" SetFocusOnError="false"
																								ControlToValidate="TxtMSN"></asp:RequiredFieldValidator>
																				</td>
																		</tr>
																		<tr id="trYahoo" runat="server" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>雅虎通帐号：</strong>
																				</td>
																				<td>
																						<asp:TextBox ID="TxtYahoo" runat="server" CssClass="input_out"></asp:TextBox>
																						<asp:Literal ID="musttrYahoo" runat="server"></asp:Literal><asp:RequiredFieldValidator
																								ID="ReqTxtYahoo" runat="server" Display="None" ErrorMessage="雅虎通帐号不能为空" SetFocusOnError="false"
																								ControlToValidate="TxtYahoo"></asp:RequiredFieldValidator>
																				</td>
																		</tr>
																		<tr id="trUC" runat="server" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>UC号码：</strong>
																				</td>
																				<td>
																						<asp:TextBox ID="TxtUC" runat="server" CssClass="input_out"></asp:TextBox>
																						<asp:Literal ID="musttrUC" runat="server"></asp:Literal><asp:RequiredFieldValidator
																								ID="ReqTxtUC" runat="server" Display="None" ErrorMessage="UC号码不能为空" SetFocusOnError="false"
																								ControlToValidate="TxtUC"></asp:RequiredFieldValidator>
																				</td>
																		</tr>
																		<tr id="trOfficePhone" runat="server">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>办公电话：</strong>
																				</td>
																				<td>
																						<asp:TextBox ID="TxtOfficePhone" runat="server" CssClass="input_out"></asp:TextBox>
																						<asp:Literal ID="musttrOfficePhone" runat="server"></asp:Literal><asp:RequiredFieldValidator
																								ID="ReqTxtOfficePhone" runat="server" Display="None" ErrorMessage="办公电话不能为空"
																								SetFocusOnError="false" ControlToValidate="TxtOfficePhone"></asp:RequiredFieldValidator>
																				</td>
																		</tr>
																		<tr id="trHomePhone" runat="server">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>家庭电话：</strong>
																				</td>
																				<td>
																						<asp:TextBox ID="TxtHomePhone" runat="server" CssClass="input_out"></asp:TextBox>
																						<asp:Literal ID="musttrHomePhone" runat="server"></asp:Literal><asp:RequiredFieldValidator
																								ID="ReqTxtHomePhone" runat="server" Display="None" ErrorMessage="家庭电话不能为空" SetFocusOnError="false"
																								ControlToValidate="TxtHomePhone"></asp:RequiredFieldValidator>
																				</td>
																		</tr>
																		<tr id="trFax" runat="server">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>传真号码：</strong>
																				</td>
																				<td>
																						<asp:TextBox ID="TxtFax" runat="server" CssClass="input_out"></asp:TextBox>
																						<asp:Literal ID="musttrFax" runat="server"></asp:Literal><asp:RequiredFieldValidator
																								ID="ReqTxtFax" runat="server" Display="None" ErrorMessage="传真号码不能为空" SetFocusOnError="false"
																								ControlToValidate="TxtFax"></asp:RequiredFieldValidator>
																				</td>
																		</tr>
																		<tr id="trMobile" runat="server">
																				<td style="width: 15%;" class="tdbgleft">
																						<strong>手机号码：</strong>
																				</td>
																				<td>
																						<asp:TextBox ID="TxtMobile" runat="server" CssClass="input_out"></asp:TextBox>
																						<asp:Literal ID="musttrMobile" runat="server"></asp:Literal><asp:RequiredFieldValidator
																								ID="ReqTxtMobile" runat="server" Display="None" ErrorMessage="手机号码不能为空" SetFocusOnError="false"
																								ControlToValidate="TxtMobile"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
																										ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtMobile"
																										ErrorMessage="请输入正确的手机号码" ValidationExpression="^1(?:3|5|8)\d{9}$"></asp:RegularExpressionValidator>
																				</td>
																		</tr>
																		<tr id="trPHS" runat="server">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>小灵通号码：</strong>
																				</td>
																				<td>
																						<asp:TextBox ID="TxtPHS" runat="server" CssClass="input_out"></asp:TextBox>
																						<asp:Literal ID="musttrPHS" runat="server"></asp:Literal><asp:RequiredFieldValidator
																								ID="ReqTxtPHS" runat="server" Display="None" ErrorMessage="小灵通号码不能为空" SetFocusOnError="false"
																								ControlToValidate="TxtPHS"></asp:RequiredFieldValidator>
																				</td>
																		</tr>
																		<tr id="trAddress" runat="server">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>联系地址：</strong>
																				</td>
																				<td>
																						<asp:TextBox ID="TxtAddress" runat="server" CssClass="input_out"></asp:TextBox>
																						<asp:Literal ID="musttrAddress" runat="server"></asp:Literal><asp:RequiredFieldValidator
																								ID="ReqTxtAddress" runat="server" Display="None" ErrorMessage="联系地址不能为空" SetFocusOnError="false"
																								ControlToValidate="TxtAddress"></asp:RequiredFieldValidator>
																				</td>
																		</tr>
																		<tr id="trZipCode" runat="server">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>邮政编码：</strong>
																				</td>
																				<td>
																						<asp:TextBox ID="TxtZipCode" runat="server" MaxLength="6" CssClass="input_out"></asp:TextBox>
																						<asp:Literal ID="musttrZipCode" runat="server"></asp:Literal><asp:RequiredFieldValidator
																								ID="ReqTxtZipCode" runat="server" Display="None" ErrorMessage="邮政编码不能为空" SetFocusOnError="false"
																								ControlToValidate="TxtZipCode"></asp:RequiredFieldValidator><asp:CompareValidator
																										ID="CompareValidator1" runat="server" ErrorMessage="请输入正确的邮政编码" ControlToValidate="TxtZipCode"
																										Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
																				</td>
																		</tr>
																		<tr id="trTrueName" runat="server">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>真实姓名：</strong>
																				</td>
																				<td>
																						<asp:TextBox ID="TxtTrueName" runat="server" CssClass="input_out"></asp:TextBox>
																						<asp:Literal ID="musttrTrueName" runat="server"></asp:Literal><asp:RequiredFieldValidator
																								ID="ReqTxtTrueName" runat="server" Display="None" ErrorMessage="真实姓名不能为空" SetFocusOnError="false"
																								ControlToValidate="TxtTrueName"></asp:RequiredFieldValidator>
																				</td>
																		</tr>
																		<tr id="trIDCard" runat="server">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>身份证号码：</strong>
																				</td>
																				<td>
																						<asp:TextBox ID="TxtIDCard" runat="server" CssClass="input_out"></asp:TextBox>
																						<asp:Literal ID="musttrIDCard" runat="server"></asp:Literal><asp:RequiredFieldValidator
																								ID="ReqTxtIDCard" runat="server" Display="None" ErrorMessage="身份证号码不能为空" SetFocusOnError="false"
																								ControlToValidate="TxtIDCard"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
																										runat="server" ID="RegularExpressionValidator3" ValidationExpression="(^\d{15}$)|(^\d{17}([0-9]|X)$)"
																										ControlToValidate="TxtIDCard" ErrorMessage="请输入正确格式"></asp:RegularExpressionValidator>
																				</td>
																		</tr>
																		<tr id="trUserFace" runat="server">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>头像地址：</strong>
																				</td>
																				<td>
																						<asp:TextBox ID="TxtUserFace" runat="server" CssClass="input_out"></asp:TextBox>
																						<asp:Literal ID="musttrUserFace" runat="server"></asp:Literal><asp:RequiredFieldValidator
																								ID="ReqTxtUserFace" runat="server" Display="None" ErrorMessage="头像地址不能为空" SetFocusOnError="false"
																								ControlToValidate="TxtUserFace"></asp:RequiredFieldValidator>
																				</td>
																		</tr>
																		<tr id="trFaceWidth" runat="server">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>头像宽度：</strong>
																				</td>
																				<td>
																						<asp:TextBox ID="TxtFaceWidth" runat="server" CssClass="input_out"></asp:TextBox>
																						<asp:Literal ID="musttrFaceWidth" runat="server"></asp:Literal><asp:RequiredFieldValidator
																								ID="ReqTxtFaceWidth" runat="server" Display="None" ErrorMessage="头像宽度不能为空" SetFocusOnError="false"
																								ControlToValidate="TxtFaceWidth"></asp:RequiredFieldValidator>
																				</td>
																		</tr>
																		<tr id="trFaceHeight" runat="server">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>头像高度：</strong>
																				</td>
																				<td>
																						<asp:TextBox ID="TxtFaceHeight" runat="server" CssClass="input_out"></asp:TextBox>
																						<asp:Literal ID="musttrFaceHeight" runat="server"></asp:Literal><asp:RequiredFieldValidator
																								ID="ReqTxtFaceHeight" runat="server" Display="None" ErrorMessage="头像高度不能为空" SetFocusOnError="false"
																								ControlToValidate="TxtFaceHeight"></asp:RequiredFieldValidator>
																				</td>
																		</tr>
																		<tr id="trSign" runat="server">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>签名档：</strong>
																				</td>
																				<td>
																						<asp:TextBox ID="TxtSign" runat="server" TextMode="MultiLine" Width="300" Height="60"
																								CssClass="input_out"></asp:TextBox>
																						<asp:Literal ID="musttrSign" runat="server"></asp:Literal><asp:RequiredFieldValidator
																								ID="ReqTxtSign" runat="server" Display="None" ErrorMessage="签名档不能为空" SetFocusOnError="false"
																								ControlToValidate="TxtSign"></asp:RequiredFieldValidator>
																				</td>
																		</tr>
																		<tr id="trPrivacy" runat="server">
																				<td style="width: 15%" class="tdbgleft">
																						<strong>隐私设定：</strong>
																				</td>
																				<td>
																						<asp:DropDownList ID="DropPrivacy" runat="server">
																								<asp:ListItem Text="公开信息" Value="0"></asp:ListItem>
																								<asp:ListItem Text="只对好友公开" Value="1"></asp:ListItem>
																								<asp:ListItem Text="完全保密" Value="2"></asp:ListItem>
																						</asp:DropDownList>
																						<asp:Literal ID="musttrPrivacy" runat="server"></asp:Literal>
																				</td>
																		</tr>
																</tbody>
														</table>
												</div>
										</li>
								</ul>
						</div>
				</div>
		</asp:Panel>
</div>
<asp:Panel ID="PnlStep3" runat="server" Visible="false" Width="100%">
		<div id="main" class="reg">
				<h2>第三步：注册结果<img src="../App_Themes/UserThem/images/regl3.gif" width="242" height="14" alt="" /></h2>
				<asp:Literal ID="LitRegResult" runat="server"></asp:Literal></div>
</asp:Panel> 
<div class="big-bj-b"></div>
<div style="clear:both;"></div>
</div>

    </form>
<%Call.Label("{ZL.Label id=\"全站底部\"/}"); %>
</body>
</html>