﻿<%@ page language="C#" autoeventwireup="true" inherits="WebShop_UserCartOne, App_Web_tcusk5nq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>加入购物车</title>
<link rel="stylesheet" type="text/css" href="user/skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="user/skin/user_user.css" />
<script src="JS/ajaxrequest.js"></script>
<script type="text/javascript">
    var ajax = new AJAXRequest();
    function keydo(ids) {
        var num = document.getElementById("num" + ids).value;
        var prolists = document.getElementById("prolists").value;
        ajax.get(
        "/prompt/ShopCart/UpdateShopCar.aspx?cid=" + ids + "&num=" + num + "&menu=update&prolist=" + prolists,
        function (obj) {
            var pri = obj.responseText;
            if (pri != null) {
                var prics = pri.split('|');
                if (prics != null && prics.length > 1) {
                    document.getElementById("alljiage").innerText = prics[0];
                    document.getElementById("price" + ids).innerText = prics[1];
                    document.getElementById("currentpri" + ids).innerText = prics[2];
                    document.getElementById("num" + ids).innerText = prics[3];

                }
            }
        }
        );
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<!-- 顶部代码布局 -->
<div id="m_top">
	<h1 class="m_logo"></h1>
	<h1 style="float: right;">
		<ul>
			<li><a href="/">首页</a></li>
			<li><a href="#">新闻</a></li>
			<li><a href="#">图库</a></li>
			<li><a href="#">下载</a></li>
			<li><a href="#">商城</a></li>
			<li><a href="#">论坛</a></li>
			<li style="float: right; width: 140px; background: url();"><a href="javascript:alert('设为首页');">
				设为首页</a> | <a href="javascript:alert('加入收藏');">加入收藏</a></li>
		</ul>
	</h1>
</div>

<div class="s_body">
	<!-- 左边开始 -->
	<div class="s_bleft">
		<div class="i_whyj">
			<h1>
				体验卓越的购物：</h1>
			<ul>
				<li>在线支付灵项方便 </li>
				<li>透明流程随心所欲 </li>
				<li>送货上门服务周全 </li>
				<li>包装精美想您所想 </li>
				<li>正规发票完善质保 </li>
			</ul>
			<div class="cleardiv" style="height: 15px;">
			</div>
			<h2 style="color: #FF6600">用户导航</h2>
			<h3><a href="/user/">进入会员中心</a></h3>
		</div>
	</div>
	<!-- 左边结束 -->
	<!-- 右边开始 -->
	<div class="s_bright">
		<div class="rg_inout">
			<h1>购物车</h1>
			<h2>
				第一步:加入购物车&nbsp;<img src="/user/images/regl1.gif" width="242" height="14" /></h2>
			<div class="cleardiv"></div>
				 <div style="width: 100%; margin-bottom: 5px">
				<asp:Label ID="Label1" runat="server" BorderWidth="0px" ForeColor="Red"></asp:Label>&nbsp;</div>
			<ul style="background-color: GrayText; width: 100%;color:#fff;text-align: center; ">
				<li style="width: 9.5%; ">编号</li>
				<li style="width: 20%; ">商品名称</li>
				<li style="width: 10%;">商品属性</li>
				<li style="width: 5%; ">单位</li>
				<li style="width: 5%; ">数量</li>
				<li style="width: 10%; ">市场价</li>
				<li style="width: 10%; ">零售价</li>
				<li style="width: 10%; ">折扣</li>
				<li style="width: 10%; ">金额</li>
				<li style="width: 10%; ">操作</li>
			</ul>
			<asp:Repeater ID="cartinfo" runat="server" OnItemDataBound="cartinfo_ItemDataBound">
				<ItemTemplate>
					<ul <%#(Eval("Bindpro","{0}")=="")?"":"style=background-color:#E6E6E6"%> style="width: 100%;
						min-height: 47px">
						<li style="width: 9.5%; text-align: center;">
							<%#getprono(Eval("proid","{0}"))%></li>
						<li style="width: 20%; text-align: center;">
							<%#GetProtype(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%><a href='Shop.aspx?ItemID=<%#Eval("proid")%>'
								target="_blank"><%#Eval("proname")%></a></li>
						<li style="width: 10%; text-align: center;">
							<%#Eval("Attribute")%><%--<%#getproinfo(Eval("proid","{0}"))%>--%></li>
						<li style="width: 5%; text-align: center;">
							<%#getProUnit(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
						<li style="width: 5%; text-align: center;">
							<input id='num<%#Eval("id") %>' value='<%#DataBinder.Eval(Container, "DataItem.pronum", "{0}")%>'
								style="width: 30px" height='20px' onblur="keydo('<%#Eval("id") %>')" /></li>
						<li style="width: 10%; text-align: center;">
							<%#getjiage(Eval("proclass","{0}"),"1",DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
						<li style="width: 10%; text-align: center;">
							<%#getjiage(Eval("proclass", "{0}"), "2", DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
						<li style="width: 10%; text-align: center;">
							<%#getproscheme(Eval("ID","{0}"))%></li>
						<li style="width: 10%; text-align: center;"><span id='price<%#Eval("id") %>' name='price<%#Eval("id") %>'>
							<%#getprojia(Eval("ID","{0}"))%></span></li>
						<li style="width: 10%; text-align: center;"><a href="UserCartOne.aspx?menu=del&cid=<%#Eval("id")%>"
							onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></li>
					</ul>
					<asp:Repeater ID="Repeater2" runat="server">
						<ItemTemplate>
							<ul style="background-color: #F6F6F6">
								<li style="width: 9.5%; text-align: center;">
									<%#getproimg(Eval("id","{0}"))%></li>
								<li style="width: 20%; text-align: center;">
									<%#GetProtype(DataBinder.Eval(Container, "DataItem.id", "{0}"))%><%#Eval("proname")%></li>
								<li style="width: 8%; text-align: center;">
									<%#getProUnit(DataBinder.Eval(Container, "DataItem.id", "{0}"))%></li>
								<li style="width: 12.5%; text-align: center;">1</li>
								<li style="width: 12.5%; text-align: center;">
									<%#getjiage(Eval("proclass","{0}"),"1", DataBinder.Eval(Container, "DataItem.id", "{0}"))%></li>
								<li style="width: 12.5%; text-align: center;">
									<%#getjiage(Eval("proclass", "{0}"), "2", DataBinder.Eval(Container, "DataItem.id", "{0}"))%></li>
								<li style="width: 12.5%; text-align: center;">
									<%#getprojia(Eval("ID","{0}"))%></li>
								<li style="width: 12.5%; text-align: center;"><a href="UserCartOne.aspx?menu=del&cid=<%#Eval("id")%>"
									onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></li>
							</ul>
						</ItemTemplate>
					</asp:Repeater>
				</ItemTemplate>
			</asp:Repeater>
			<asp:HiddenField ID="prolists" runat="server" />

	<div style="margin-top:3px;margin-left:12px;color:#ccc;"><asp:Label ID="yhq" runat="server" Text="优惠券:" ForeColor=Red  Font-Size=12px></asp:Label>&nbsp&nbsp 
	<asp:TextBox ID="yhqtext" runat="server" BorderColor=Red BorderStyle=Solid Height=18px width=90px style="margin-bottom:-2px;"></asp:TextBox></span>
	<span style="margin-top:3px;margin-left:12px;"><asp:Label ID="label" runat="server" Text="密&nbsp&nbsp  码:" ForeColor=Red  Font-Size=12px></asp:Label>&nbsp&nbsp 
	<asp:TextBox ID="yhqpwd" runat="server" BorderColor=Red BorderStyle=Solid Height=18px width=90px style="margin-bottom:-2px;"></asp:TextBox>
	提示：只要填入合法的优惠券，系统会在下一步结算时计折。</div>
  <div class="cleardiv"></div>
  <div style="margin-left:170px; margin-bottom:5px;">
				共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>个商品
					<asp:Label ID="Toppage" runat="server" Text="" />
					<asp:Label ID="Nextpage" runat="server" Text="" />
					<asp:Label ID="Downpage" runat="server" Text="" />
					<asp:Label ID="Endpage" runat="server" Text="" />
					页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页
					<asp:Label ID="pagess" runat="server" Text="" />个商品/页 转到第<asp:DropDownList ID="DropDownList1"  runat="server" AutoPostBack="True">
					</asp:DropDownList>页
			</div>
			<div class="cleardiv"></div>
			<div>
			<div class="cart_title">收货人信息</div>
				<ul style="background-color: #F6F6F6; width: 100%; height: auto">
					<li style="width: 25%; text-align: right; float: left">收货人姓名:</li>
					<li style="width: 25%; text-align: center; float: left">
					<asp:Literal ID="txtHuoName" runat="server"></asp:Literal></li>
					<li style="width: 25%; text-align: right; float: left">电子邮件地址:</li>
					<li style="width: 25%; text-align: center; float: left">
					<asp:Literal ID="txtEmail" runat="server"></asp:Literal></li>
					<li style="width: 25%; text-align: right; float: left">详细地址:</li>
					<li style="width: 25%; text-align: center; float: left">
					<asp:Literal ID="txtJiedao" runat="server"></asp:Literal></li>
					<li style="width: 25%; text-align: right; float: left">邮政编码:</li>
					<li style="width: 25%; text-align: center; float: left">
					<asp:Literal ID="txtZipCode" runat="server"></asp:Literal></li>
					<li style="width: 25%; text-align: right; float: left">电话:</li>
					<li style="width: 25%; text-align: center; float: left">
					<asp:Literal ID="txtPhone" runat="server"></asp:Literal></li>
					<li style="width: 25%; text-align: right; float: left">手机:</li>
					<li style="width: 25%; text-align: center; float: left">
					<asp:Literal ID="txtMobile" runat="server"></asp:Literal></li>
					<li style="width: 25%; text-align: right; float: left">标志建筑:</li>
					<li style="width: 25%; text-align: center; float: left"></li>
					<li style="width: 25%; text-align: right; float: left">最佳送货时间:</li>
					<li style="width: 25%; text-align: center; float: left"></li>
				</ul>
				<asp:HiddenField ID="Receiver" runat="server" Value="" />
				<asp:HiddenField ID="Email" runat="server" Value="" />
				<asp:HiddenField ID="Phone" runat="server" Value="" />
				<asp:HiddenField ID="ZipCode" runat="server" Value="" />
				<asp:HiddenField ID="Mobile" runat="server" Value="" />
				<asp:HiddenField ID="Jiedao" runat="server" Value="" />
			</div>
			<div>
			    <div class="cart_title">配送方式</div>
				<ul style="background-color: #F6F6F6;text-align: center; width: 100%">
					<li style="width: 10%; "></li>
					<li style="width: 20%; ">名称</li>
					<li style="width: 48%; ">描述</li>
					<li style="width: 10%; ">费用</li>
				</ul>
				<asp:Repeater ID="Repeater2" runat="server">
					<ItemTemplate>
						<ul style="background-color: #F6F6F6; width: 100%">
							<li style="width: 10%; text-align: center;">
								<input id="DeliverID<%#Eval("ID") %>" <%#Eval("selectto","{0}")=="1"?"checked":"" %>
									name="DeliverID" type="radio" value="<%#Eval("ID")%>" onclick="GetDeliver(this)" /></li>
							<li style="width: 20%; text-align: center;">
								<%#Eval("deliname")%></li>
							<li style="width: 48%; text-align: center;">
								<%#Eval("deliinfo")%></li>
							<li style="width: 10%; text-align: center;"><%#Eval("delitype", "￥{0:F}元")%></li>
						</ul>
					</ItemTemplate>
				</asp:Repeater>
			</div>
			<div>
			<div class="cart_title">支付方式</div>
				<ul>
					<li style="width: 10%; text-align: center;"></li>
					<li style="width: 20%; text-align: center;">名称</li>
					<li style="width: 48%; text-align: center;">描述</li>
					<li style="width: 20%; text-align: center;">支付手续费</li>
				</ul>
				<asp:Repeater ID="Repeater3" runat="server">
					<ItemTemplate>
						<ul>
							<li style="width: 10%; text-align: center;"><input id="PayPlatID<%#Eval("PayPlatID") %>" <%#Eval("IsDefault","{0}")=="True"?"checked":"" %>	name="PayPlatID" type="radio" value="<%#Eval("PayPlatID") %>" /></li>
							<li style="width: 20%; text-align: center;"><%#Eval("PayPlatName")%></li>
							<li style="width: 48%; text-align: center;"><%#Eval("PayPlatinfo")%></li>
							<li style="width: 20%; text-align: center;"><%#Eval("Rate")%>%</li>
						</ul>
					</ItemTemplate>
				</asp:Repeater>
			</div>

		   <div style=" height:346px; clear:both;">
		  	<div class="cart_title">其他信息</div>
				<ul style="background-color: #F6F6F6; width: 100%">
					<li style="width: 100%; padding-left:30px; ">
						使用积分：<asp:TextBox ID="ujifen" runat="server">0</asp:TextBox><br />
						您当前的可用积分为：<asp:Literal ID="liUserExp" runat="server"></asp:Literal>，本订单最多可以使用0 金币.<br />
						开发票：<input id="cbInv" type="checkbox" runat='server' />
						发票类型：<asp:DropDownList ID="InvType" runat="server"> </asp:DropDownList><font color="red">(若需要发票，请勾选单选框后再填写相关内容。)</font><br />
						发票抬头：<asp:TextBox ID="txtInvinfo" runat="server"></asp:TextBox><br />
						发票内容：<asp:TextBox ID="ddInv" runat="server" TextMode="MultiLine"  Width="250px" Height="50px"></asp:TextBox><br />
						订单附言：<asp:TextBox ID="txtremark" runat="server"
						Height="57px" Width="509px"></asp:TextBox>
					</li>
					<li style="width: 100%; text-align: center;">缺货处理:
						<input id="Radio1" name="qh" type="radio" value="0" checked="checked" />等待所有商品备齐后再发
						<input id="Radio2" name="qh" type="radio" value="1" />取消订单
						<input id="Radio3" name="qh" type="radio" value="2" />与店主协商 </li>
				</ul>
			</div>
			<div style="float: left; width: 100%">
				<asp:Literal ID="ModelHtml" runat="server"></asp:Literal>
				<div class="clear"></div>
			</div>

			<div style="clear:both;">
				<ul>
					<li style="width: 100%; background-color: GrayText; color: White; font-weight: bold">
						费用总计</li>
				</ul>
				<ul style="background-color: #F6F6F6; width: 100%; height: auto;">
					<li style="width: 100%; text-align: center; height: auto; text-align: right">
						<%--该订单完成后，您将获得 8 书币 ，以及价值 ￥0.00元的红包。--%><br />
						商品总价：￥<asp:Label ID="alljiage" runat="server" Text=""></asp:Label>元
						<br />
<%--                            应付款金额： ￥<asp:Label ID="alljiage2" runat="server" Text=""></asp:Label>元
						<br />--%>
					</li>
				</ul>
			</div>
			<div style="float: left; width: 100%">
				<ul>
					<li style="width: 250px; text-align: left;"></li>
					<li>&nbsp;</li><li style="width: 250px; text-align: left;">
						<asp:Button ID="Button1" runat="server" Text="去收银台结帐" OnClick="Button1_Click" />
						<asp:HiddenField ID="project" runat="server" />
						<asp:HiddenField ID="jifen" runat="server" />
						<asp:HiddenField ID="hfproclass" runat="server" />
					</li>
				</ul>
			</div>
			<div class="cleardiv" style="height: 30px; width: 100%"></div>
			<div id="Div1" runat="server">
				<b>[促销内容:]</b></div>
			<div id="Label2" runat="server">
			</div>
			<div class="cleardiv"></div>
			<div id="Label3" runat="server" style="padding-top: 10px;">
				<ul style="background-color: GrayText;">
					<li style="width: 6.5%; text-align: center; color: White">选择</li>
					<li style="width: 4%; text-align: center; color: White">ID</li>
					<li style="width: 9.5%; text-align: center; color: White">图片</li>
					<li style="width: 23%; text-align: center; color: White">商品名称</li>
					<li style="width: 8%; text-align: center; color: White">单位</li>
					<li style="width: 8.5%; text-align: center; color: White">数量</li>
					<li style="width: 12.5%; text-align: center; color: White">市场价</li>
					<li style="width: 12.5%; text-align: center; color: White">零售价</li>
					<li style="width: 12.5%; text-align: center; color: White">优惠价</li>
				</ul>
				<asp:Repeater ID="Repeater1" runat="server">
					<ItemTemplate>
						<ul>
							<li style="width: 6.5%; text-align: center;">
								<input type="radio" name="projuct" value="<%#Eval("ID") %>" /></li>
							<li style="width: 4%; text-align: center;">
								<%#Eval("ID") %></li>
							<li style="width: 9.5%; text-align: center;">
								<%#getproimg(DataBinder.Eval(Container, "DataItem.id", "{0}"))%></li>
							<li style="width: 23%; text-align: center;">
								<%#GetProtype(Eval("id", "{0}"))%><%#Eval("proname")%></li>
							<li style="width: 8%; text-align: center;">
								<%#getProUnit(DataBinder.Eval(Container, "DataItem.id", "{0}"))%></li>
							<li style="width: 8.5%; text-align: center;">1</li>
							<li style="width: 12.5%; text-align: center;">
								<%#shijia(DataBinder.Eval(Container, "DataItem.ShiPrice", "{0}"))%></li>
							<li style="width: 12.5%; text-align: center;">
								<%#shijia(DataBinder.Eval(Container, "DataItem.LinPrice", "{0}"))%></li>
							<li style="width: 12.5%; text-align: center;">
								<%#Getprojectjia(Eval("ID","{0}")) %></li>
						</ul>
					</ItemTemplate>
				</asp:Repeater>
			</div>
			<div class="cleardiv"></div>
		</div>
	</div>
	<!-- 右边结束 -->
</div>
<div class="cleardiv"></div>
<div class="m_copyright">
	<ul>
		<a href="#">关于我们</a> | <a href="#">常见问题</a> | <a href="#">使用条款</a> | <a href="#">隐私声明</a>
		| <a href="#">安全提示</a> | <a href="#">意见反馈</a> | <a href="#">联系我们</a> | <a href="#">招聘信息</a>
		</ul>
	<h1> &copy;2011 <a href="<%Call.Label("{$SiteURL/}"); %>" target="_blank"><%Call.Label("{$SiteName/}"); %> 版权所有。</h1>
</div>
</form>
</body>
</html>
<script type="text/javascript">
var req;
var AJAXflag = false;
function createre() {
	//创建XMLHttpRequest实例
	if (window.XMLHttpRequest) {   //Mozilla 浏览器    
		req = new XMLHttpRequest();
		if (req.overrideMimeType) {//设置MiME类别    
			req.overrideMimeType("text/xml");
		}
	} else if (window.ActiveXObject) { // IE浏览器    
		try {
			req = new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch (e) {
			try {
				req = new ActiveXObject("Microsoft.XMLHTTP");
			}
			catch (e) {
			}
		}
	}
	if (!req) { // 异常,创建对象实例失败    
		//"不能创建XMLHttpRequest对象实例"    
		window.alert("不能创建XMLHttpRequest对象实例..");
		return false;
	}
}
function callback() //回调函数，对服务端的响应处理，监视response状态
{
	if (req.readyState == 4) {
		if (req.status == 200) //http状态200表示OK
		{
			AjAXflag = true;
			//alert(req.responseText);
			var strTemp = req.responseText;
			var sjiage=document.getElementById("alljiage").innerHTML;
			var str = strTemp * 1 + sjiage * 1;
			var st = parseFloat(str).toFixed(2);
			//alert(strTemp);
			document.getElementById("alljiage2").innerHTML = st;
		}
		else //http返回状态失败
		{
			alert("操作失败！");
		}
	}
	else //请求状态还没有成功，页面等待
	{
	}
}
function tjAjax(url) {
	if (!req) {
		createre();
	}
	req.onreadystatechange = callback; //指定回调函数
	req.open("get", url, true); //与服务端建立连接(请求方式post或get，地址,true表示异步)
	req.send(null); //
}
function GetDeliver(Pobj) {
	//alert(Pobj.value);
	tjAjax("UserCartOne.aspx?status=1&DeliverID=" + Pobj.value);
}
</script>