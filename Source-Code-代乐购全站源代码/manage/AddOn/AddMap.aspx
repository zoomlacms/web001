<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_AddMap, App_Web_t05qjb42" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<title>标注地图</title>
<script src="<%=mt %>" type="text/javascript"></script>
<%--调用google API读取地图--%>
<script type="text/javascript" src="http://fw.qq.com/ipaddress" charset="gb2312"></script>
<%--调用QQAPI获取用户地址--%>
<script src="/JS/jquery-1.5.1.min.js" type="text/javascript"></script>
<script src="/JS/GoogleMap.js" type="text/javascript"></script>
</head>
<body onload="ShowMap(<%=uid %>,'',<%=mid %>);">
    <form id="form1" runat="server">
    <div>
        <div style="margin: auto; margin-top: 20px; width: 80%; height: 30px; line-height: 30px; text-align: left; font-size:12px">
            地区选择：
            <input value="放大" id="maxmap" type="button" /><input id="minmap" type="button" value="缩小" />
            <asp:DropDownList runat="server" ID="drop"></asp:DropDownList>
            <asp:DropDownList runat="server" ID="drop1"><asp:ListItem Value="" Text="请选择"></asp:ListItem></asp:DropDownList>
        </div>
        <div id="map" style="height: 400px"></div>
        <p class="tips" style="font-size:12px;">提示：鼠标在地图区拖动可以创建您的标注</p>
        <div style="margin: auto; margin-top: 20px; width: 90%; height: 50px; line-height: 50px; text-align: center;">
            <input type="submit" id="Bbtn" value="保存地图" />
        </div>
    </div>
    <div style="display: none;">
        <input id="hlngx" name="hlngx"/>
        <input id="hlngy" name="hlngy"/>
        <input id="hlngz" name="hlngz"/>
        <input id="hmid" name="hmid"/>
    </div>
    </form>
</body>
</html>
<script type="text/javascript"> 
    $("#drop").change(function () {
        ShowMap(<%=uid %>,$("#drop").val(),<%=mid %>);
          $.get('GoogleMap.ashx?mt=' + new Date().getTime() + "&v2=xml&Xname=" + escape($("#drop").val()), function (data) {
               var tr=data.split(',');
              var gm;
               for(var i=0;i<tr.length;i++)
               {
                  gm +="<option value=\""+tr[i]+"\" >"+tr[i]+"</option>";
               }
                $("#drop1").html(gm);
          });
    });
     $("#drop1").change(function () {
         if($("#drop1").val().replace(" ","").length>0)
         {
         ShowMap(<%=mid %>,$("#drop1").val());  
         }
     });
</script>