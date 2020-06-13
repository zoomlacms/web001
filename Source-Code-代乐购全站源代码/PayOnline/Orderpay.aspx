<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.PayOnline.Orderpay, App_Web_1qdwsu1g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>选择支付平台</title>
<link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
function createImage(a, b) {
    var array = b.split(",");
    for (var i = 0; i < (array.length - 1); i++) {
        var image = document.createElement("image");
        image.display = "block";
        var id = array[i];
        image.src = a + id + ".jpg";
        var obj = document.getElementById("td" + id).parentNode;
        obj.style.height = "40px";
        obj.style.lineHeight = "40px";
        obj.appendChild(image);
    }
}
</script>
</head>
<body>
<form id="form1" runat="server">
  <table class="border" align="center" cellspacing="1" style="margin-top:10px;height:180px;">
    <tr class="title">
      <td> 在线支付操作(选择支付平台)</td>
    </tr>
    <tr class="tdbg">
      <td style="text-align: center;"><table width="500px" cellspacing="1" cellpadding="2" >
          <tr>
            <td colspan="2" style="text-align:center;vertical-align:top;"><asp:RadioButtonList ID="DDLPayPlat"  style="text-align:center;vertical-align:middle;" runat="server" RepeatDirection="Horizontal" ondatabinding="DDLPayPlat_DataBinding" > </asp:RadioButtonList></td>
          </tr>
          <tr class="tdbg">
            <td style="width: 30%; text-align: right;">订单号码： </td>
            <td style="text-align: left;"><asp:Label ID="OrderCode" runat="server" Text=""></asp:Label></td>
          </tr>
          <tr class="tdbg">
            <td style="text-align: right;">支付金额： </td>
            <td style="text-align: left;"><asp:Label ID="TxtvMoney" runat="server" Text="0"></asp:Label>
              <asp:HiddenField ID="nfdmy" runat="server" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
  <div style="text-align: center; height: 30px;line-height:30px; vertical-align:middle;">
    <asp:Button ID="BtnSubmit" runat="server" Text=" 下一步 " OnClick="BtnSubmit_Click" />
  </div>
</form>
</body>
</html>