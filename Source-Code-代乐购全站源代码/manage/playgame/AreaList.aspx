﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_playgame_AreaList, App_Web_hbztkd4i" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>分区管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
   <script language="javascript">
    function CheckAll(spanChk)//CheckBox全选
	{
    var oItem = spanChk.children;
    var theBox=(spanChk.type=="checkbox")?spanChk:spanChk.children.item[0];
    xState=theBox.checked;
    elm=theBox.form.elements;
    for(i=0;i<elm.length;i++)
    if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
    {
        if(elm[i].checked!=xState)
        elm[i].click();
    }
	}
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>分区管理</span> &gt;&gt;《<%=gameName%>》分区列表</div>
    <div class="clearbox">
    </div>
    <div>
     
        
    </div>
    <div style="text-align:center">
      
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
       
        <td width="10%" class="title">分区ID</td>
        <td width="20%" class="title">分区名称</td>
        <td width="15%" class="title">通讯地址</td>
        <td width="15%" class="title">兑换比例</td>
        <td width="30%" class="title"> 操作</td>
      </tr>
        <asp:Repeater ID="gvCard" runat="server">       
        <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">        
        <td height="22" align="center"><%#Eval("ID") %></td>        
        <td height="22" align="center"><%#Eval("areaName") %></td>
        <td height="22" align="center"><%#Eval("serverIP") %></td>
        <td height="22" align="center"><%#Eval("exchangeScale") %></td>
        <td height="22" align="center"><a href="GameConfig.aspx?areaid=<%#Eval("ID") %>" ><%# Returnrule(Eval("ID","{0}"))%></a>
       &nbsp;&nbsp;<a href="updateGA.aspx?ID=<%#Eval("ID") %>" >修改</a>
       &nbsp;&nbsp;<a href="AreaList.aspx?delete=<%#Eval("ID") %>&gID=<%#Eval("gID") %>" onclick="return confirm('确实要删除吗？删除后不能恢复!');">删除</a></td>
      </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
        <td height="22" colspan="6" align="center" class="tdbgleft">
        共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        个信息
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
            Text="" />页
        <asp:Label ID="pagess" runat="server" Text="" />个信息/页 转到第<asp:DropDownList ID="DropDownList1"
            runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" >
        </asp:DropDownList>
        页
              </td>
      </tr>
    </table>
    
    </form>
</body>
</html>
