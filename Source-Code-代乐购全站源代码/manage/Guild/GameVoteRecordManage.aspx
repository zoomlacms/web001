﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_GameVoteRecordManage, App_Web_sv0rahya" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>投票记录</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<script type="text/javascript">

</script>

<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span>  &gt;&gt; <span>OIEM管理</span>&gt;&gt; <span>公会管理</span> &gt;&gt; <span>公会列表</span> &gt;&gt; <span>投票记录管理</span> 
       
    </div>
   <div class="clearbox">
    </div>
  <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
            <tr class="gridtitle" align="center" height="26px">
                <td width="10%">
                    选择
                </td>

                <td width="10%">
                 会议室
                </td>
                <td width="10%">
                   投票标题
                </td>
               
                <td width="10%">
                  用户名
                </td>
                  <td width="10%">
                 投票意见
                </td>
                  <td width="10%">
                 投票标题
                </td>

                <td width="30%">
                    操作
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" onitemcommand="Repeater1_ItemCommand" 
                >
           <ItemTemplate>
            <tr align="center"  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="height:38px;">
                <td>
                <asp:CheckBox ID="item" runat="server" />
                     <asp:Label ID="LabelHiddenID" runat="server" Text='<%#Eval("RID")%>' ></asp:Label>
                </td>

                <td>
                  <%#GetMeeting(Eval("Mid","{0}")) %>
                </td>               
                <td>
                   <%#GetVoteTitle(Eval("Vid","{0}")) %>
                </td>       
                <td> 
                 <%# GetUserName(Eval("Userid","{0}")) %>        
                </td>
                 <td> 
                <%# Eval("RContent") %>                
                </td>
                 <td> 
                <%#Eval("RTime") %>                
                </td>
                <td>                   
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("RID") %>' CommandName="edit">修改</asp:LinkButton>&nbsp;
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%#Eval("RID") %>' CommandName="del" OnClientClick="return confirm('确实要删除此模板信息吗？');">删除</asp:LinkButton>&nbsp;
      
                </td>
            </tr>
            </ItemTemplate>
             </asp:Repeater>
             <tr align="center" style="height:38px;">
                <td colspan="7">
                    <asp:Panel ID="panelpage" runat="server">
                        总共<asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:<asp:Label ID="CurrentPage"
                            runat="server"></asp:Label>&nbsp; 共<asp:Label ID="PageCount" runat="server"></asp:Label>页
                        <asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;<asp:Label ID="FirstPage"
                            runat="server"></asp:Label>
                        <asp:Label ID="RePage" runat="server"></asp:Label>
                        <asp:Label ID="NextPage" runat="server"></asp:Label>
                        <asp:Label ID="EndPage" runat="server"></asp:Label>
                    </asp:Panel>
                </td>
            </tr>
        </table>
  
       <asp:CheckBox ID="cbAll" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="cbAll_CheckedChanged" Text="全选" />
    <asp:Button ID="delSelect" runat="server" Text="批量删除" OnClientClick="return confirm('确实要删除选中的信息吗？');"  onclick="btndelSelec_Click" class="C_input"/>&nbsp;&nbsp;
    <div>
    </div>
    </form>
</body>
</html>
