<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.Info.ExpHis, App_Web_43auybqr" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>积分明细</title>
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="us_topinfo">
                <div class="us_showinfo">
         </span>您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">
                                会员中心</a></span> &gt;&gt; <span><a href="UserInfo.aspx">账户管理</a></span><span> &gt;&gt; </span><span>积分明细记录</span></span> 
    </div></div>
    <div class="us_seta" style="margin-top:10px;" id="manageinfo" runat ="server">
        <h1 style="text-align:center">积分明细记录</h1>
        <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ExpHisID" PageSize="10" OnPageIndexChanging="Egv_PageIndexChanging" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" EmptyDataText="暂无积分明细记录">
            <Columns> 
                <asp:BoundField DataField="HisTime" HeaderText="日期时间">
                <HeaderStyle Width="17%" />
                <ItemStyle HorizontalAlign="Center" />                    
                </asp:BoundField>
                <asp:BoundField DataField="OperatorIP" HeaderText="操作IP">
                <HeaderStyle Width="10%" />
                <ItemStyle HorizontalAlign="Center" />                    
                </asp:BoundField> 
                <asp:BoundField DataField="score" HeaderText="数量">
                <HeaderStyle Width="10%" />
                <ItemStyle HorizontalAlign="Center" />                    
                </asp:BoundField>
                <asp:BoundField DataField="Detail" HeaderText="备注">
                <HeaderStyle Width="40%" />
                <ItemStyle HorizontalAlign="Left" />                    
                </asp:BoundField>
                <asp:TemplateField HeaderText="操作人" >
                    <ItemTemplate>
                    <%# GetOperator(Eval("Operator","{0}")) %>
                    </ItemTemplate>
                    <HeaderStyle Width="10%" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="查看" >
                <ItemTemplate>
                    <a href="ViewExpHis.aspx?PID=<%# Eval("ExpHisID","{0}") %>">查看</a>
                  </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <EmptyDataRowStyle BackColor="White" Font-Bold="True" ForeColor="#000000" Height="100px" HorizontalAlign="Center" VerticalAlign="Middle" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="" Height="25px" />
            <EditRowStyle BackColor="" />
            <SelectedRowStyle BackColor="#FFFFFF" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#f1f1f1" ForeColor="#333333" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#FFFFFF" Font-Bold="True" ForeColor="#333333" />
            <AlternatingRowStyle BackColor="White" />
            <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
        </asp:GridView>
    </div>
    </form>
</body>
</html>
