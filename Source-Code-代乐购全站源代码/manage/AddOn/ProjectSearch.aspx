﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_ProjectSearch, App_Web_t05qjb42" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>项目检索</title>

 <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
 function CheckKeyword()
 {
   if(document.form1.SearchValue.value=="")
    {
           alert("请输入要搜索的关键字！");
           form1.SearchValue.focus();
           return false
     }
 }    
</script>
</head>
<body>
<form id="form1" runat="server">
    <div class="r_navigation">
	
	<span>后台管理</span>&gt;&gt;<span>项目管理</span>&gt;&gt;<span><a href="ProjectManage.aspx"> 项目列表</a></span>&gt;&gt;<span> 项目检索</span>	</div> 
                                    <div class="clearbox"></div> 
                                    <div class="divbox" id="nocontent" runat="server" visible="false">无相关数据</div>
                                    <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="border"
       DataKeyNames="ProjectID" PageSize="10" OnPageIndexChanging="Egv_PageIndexChanging" Width="100%" OnRowCommand="GridView1_RowCommand" EmptyDataText="无任何相关数据">
        <Columns>                 
            <asp:BoundField DataField="ProjectID" HeaderText="ID" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="5%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="项目名称" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>  
                    <%#DataBinder.Eval(Container.DataItem, "ProjectName").ToString()%>      
                </ItemTemplate>
                <HeaderStyle Width="15%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>                        
           
            <asp:TemplateField HeaderText="已完成" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="8%" />
                <ItemTemplate>  
                 <%# (int)Eval("Status") == 0 ? "<span style=\"color: #ff0033\">×</span>" : "√"%>                
                         
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
           </asp:TemplateField> 
           <asp:TemplateField HeaderText="已审核" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="8%" />
                <ItemTemplate>  
                 <%# (bool)Eval("Passed") ==false ? "<span style=\"color: #ff0033\">×</span>" : "√"%>                
                         
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
           </asp:TemplateField>
                              
              <asp:BoundField DataField="StartDate"  DataFormatString="{0:d}" HtmlEncode="false" HeaderText="开始时间" ItemStyle-HorizontalAlign="Center" >
                <HeaderStyle Width="8%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>    
             
        　</Columns>
         <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
        <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView> 
         <div class="clearbox"></div>  
     <asp:DropDownList ID="DLType" runat="server">
    <asp:ListItem Value="0" Text="按名称" Selected="True"></asp:ListItem>
    <asp:ListItem Value="1" Text="按时间"></asp:ListItem>
    <asp:ListItem Value="2" Text="按ID"></asp:ListItem>        
    <asp:ListItem Value="3" Text="按描述"></asp:ListItem>
    <asp:ListItem Value="4" Text="按客户名称"></asp:ListItem>        
    </asp:DropDownList> 
    <asp:TextBox runat="server" ID="SearchValue" class="l_input" Text="关键字"></asp:TextBox><asp:Button ID="Search" runat="server" Text="搜索" OnClientClick="return CheckKeyword();" OnClick="Search_Click" class="C_input"/>
</form>
</body>
</html>
