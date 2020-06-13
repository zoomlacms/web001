<%@ page language="C#" autoeventwireup="true" inherits="manage_CallStat_PageLeft, App_Web_xlmayt0p" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>统计菜单</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/Main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">    
function Switch(obj)
{
    obj.className = (obj.className == "guideexpand") ? "guidecollapse" : "guideexpand";
    var nextDiv;
    if (obj.nextSibling)
    {
        if(obj.nextSibling.nodeName=="DIV")
        {
            nextDiv = obj.nextSibling;
        }
        else
        {
            if(obj.nextSibling.nextSibling)
            {
                if(obj.nextSibling.nextSibling.nodeName=="DIV")
                {
                    nextDiv = obj.nextSibling.nextSibling;
                }
            }
        }
        if(nextDiv)
        {
            nextDiv.style.display = (nextDiv.style.display != "") ? "" : "none"; 
        }
    }
}
function OpenLink(lefturl,righturl)
{
    if(lefturl!="")
    {
        parent.frames["left"].location =lefturl;
    }
    try {
        parent.MDIOpen(righturl); void (0);
    } catch (Error) {
        parent.frames["main_right"].location = "../" + righturl; ; void (0);
    }
}
function gotourl(url) {
    try {
        parent.MDILoadurl(url); void (0);
    } catch (Error) {
        parent.frames["main_right"].location = "../" + url; void (0);
    }
}
</script>
</head>
<body>
<form id="form1" runat="server">
<div id="Div1">
<ul>
    <li id="Guide_top">
      <div id="Guide_toptext">访问统计</div>
    </li>
    <li id="Guide_main">
        <div id="Guide_box">                
            <div class="guideexpand" onclick="Switch(this)">访问统计</div>
            <div class="guide">
            <ul>                        
                <%--<li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('CallStat/StatInfoListReport.aspx');">综合统计</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('CallStat/CodeReference.aspx');">统计代码调用</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('CallStat/StatVisitorReport.aspx');">访问记录</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('CallStat/StatTimeReport.aspx?w=year');">年报表</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('CallStat/StatTimeReport.aspx?w=year&type=all');">全部年</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('CallStat/StatTimeReport.aspx?w=month');">月报表</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('CallStat/StatTimeReport.aspx?w=month&type=all');">全部月</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('CallStat/StatTimeReport.aspx?w=week');">周报表</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('CallStat/StatTimeReport.aspx?w=week&type=all');">全部周</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('CallStat/StatTimeReport.aspx?w=day');">日报表</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('CallStat/StatTimeReport.aspx?w=day&type=all');">全部日</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('CallStat/CallCity.aspx');">地区配置</a></li>--%>
                
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Counter/Counter.aspx" target="main_right">统计导航</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Counter/Ip.aspx" target="main_right">总访问统计</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Counter/Month.aspx" target="main_right">日访问统计</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Counter/Year.aspx" target="main_right">月访问统计</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Counter/Local.aspx" target="main_right">地区访问统计</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Counter/Browser.aspx" target="main_right">浏览器访问统计</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Counter/Os.aspx" target="main_right">操作系统访问统计</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Counter/Site.aspx" target="main_right">访问渠道统计</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Counter/CodeReference.aspx" target="main_right">统计代码调用</a></li>
            </ul>
            </div>
        </div>
    </li>
    </ul>
</div>
</form>
</body>
</html>