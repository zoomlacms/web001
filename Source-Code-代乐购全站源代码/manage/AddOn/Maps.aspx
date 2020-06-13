<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_Maps, App_Web_t05qjb42" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>地图管理</title>
<link href="/App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&nbsp;&gt;&gt;&nbsp;其他管理&nbsp;&gt;&gt;&nbsp;地图管理    </div>

<asp:GridView RowStyle-HorizontalAlign="Center" ID="GridView1" DataKeyNames="mid"
	Width="100%" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="10"
	OnPageIndexChanging="GridView1_PageIndexChanging">
	<Columns>
		<asp:TemplateField HeaderText="选中">
			<HeaderStyle Width="5%" />
			<EditItemTemplate>
				<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
			</EditItemTemplate>
			<ItemTemplate>
				<asp:CheckBox ID="SelectCheckBox" runat="server" />
			</ItemTemplate>
			<ItemStyle CssClass="tdbg" />
		</asp:TemplateField>
		<asp:BoundField DataField="mid" HeaderText="序号">
			<HeaderStyle Width="5%" />
			<ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
		</asp:BoundField>
		<asp:TemplateField HeaderText="纬度">
			<HeaderStyle Width="26%" />
			<ItemTemplate>
				<%# DataBinder.Eval(Container.DataItem,"lx")%>
			</ItemTemplate>
			<ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
		</asp:TemplateField>
		<asp:TemplateField HeaderText="经度">
			<HeaderStyle Width="26%" />
			<HeaderStyle />
			<ItemTemplate>
				<%#DataBinder.Eval(Container.DataItem, "ly")%>
			</ItemTemplate>
			<ItemStyle CssClass="tdbg" />
		</asp:TemplateField>
		<asp:TemplateField HeaderText="标注">
			<HeaderStyle Width="26%" />
			<ItemTemplate>
				<%# DataBinder.Eval(Container.DataItem,"type")%>
			</ItemTemplate>
			<ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
		</asp:TemplateField>
		<asp:TemplateField HeaderText="操作">
			<HeaderStyle Width="12%" />
			<ItemTemplate>
				<%--<a href='EditMap.aspx?Action=Modify&AUId=<%# Eval("mid")%>'>修改</a>--%>
				<a href="javascript:if(confirm('你确定要删除吗?')) window.location.href='Maps.aspx?AUId=<%# Eval("mid")%>';">删除</a>
			</ItemTemplate>
			<ItemStyle CssClass="tdbg" />
		</asp:TemplateField>
	</Columns>
	<RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
	<SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
	<PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
	<HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
	<PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
</asp:GridView>
<div class="clearbox"></div>
<table class="TableWrap" border="0" cellpadding="0" cellspacing="0" width="100%" id="sleall">
	<tr>
		<td style="height: 21px">
			<asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="全选" />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:Button ID="btndelete" class="C_input" Style="width: 110px;" runat="server" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项删除吗？')}"
				Text="删除选定地图" OnClick="btndelete_Click" />
			<input name="Cancel" type="button" style="width: 110px;" class="C_input inputbutton"
				id="Cancel" value="添加新地图" onclick="javascript:window.location.href='AddMap.aspx'" />
		</td>
	</tr>
	<tr>
		<td style="height: 21px"></td>
	</tr>
</table>
</form>
</body>
</html>