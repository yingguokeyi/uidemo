<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/2
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>会员管理-地址信息</title>
    <link rel="stylesheet" type="text/css" href="/uidemo/layui/css/layui.css" />
    <script type="text/javascript" src="/uidemo/layui/layui.js"></script>
    <script type="text/javascript" src="/uidemo/common/third-part/jquery-1.11.3.min.js"></script>
    <script>
        function w_close() {
            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
            parent.layer.close(index); //再执行关闭
        }
    </script>
</head>
<body>
<div class="" style=""><span style="margin-left:30px;">收货地址</span></div>
<div class="">
    <form>
        <table  class="layui-table">
            <tr>
                <td>姓名</td>
                <td>地址</td>
                <td>邮编</td>
                <td>手机</td>
                <td>固定电话</td>
                <td>E-mail</td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
        <div style="margin-left: 750px;margin-top:300px;"> <input  id="btnClose" type="button" value="关闭" class="layui-btn layui-btn-radius layui-btn-normal" onclick="window.close();" ></div>
    </form>
</div>
</body>
</html>
