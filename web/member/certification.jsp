<%--
  Created by IntelliJ IDEA.
  User: wanzi
  Date: 2018/2/28
  Time: 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<%@ include file="/member/huiyuan_menu.jsp"%>

<html>
<head>
    <title>认证审核 </title>
    <script>
        //JavaScript代码区域
        layui.use(['element','layer'], function(){
            var element = layui.element;
            var $ = layui.jquery, layer = layui.layer;
            // 点击拒绝按钮
            var active = {
                offset: function(othis){
                    var type = othis.data('type')
                        ,text = othis.text();
                    layer.open({
                        type: 1
                        ,offset: type
                        ,title:'拒绝提示框'
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
        layui.use('table', function(){
            var table = layui.table;

            table.render({
                elem: '#test'
                ,url:'./demo/table/user.json'
                ,width: 1109
                ,height: 332
                ,cols: [[
                    {type:'checkbox'}
                    ,{field:'id', width:80, title: 'ID'}
                    ,{field:'username', width:80, title: '名称',templet: '#usernameTpl'}
                    ,{field:'sex', width:100, title: '审核状态'}
                    ,{field:'city', width:80, title: '地址'}
                    ,{field:'sign', title: '手机号', width:80}
                    ,{field:'experience', width:100, title: '申请时间'}
                ]]
                ,page: true //开启自动分页
            });
        });
        //点击通过按钮
        function adopt(){
            if(!confirm("通过待审核申请？")){
                return;
            }
        }
        //点击会员姓名
        function Foo(){
            layer.open({
                type: 2,
                title: '会员信息管理',
                shadeClose: true,
                shade: 0.8,
                area: ['900px', '75%'],
                content: '/uidemo/member/certification_edit.jsp'
            });
        }
    </script>
    <script type="text/html" id="usernameTpl">
        <a href="javascript:void(0)" onclick="Foo('{{d.username}}')" class="a" style="color: #003399">{{d.username}}</a>
    </script>
</head>
<body class="layui-layout-body">
<!--主体部分 -->
<div class="layui-layout layui-layout-admin">
    <div class="layui-body">
        <!-- 上部分查询表单-->
        <div class="main-top" style="background-color:#EEEEEE;width:1109px;height: 19%;margin:0px">
            <div class="layui-btn layui-btn-radius layui-btn-normal" style=" margin-top:10px;margin-left:10px;">搜索</div>
            <div class="layui-btn layui-btn-radius layui-btn-primary" style=" margin-top:10px;margin-left:10px;">重置</div>
            <form class="layui-form" action=""  style="margin-top:10px;">
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">账号</label>
                        <div class="layui-input-inline">
                            <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">注册手机号</label>
                        <div class="layui-input-inline">
                            <input type="text" name="date" id="date" lay-verify="required|number"  autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline" >
                        <label class="layui-form-label">申请日期</label>
                        <div class="layui-input-inline" style="width:120px;">
                            <input type="date" class="layui-input" id="test15" style="width:120px;">
                        </div>
                        <span style="line-height:40px;">~</span>
                    </div>

                    <div class="layui-inline" id="date">
                        <div class="layui-input-inline" style="width:120px;">
                            <input type="date" class="layui-input" id="test15" style="width:120px;">
                        </div>
                    </div>

                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">名称</label>
                        <div class="layui-input-inline">
                            <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">审核状态</label>
                        <div class="layui-input-inline">
                            <select name="modules" lay-verify="required" lay-search="">
                                <option value="">全部</option>
                                <option value="1">待审核</option>
                                <option value="2">通过</option>
                                <option value="3">拒绝</option>
                            </select>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <!-- 中部表单 -->
        <div class="main-top">
            <button class="layui-btn layui-btn-normal layui-btn-radius" onclick="adopt()" >通过</button>
            <button class="layui-btn layui-btn-normal layui-btn-radius" id="layerDemo" data-method="offset" data-type="auto">拒绝</button>
        </div>
        <div class="main-top">
            <table class="layui-hide" id="test"></table>
        </div>
    </div>
    <div style="padding: 20px 100px;height:100px; display: none;" id="textarea_add">
        请详细填写拒绝原因，此内容将反馈给会员。
        <textarea name="textarea" id="area1" cols="30" rows="10"></textarea>
    </div>
</div>
<%@ include file="/common/footer.jsp"%>
</body>
</html>
