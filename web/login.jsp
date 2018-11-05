<%--
  Created by IntelliJ IDEA.
  User: shi
  Date: 2018/3/5
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
    <link rel="stylesheet" href="./layui/css/layui.css">
    <script src="./layui/layui.js"></script>
    <style>
        #login {
            border: 1px solid #dddddd;
            width: 500px;
            height: 310px;
            background-color: #f2f2f2;
            margin: 250px auto;
        }

        #login-left {
            border: 1px solid #dddddd;
            width: 131px;
            height: 177px;
            background-color: #FFFFFF;
            margin-top: 55px;
            margin-left: 50px;
        }

        #login-left-bottom {
            width: 96px;
            height: 33px;
            margin-left: 72px;
            margin-top: 10px;
        }

        #login-right {
            width: 310px;
            height: 250px;
            position: relative;
            left: 185px;
            bottom: 225px;
        }

        #yzm {
            width: 50px;
            height: 30px;
            background-color: #e2e2e2;
            position: relative;
            left: 115px;
            bottom: 33px;
        }

        #yzm-z {
            position: relative;
            left: 7px;
            top: 7px;
        }

        #loginb-button {
            position: relative;
            bottom: 20px;
        }

    </style>
    <script>
        layui.use('form', function () {
            var form = layui.form;
            //自定义验证
            form.verify({
                username: function(value, item){ //value：表单的值、item：表单的DOM对象
                    if(!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]+$").test(value)){
                        return '用户名不能有特殊字符';
                    }
                    if(/(^\_)|(\__)|(\_+$)/.test(value)){
                        return '用户名首尾不能出现下划线\'_\'';
                    }
                    if(/^\d+\d+\d$/.test(value)){
                        return '用户名不能全为数字';
                    }
                }

                //我们既支持上述函数式的方式，也支持下述数组的形式
                //数组的两个值分别代表：[正则匹配、匹配不符时的提示文字]
                ,pass: [
                    /^[\S]{6,12}$/
                    ,'密码必须6到12位，且不能出现空格'
                ]
                ,Verification:function(value){
                    if(value!="A5C8"){
                        return '验证码错误!';
                    }
                }
            });
            //监听提交
            form.on('submit(formLogin)', function (data) {
            });
        });
    </script>
</head>
<body>
<div id="login">
    <div id="login-left">
        LOGO
    </div>
    <div id="login-left-bottom">
        <h2 style="color: #969696">管理后台</h2>
    </div>
    <div id="login-right">
        <form class="layui-form" action="index.jsp">
            <div class="layui-form-item">
                <label class="layui-form-label">账号</label>
                <div class="layui-input-block" style="width: 190px;">
                    <input type="text" name="username" required lay-verify="username" placeholder="请输入登录账号"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item" style="margin-top: 28px;">
                <label class="layui-form-label">密码</label>
                <div class="layui-input-inline">
                    <input type="password" name="password" required lay-verify="pass" placeholder="请输入登录密码"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item" style="margin-top: 28px;">
                <label class="layui-form-label">验证码</label>
                <div class="layui-input-block" style="width: 110px;">
                    <input type="text" name="Verification" required lay-verify="Verification" placeholder="请输入验证码"
                           autocomplete="off" class="layui-input">
                    <div id="yzm">
                        <div id="yzm-z">A5C8</div>
                    </div>
                </div>


            </div>
            <div class="layui-form-item" id="loginb-button">
                <div class="layui-input-block">
                    <button class="layui-btn layui-btn-normal" lay-submit lay-filter="formLogin" style="width: 190px;">
                        立即提交
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
