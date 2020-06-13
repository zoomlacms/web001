<%@ page language="C#" autoeventwireup="true" inherits="manage_WAP_Other_WapForumGuide, App_Web_1jjr0mmi" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>其他信息</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
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
        parent.MDIOpen(righturl); return false;
    } catch (Error) {
        parent.frames["main_right"].location = righturl;
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
<form id="formGuide" runat="server">
<div id="Div1">
    <ul>
        <li id="Guide_top">
            <div id="Guide_toptext">WAP信息管理</div>
        </li>
        <li id="Guide_main">
            <div id="Guide_box">
                <div class="guideexpand" onclick="Switch(this)">手机论坛</div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="WapForum_Class.aspx" target="main_right">板块管理</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="WapForum_Class_Edit.aspx?menu=add" target="main_right">添加板块</a></li>
                </ul>
                </div>
            </div>
            
            <div id="Div2">
                <div class="guideexpand" onclick="Switch(this)">
                 视频管理
                </div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="VideoManage.aspx" target="main_right">视频管理</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="AddVideo.aspx?menu=add" target="main_right">添加视频</a></li>
                </ul>
                </div>
            </div>
            
               <div id="Div3">
                <div class="guideexpand" onclick="Switch(this)">
                 小说管理
                </div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="NovelManage.aspx" target="main_right">小说管理</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="NovelEdit.aspx?menu=add" target="main_right">添加小说</a></li>
                </ul>
                </div>
            </div>
            
             <div id="Div4">
                <div class="guideexpand" onclick="Switch(this)">
                 友情链接管理
                </div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="FSLinks.aspx" target="main_right">友情链接管理</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="FSLink_Edit.aspx?menu=add" target="main_right">添加友情链接</a></li>
                </ul>
                </div>
            </div>
            
             <div id="Div5">
                <div class="guideexpand" onclick="Switch(this)">
                 兼职信息管理
                </div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="Part-timeInfo.aspx" target="main_right">兼职信息管理</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="Part-timeEdit.aspx?menu=add" target="main_right">添加兼职信息</a></li>
                </ul>
                </div>
            </div>
            
                  <div id="Div6">
                <div class="guideexpand" onclick="Switch(this)">
                 校园达人
                </div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="Dalen_School.aspx" target="main_right">校园达人-图片管理</a></li>
                </ul>
                </div>
            </div>
            
              <div id="Div7">
                <div class="guideexpand" onclick="Switch(this)">
                 文章页管理
                </div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="Default.aspx" target="main_right">文章页管理</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="Default_Add.aspx?menu=add" target="main_right">添加文章页</a></li>
                </ul>
                </div>
            </div>
            
        </li>
     </ul>
</div>
</form>
</body>
</html>