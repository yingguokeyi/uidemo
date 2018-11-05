<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp"%>
<html>
<head>
    <title>会员添加</title>
    <script>
        layui.use(['form', 'layedit', 'laydate'], function(){
            var form = layui.form
                ,layer = layui.layer
                ,layedit = layui.layedit
                ,laydate = layui.laydate;
            //日期
            laydate.render({
                elem: '#date'
            });
            laydate.render({
                elem: '#date1'
            });
            //创建一个编辑器
            var editIndex = layedit.build('LAY_demo_editor');
            //监听提交
            form.on('submit(demo1)', function(data){
                layer.alert(JSON.stringify(data.field), {
                    title: '最终的提交信息'
                })
                return false;
            });


        });
    </script>
</head>
<body>
    <div class=""><span style="margin-left:30px;">联系人信息</span></div>
    <div class="">
        <form class="layui-form" action="">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">姓名:</label>
                    <div class="layui-input-block">
                        <input type="text" name="username" required lay-verify="required" autocomplete="off"
                               class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">手机号*:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="phonenumber" required lay-verify="required|phone|number" autocomplete="off"
                               class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">性别:</label>
                    <div class="layui-input-inline">
                        <select name="modules" lay-verify="required" lay-search="">
                            <option value=""></option>
                            <option value="0">男</option>
                            <option value="1">女</option>
                        </select>
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">生日:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="date" id="date" lay-verify="date" placeholder="yyyy/MM/dd"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">邮箱:</label>
                <div class="layui-input-inline">
                    <input type="text" name="email" lay-verify="email" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">职务:</label>
                    <div class="layui-input-block">
                        <input type="text" name="post" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="" style=""><span style="margin-left:30px;">账号信息</span></div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">账号*:</label>
                    <div class="layui-input-block">
                        <input type="text" name="username" required lay-verify="required" autocomplete="off"
                               class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">会员类型*:</label>
                    <div class="layui-input-block">
                        <select name="modules" lay-verify="required" lay-search="">
                            <option value=""></option>
                            <option value="0">会员</option>
                            <option value="1">非会员</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">密码*：</label>
                    <div class="layui-input-inline">
                        <input type="password" name="password" lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">确认密码*：</label>
                    <div class="layui-input-inline">
                        <input type="password" name="password" lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button type="reset" class="layui-btn layui-btn-primary">取消</button>
                    <button class="layui-btn" lay-submit="" lay-filter="demo1">确认</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
