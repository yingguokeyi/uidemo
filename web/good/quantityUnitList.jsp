<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/header.jsp" %>
<%@ include file="/common/menu.jsp" %>

<script>
    layui.use(['layer','table', 'element'], function () {
        var element = layui.element;

        var layer = layui.layer //弹层
            ,table = layui.table //表格
            ,element = layui.element; //元素操作

        table.render({
            elem: '#test'
            , url: './data/user.json' //数据接口
            , cols: [[
                {field: 'id', width: 100, title: 'ID', sort: true}
                , {type:'checkbox', width: 100}
                , {field: 'username', width: 480, title: '用户名'}
                , {field: 'sex', width: 480, title: '性别', sort: true}
                , {field: 'city', width: 494, title: '城市'}
            ]]
            , page: true
        });
    });
</script>

<!-- 内容主体区域 -->
<div class="layui-body" style="padding: 30px;">
    <blockquote class="layui-elem-quote">数量单位列表
        <button class="layui-btn layui-btn-normal" id="addunit" style="margin-left: 85%;">添加计量单位</button>
    </blockquote>
    <blockquote class="layui-elem-quote">
        <button class="layui-btn layui-btn-sm">设为常用</button>
        <button class="layui-btn layui-btn-sm">取消常用</button>
        <button class="layui-btn layui-btn-sm">删除</button>
    </blockquote>
    <table class="layui-hide" id="test"></table>

    <script>
        //点击按钮
        $('#addunit').on('click', function () {
            layer.open({
                type: 1
                , title: '添加计量单位'
                , content: $('#addunit-box')
                , area: ['300px', '380px']
                , btn: '确定'
                , btnAlign: 'c' //按钮居中
                , shade: 0 //不显示遮罩
                , yes: function () {
                    layer.closeAll();
                }
            });
        });
    </script>
    <div id="addunit-box" style="display: none">
        <div class="layui-inline">
            <div class="layui-form-item layui-form-text">
                <div class="layui-input-block" STYLE="position: relative;right:50px;top:15px;">
                    <textarea placeholder="每行一条计量单位,请用回车换行,空格将被自动过滤" class="layui-textarea"
                              style="height: 250px;"></textarea>
                </div>
            </div>
        </div>
    </div>

<%@ include file="/common/footer.jsp" %>

