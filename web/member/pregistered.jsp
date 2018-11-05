<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<%@ include file="/member/huiyuan_menu.jsp"%>
<html>
<head>
    <title>禁止注册账户</title>
    <script>
        //JavaScript代码区域
        layui.use(['element','layer'], function(){
            var element = layui.element;
            var $ = layui.jquery, layer = layui.layer;

            //点击添加按钮
            var active = {
                offset: function(othis){
                    var type = othis.data('type')
                        ,text = othis.text();

                    layer.open({
                        type: 1
                        ,offset: type
                        ,title:'添加禁止词'
                        ,id: 'layerDemo'+type
                        ,area: ['400px', '320px']
                        ,content:$('#textarea_add')
                         , btn: ['取消', '确认']
                        ,btnAlign: 'c' //按钮居中
                        ,shade: 0 //不显示遮罩
                        ,yes: function(){
                            layer.closeAll();
                        }
                    });
                }
            };

            $('#layerDemo').on('click', function(){
                var othis = $(this), method = othis.data('method');
                active[method] ? active[method].call(this, othis) : '';
            });

        });
        /* 表格数据查询*/
        layui.use('table', function(){
            var table = layui.table;

            table.render({
                elem: '#test'
                ,url:'./demo/table/user.json'
                ,width: 994
                ,height: 332
                ,cols: [[
                    {type:'checkbox', fixed: 'left'}
                    ,{field:'id', width:80, title: 'ID',  fixed: 'left'}
                    ,{field:'username', width:120, title: '禁止注册账户'}
                    ,{field:'sex', width:80, title: '备注' }
                    ,{field:'city', width:120, title: '最后编辑时间'}
                    ,{field:'sign', width:120, title: '最后操作人'}
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
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">关键词</label>
                        <div class="layui-input-inline">
                            <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <!-- 中部表单 -->
        <div class="main-top">
            <button class="layui-btn layui-btn-normal layui-btn-radius">删除</button>
            <button class="layui-btn layui-btn-primary layui-btn-radius" id="layerDemo" data-method="offset" data-type="auto">添加</button>
        </div>
        <div class="main-top">
            <!-- 表格显示-->
            <table class="layui-hide" id="test"></table>
        </div>
    </div>
    <div style="padding: 20px 100px;height:100px; display: none;" id="textarea_add">
        <textarea name="textarea" id="area1" cols="30" rows="10"></textarea>
        可以设置通配符，每个关键字一行，可使用通配符 "*" 如 "*admin*"(不含引号)。
    </div>
</div>
<%@ include file="/common/footer.jsp"%>
</body>
</html>
