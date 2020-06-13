<%@ page language="C#" autoeventwireup="true" inherits="manage_Plus_ADAdbuy, App_Web_0f1xyepu" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<title>广告审核</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script language="javascript" type="text/javascript">
    var tID = 0;
    //var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5", "TabTitle6", "TabTitle7");
    var arrTabs = new Array("Div0", "Div1", "Div2", "Div3", "Div4", "Div5", "Div6", "Div7");
    //添加专题
    function AddToSpecial() {
        var urlstr = "SpecialList.aspx";
        var isMSIE = (navigator.appName == "Microsoft Internet Explorer");
        var special = null;
        if (isMSIE) {
            special = window.showModalDialog(urlstr, "self,width=200,height=150,resizable=yes,scrollbars=yes");
            if (special != "") {
                var arr = special.split(',');
                var odlsp = document.getElementById("HdnSpec").value;
                var odlarr = odlsp.split(',');
                var s = true;
                for (var arri = 0; arri < odlarr.length; arri++) {
                    if (odlarr[arri] == arr[0]) {
                        s = false;
                    }
                }
                if (s) {
                    AddRow(arr[1], arr[0], document.all.SpecTable, "此专题", 2);
                    document.getElementById("HdnSpec").value = odlsp + arr[0] + ",";
                }
            }
        }
        else {
            window.open(urlstr, 'newWin', 'modal=yes,width=200,height=150,resizable=yes,scrollbars=yes');
        }
    }

    function pload() {
        window.onload = function () { alert('ad'); }
        var ID = '<%=Request.QueryString["type"]%>';
        if (ID != '') {

            document.getElementById(arrTabs[ID].toString()).style.display = "";
            document.getElementById(arrTabs[ID].toString()).className = "titlemouseover";
            document.getElementById("Div").className = "tabtitle";

        } else {
            document.getElementById("Div").style.display = "";
            document.getElementById("Div").className = "titlemouseover";
            tID = ID;
        }

        
    }
</script>
</head>
<body onload="pload()">
<form id="form1" runat="server">
 <div class="r_navigation">
        后台管理 &gt;&gt; 扩展功能 &gt;&gt; <a href="ADZoneManage.aspx">广告管理</a> &gt;&gt; 广告审核&nbsp;<span style="color:Red">[<a href="ADZone.aspx" style="color: Red" target="_blank">添加版位</a>]</span>&nbsp;
        <span class="line"><asp:TextBox ID="TxtADName" runat="server" class="l_input" style="vertical-align:middle;"> 版位名称</asp:TextBox><asp:Button ID="BntSearch" runat="server" Text="查询" OnClick="BntSearch_Click" class="C_input"  style="vertical-align:middle;"/></span>
    </div>

    <div>
        <div class="clearbox">
        </div>
    </div>
    <div class="divbox" id="nocontent" runat="server">
        暂无版位信息</div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ZoneID"
        Width="100%" AllowPaging="True" OnRowCommand="Lnk_Click" CssClass="border"
        OnRowDataBound="GridView1_RowDataBound" EnableModelValidation="True">
        <Columns>
            <asp:TemplateField HeaderText="选择">
                <ItemTemplate>
                    <asp:CheckBox ID="chkSel" runat="server" />
                </ItemTemplate>
                <HeaderStyle Wrap="False" />
                <ItemStyle Width="5%" HorizontalAlign="Center" Wrap="True" />
            </asp:TemplateField>
            <asp:BoundField HeaderText="序号" DataField="ID">
                <ItemStyle Width="5%" HorizontalAlign="Center" Wrap="False" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="申请人">
                <ItemTemplate>
                    <asp:HyperLink ID="LnkZoneName" ToolTip='<%# SetName(Eval("UID", "{0}"))%>' NavigateUrl='<%# Eval("ID", "ADManage.aspx?ID={0}") %>'
                        runat="server"><%# SetName(Eval("UID", "{0}"))%></asp:HyperLink>
                </ItemTemplate>
                <ItemStyle Width="10%" HorizontalAlign="Center" Wrap="True" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="申请时间">
                <ItemTemplate>
                    <asp:HyperLink ID="LnkTime" ToolTip='<%# SetTime(Eval("Time", "{0}"))%>'
                        runat="server"><%# SetTime(Eval("Time", "{0}"))%></asp:HyperLink>
                </ItemTemplate>
                <ItemStyle Width="10%" HorizontalAlign="Center" Wrap="True" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="申请天数">
                <HeaderStyle Width="10%" />
                <ItemTemplate>
                    <asp:HyperLink ID="LnkShowTime" ToolTip='<%# Eval("ShowTime")%>'
                        runat="server"><%# Eval("ShowTime")%></asp:HyperLink>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" Wrap="True" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="版位名称">
                <HeaderStyle Width="25%" />
                <ItemTemplate>
                    <asp:HyperLink ID="LnkADID" ToolTip='<%# SetZoomName(Eval("ADID", "{0}"))%>'
                        runat="server"><%# SetZoomName(Eval("ADID", "{0}"))%></asp:HyperLink>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" Wrap="False" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="广告素材">
                <HeaderStyle Width="10%" />
               <ItemTemplate>
			    <%#LnkFiles(Eval("Files", "{0}"))%>
			
			   </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" Wrap="True" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
                <HeaderStyle />
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="AddAdv" CommandArgument='<%# Eval("ID") %>'>待审核</asp:LinkButton>
                    |
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ID") %>'>已审核</asp:LinkButton>
                    |
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Copy" CommandArgument='<%# Eval("ID") %>'>驳回</asp:LinkButton><br />
                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Del" OnClientClick="return confirm('确定要删除此版位吗？');"
                        CommandArgument='<%# Eval("ID") %>'>取消审核</asp:LinkButton>|
                    <asp:LinkButton ID="LinkButton6" runat="server" CommandName="SetAct" CommandArgument='<%# Eval("ID") %>'><%# GetUnActive(DataBinder.Eval(Container.DataItem, "ADID").ToString())%></asp:LinkButton>
                </ItemTemplate>
                <ItemStyle Width="15%" HorizontalAlign="Center" Wrap="True" />
            </asp:TemplateField>
        </Columns>
        <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None"
            Height="30px" Font-Overline="False" />
        <PagerSettings FirstPageText="" LastPageText="" Mode="NextPrevious" NextPageText=""
            PreviousPageText="" Visible="False" />
    </asp:GridView>
    <div style="text-align: center" class="tdbg">
        <span style="text-align: center">共
            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
            条数据
            <asp:Label ID="Toppage" runat="server" Text="" />
            <asp:Label ID="Nextpage" runat="server" Text="" />
            <asp:Label ID="Downpage" runat="server" Text="" />
            <asp:Label ID="Endpage" runat="server" Text="" />
            页次：
            <asp:Label ID="Nowpage" runat="server" Text="" />/
            <asp:Label ID="PageSize" runat="server" Text="" />页
            <asp:Label ID="pagess" runat="server" Text="" />
            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
            条数据/页 转到第
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            </asp:DropDownList>
            页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
        </span>
    </div>
    <asp:CheckBox ID="CheckSelectAll" runat="server" AutoPostBack="True" OnCheckedChanged="CheckSelectAll_CheckedChanged"
        Text="全选" />
    <asp:Button ID="BtnDelete" runat="server" Text="批量删除待审核信息" Width="134px" OnClientClick="if(!IsSelectedId()){alert('请选择版位');return false;}else{return confirm('你确定要删除选中的版位吗？')}"
        OnClick="BtnDelete_Click" class="C_input" />
    </form>
</body>
</html>