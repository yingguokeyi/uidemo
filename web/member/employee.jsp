<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<%@ include file="/member/huiyuan_menu.jsp"%>
<html>
<head>
    <title>员工管理</title>
    <style>
        .checkbox{
            margin-left:0px;
        }
    </style>
    <script>
        //JavaScript代码区域
        layui.use(['element','layer'], function(){
            var element = layui.element;
            var $ = layui.jquery, layer = layui.layer;
            //点击编辑按钮
            $('#e_edit').on('click', function(){
                var othis = $(this), method = othis.data('method');
                active[method] ? active[method].call(this, othis) : '';
            });
            //点击添加按钮
            $('#e-add').on('click', function(){
                var othis = $(this), method = othis.data('method');
                active[method] ? active[method].call(this, othis) : '';
            });

            var active = {
                //点击编辑按钮
                offset: function(othis){
                    var type = othis.data('type')
                        ,text = othis.text();

                    layer.open({
                        type: 1
                        ,offset: type
                        ,title:'员工编辑'
                        ,id: 'layerDemo'+type
                        ,area: ['10' +
                        '00px', '320px']
                        ,content:$('#edit_employ')
                        , btn: ['取消', '确认']
                        ,btnAlign: 'c' //按钮居中
                        ,shade: 0 //不显示遮罩
                        ,yes: function(){
                            layer.closeAll();
                        }
                    });
                }
                ,employadd: function(othis){
                    var type = othis.data('type')
                        ,text = othis.text();

                    layer.open({
                        type: 1
                        ,offset: type
                        ,title:'员工编辑'
                        ,id: 'layerDemo'+type
                        ,area: ['10' +
                        '00px', '320px']
                        ,content:$('#edit_employ')
                        , btn: ['取消', '确认']
                        ,btnAlign: 'c' //按钮居中
                        ,shade: 0 //不显示遮罩
                        ,yes: function(){
                            layer.closeAll();
                        }
                    });
                }
            };

        });
        layui.use('table', function(){
            var table = layui.table;

            table.render({
                elem: '#test'
                ,url:'./demo/table/user.json'
                ,width: 994
                ,height: 332
                ,cols: [[
                    {type:'checkbox'}
                    ,{field:'id', width:80, title: ''}
                    ,{field:'username', width:90, title: '会员姓名'}
                    ,{field:'sex', width:80, title: '账号' }
                    ,{field:'city', width:80, title: '工号'}
                    ,{field:'sign', width: 80, title: '姓名'}
                    ,{field:'experience', width:90, title: '状态'}
                    ,{field:'score', width:90, title: '角色'}
                    ,{field:'classify', width:80, title: '联系电话'}
                    ,{field:'classify', width:90, title: '部门'}
                    ,{field:'classify', width:90, title: '职级'}
                    ,{field:'classify', width:90, title: '电子邮箱'}
                    ,{field:'classify', width:90, title: '登录时间'}
                ]]
                ,page: true
            });
        });
    </script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <!--主体部分 -->
    <div class="layui-body">
        <!-- 上部分查询表单-->
        <div class="main-top" style="background-color:#EEEEEE;width:1000px;height: 100px;margin:0px">
            <div class="layui-btn layui-btn-radius layui-btn-normal" style=" margin-top:10px;margin-left:10px;">搜索</div>
            <div class="layui-btn layui-btn-radius layui-btn-primary" style=" margin-top:10px;margin-left:10px;">重置</div>
            <form class="layui-form" action=""  style="margin-top:10px;">
                <div class="layui-form-item" >
                    <div class="layui-inline" style="position:relative;right:50px;">
                        <label class="layui-form-label">账号</label>
                        <div class="layui-input-inline">
                            <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline" style="position:relative;right:100px;">
                        <label class="layui-form-label" >姓名</label>
                        <div class="layui-input-inline" >
                            <input type="text" name="date" id="date"  autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline" style="position:relative;right:150px;">
                        <label class="layui-form-label">角色</label>
                        <div class="layui-input-inline">
                            <select name="modules" lay-verify="required" lay-search="">
                                <option value="">全部</option>
                                <option value="1">读取角色的列表</option>
                                <option value="2">禁用</option>
                            </select>
                        </div>
                    </div>
                    <div class="layui-inline" pane="" style="position:relative;left:830px;bottom:40px;">
                        <div class="layui-input-block checkbox">
                            <input type="checkbox" name="like1[game]" lay-skin="primary" title="仅显示启用状态" checked="checked">
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <!-- 中部表单 -->
        <div class="main-top">
            <button class="layui-btn layui-btn-normal layui-btn-radius">禁用</button>
            <button class="layui-btn layui-btn-normal layui-btn-radius">启用</button>
            <button class="layui-btn layui-btn-primary layui-btn-radius" id="e_edit" data-method="offset" data-type="auto">编辑</button>
            <button class="layui-btn layui-btn-primary layui-btn-radius" id="e-add" data-method="employadd" data-type="auto">添加员工</button>
        </div>
        <div class="main-top">
            <!-- 表格显示-->
            <table class="layui-hide" id="test"></table>
        </div>
    </div>
    <%--点击编辑/添加按钮弹出对话框--%>
    <div id="edit_employ" style="padding: 20px 100px;height:100px; display: none;">
        <div class="" style=""><span style="margin-left:30px;">员工基本信息</span></div>
        <form class="layui-form" action="">
            <%--隐藏域id--%>
            <<input type="hidden" name="" id="">
            <div class="layui-inline">
                <label class="layui-form-label">姓名:</label>
                <div class="layui-input-block">
                    <input type="text" name="username" required lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">工号:</label>
                <div class="layui-input-inline">
                    <input type="text" name="phonenumber" required lay-verify="required" autocomplete="off"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">电子邮箱:</label>
                <div class="layui-input-inline">
                    <input type="text" name="email" lay-verify="email" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">手机号:</label>
                    <div class="layui-input-block">
                        <input type="text" name="post" class="layui-input" lay-verify="required|number|phone">
                    </div>
                </div>
            </div>
            <div class="layui-form-item" style="margin-top:10px;">
                <div class="layui-inline">
                    <label class="layui-form-label">部门</label>
                    <div class="layui-input-inline">
                        <select name="modules" lay-verify="required" lay-search="">
                            <option value=""></option>
                            <option value="0">读取部门列表</option>
                            <option value="1">女</option>

                        </select>
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">职级</label>
                    <div class="layui-input-inline">
                        <select name="modules" lay-verify="required" lay-search="">
                            <option value=""></option>
                            <option value="0">读取部门列表</option>
                            <option value="1">女</option>

                        </select>
                    </div>
                </div>
            </div>

            <div class="" ><span style="margin-left:30px;">系统登录信息</span></div>
            <div class="layui-form-item layui-form-text">
                <div class="layui-inline">
                    <label class="layui-form-label">账号:</label>
                    <div class="layui-input-block">
                        <input type="text" name="username" required lay-verify="required" autocomplete="off"
                               class="layui-input"  disabled="true">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">登录密码:</label>
                <div class="layui-input-inline">
                    <input type="password" name="email" lay-verify="pass" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">确认密码:</label>
                    <div class="layui-input-block">
                        <input type="password" name="email" lay-verify="pass" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">状态</label>
                <div class="layui-input-block">
                    <input type="radio" name="sex" value="0" title="启用" checked="">
                    <input type="radio" name="sex" value="1" title="禁用" >
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button type="reset" class="layui-btn layui-btn-primary">取消</button>
                    <button class="layui-btn" lay-submit lay-filter="formDemo">确认</button>
                </div>
            </div>
        </form>
    </div>
</div>
<%@ include file="/common/footer.jsp"%>
</body>
</html>
