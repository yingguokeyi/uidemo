<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/header.jsp" %>
<%@ include file="/common/menu.jsp" %>

<script>
    layui.use(['table', 'element'], function () {

        var table = layui.table //表格
            ,element = layui.element; //元素操作

        table.render({
            elem: '#test'
            , url: './data/user.json' //数据接口
            , cols: [[
                {field: 'id', width: 100, title: 'ID', sort: true}
                , {field: 'username', width: 400, title: '用户名'}
                , {field: 'sex', width: 400, title: '性别', sort: true}
                , {field: 'city', width: 400, title: '城市'}
                , {field: '', width: 354, fixed: 'right', align: 'center', title: '操作', toolbar: "#barDemo"}
            ]]
            , page: true
        });
    });
</script>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="detail">添加</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">详情</a>
</script>
<!-- 内容主体区域 -->
<div class="layui-body" style="padding: 30px;">
    <blockquote class="layui-elem-quote">地区管理
        <button class="layui-btn layui-btn-normal" id="addProvince" style="margin-left: 90%;">添加省</button>
    </blockquote>
    <div class="layui-form-item">
        <label class="layui-form-label" style="text-align: center;"><i class="layui-icon" style="font-size: 30px;">&#xe615;</i></label>
        <div class="layui-input-inline">
            <input type="text" name="title" required lay-verify="required" placeholder="省名称" autocomplete="off"
                   class="layui-input">
        </div>
        <button class="layui-btn layui-btn-primary">搜索</button>
    </div>
    <table class="layui-hide" id="test"></table>

    <script>
        //点击按钮
        $('#addProvince').on('click', function () {
            layer.open({
                type: 1
                , title: '添加省'
                , content: $('#addProvince-box')
                , area: '300px'
                , btn: '确定'
                , btnAlign: 'c' //按钮居中
                , shade: 0 //不显示遮罩
                , yes: function () {
                    layer.closeAll();
                }
            });
        });
    </script>
    <div id="addProvince-box" style="display: none">
        <div class="layui-inline" style="margin-top: 15px">
            <label class="layui-form-label">省名称</label>
            <div class="layui-input-inline">
                <input name="email" lay-verify="required" autocomplete="off" class="layui-input" type="text">
            </div>
        </div>
    </div>


<%@ include file="/common/footer.jsp" %>
