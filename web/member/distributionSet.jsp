<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/header.jsp"%>
<%@include file="member_menu.jsp"%>

<!-- 内容主体区域 -->
<div class="layui-body">
    <div class="layui-row">
        <div style="background-color: #EEEEEE ;height: 50px;margin-top: 10px;margin-left: 10px">
            <label style="font-size: 18px;margin-left: 3% ; line-height: 50px" >分销规则设置</label>
        </div>
        <label style="font-size: 18px;margin-left: 3% ; line-height: 50px" >提示</label>
        <label style="margin-left: 3% ; line-height: 50px" class="layui-bg-blue" >没有设置等级的分销商将按默认设置计算提成。商品指定的佣金金额的优先级仍是最高的，也就是说只要商品指定了佣金金额就按商品的佣金金额来计算，不受会员等级影响。</label>
        <div>
            <button style="margin-left: 80% ;" data-method="distrbutionSetInfo('','0')">设置默认分销值</button>
        </div>
        <div style="margin-left: 7%;width: 80.5%">
            <table class="layui-table" id="test1"  style="visibility: hidden" lay-filter="demo" ></table>
        </div>
    </div>

    <div>
        <div>
            <button style="margin-left: 80% ;" onclick="distrbutionSetInfo2('','0')">自定义分销值</button>
        </div>
        <div style="margin-left: 7%;width: 80.5%">
            <table class="layui-table" id="test2"  style="visibility: hidden" lay-filter="demo" ></table>
        </div>
    </div>
</div>
<script type="text/html" id="test1barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-normal" lay-event="1" >查看</a>
    <a class="layui-btn layui-btn-mini" lay-event="2" >编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-mini" lay-event="3">删除</a>
</script>
<script type="text/html" id="test2barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-normal" lay-event="sel" >查看</a>
    <a class="layui-btn layui-btn-mini" lay-event="up" >编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-mini" lay-event="del">删除</a>
</script>

<script>

    layui.config({
        version: '1515376178738' //为了更新 js 缓存，可忽略
    });

    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#test1'
            // ,url:'/demo/table/user/'
            //,cellMinWidth: 100 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            ,page:false
            ,cols: [[
                {type:'numbers',fixed: 'true'}
                ,{field: 'field1', title: '返佣名称', width:100,align: 'center'}
                ,{field: 'field2', title: '会员类型', width:100,align: 'center'}
                ,{field: 'field3', title: '顶级', width:150,align: 'center'}
                ,{field: 'field4', title: '父级', width:150,align: 'center'}
                ,{field: 'field5', title: '子级', width: 170,align: 'center'}
                ,{field: 'field6', title: '添加时间', width: 100,align: 'center'}
                ,{fixed:'right',title:'操作', width:350,align:'center',toolbar:"#test1barDemo"}
            ]]
            ,data:[{
                "field1": "会员-默认分销规则"
                ,"field2": "会员"
                ,"field3": "50%（￥15.00）"
                ,"field4": "30%（￥9.00）"
                ,"field5": "20%（￥6.00）"
                ,"field6": "2018-01-30 09:15"
            },{
                "field1": "非会员-默认分销规则"
                ,"field2": "非会员"
                ,"field3": "20%（￥6.00）"
                ,"field4": "10%（￥3.00）"
                ,"field5": "5%（￥1.50）"
                ,"field6": "2018-01-30 09:14"
            }]
        });

        //监听工具条
        table.on('tool(test1)', function(obj){
            var data = obj.data;
            if(obj.event === '1'){
                distrbutionSetInfo(data,obj.event)
            } else if(obj.event === '2'){
                distrbutionSetInfo(data,obj.event)
            } else if(obj.event === '3'){
                layer.confirm('确认删除吗？', function(index){
                    del();
                    layer.close(index);
                });
            }
        });

        function distrbutionSetInfo(obj,status){
            layer.open({
                type: 1
                ,title:'设置默认分销值'
                ,area: ['390px', '260px']
                ,content: 'distrbutionSetInfo.jsp?data='+obj+'&status='+status
                ,btn: ['确认','取消']
                ,btnAlign: 'r' //按钮居中
                ,shade: 0 //不显示遮罩
                ,yes: function(){
                    layer.closeAll();
                }
                ,btn2: function(){
                    layer.closeAll();
                }
                ,zIndex: layer.zIndex //重点1
                ,success: function(layero){
                    layer.setTop(layero); //重点2
                }
            });
        }
    });

    layui.use('table', function(){
            var table = layui.table;
        table.render({
            elem: '#test2'
            // ,url:'/demo/table/user/'
            //,cellMinWidth: 100 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            ,page:false
            ,cols: [[
                {type:'numbers',fixed: 'true'}
                ,{type:'checkbox',fixed: 'true'}
                ,{field: 'field1', title: '返佣名称', width:100,align: 'center'}
                ,{field: 'field2', title: '会员类型', width:100,align: 'center'}
                ,{field: 'field3', title: '顶级', width:150,align: 'center'}
                ,{field: 'field4', title: '父级', width:150,align: 'center'}
                ,{field: 'field5', title: '子级', width: 170,align: 'center'}
                ,{field: 'field6', title: '添加时间', width: 100,align: 'center'}
                ,{fixed:'right',title:'操作', width:350,align:'center',toolbar:"#test2barDemo"}
            ]]
            ,data:[{
                "field1": "黄志中"
                ,"field2": "18911493350"
                ,"field3": "￥89.18"
                ,"field4": "￥80.00"
                ,"field5": "￥200.00"
                ,"field6": "￥200.00"
            },{
                "field1": "黄志中"
                ,"field2": "18911493350"
                ,"field3": "￥89.18"
                ,"field4": "￥80.00"
                ,"field5": "111"
                ,"field6": "11"
            }]
        });



        //监听工具条
        table.on('tool(test2)', function(obj){
            var data = obj.data;
            if(obj.event === 'sel'){
                distrbutionSetInfo2(data,obj.event)
            } else if(obj.event === 'up'){
                distrbutionSetInfo2(data,obj.event)
            } else if(obj.event === 'del'){
                layer.confirm('确认删除吗？', function(index){
                    del();
                    layer.close(index);
                });
            }
        });



        function distrbutionSetInfo2(obj,status){
            layer.open({
                type: 1
                ,title:'自定义分销值'
                ,area: ['390px', '260px']
                ,content: 'distrbutionSetInfo2.jsp?data='+obj+'&status='+status
                ,btn: ['确认','取消']
                ,btnAlign: 'r' //按钮居中
                ,shade: 0 //不显示遮罩
                ,yes: function(){
                    layer.closeAll();
                }
            });
        }
    });
    layui.use('element', function(){
        var element = layui.element;
    });
    layui.use('laydate', function(){
        var laydate = layui.laydate;
        //常规用法
        laydate.render({
            elem: '#field10'
        });

    });

    layui.use('layer', function() { //独立版的layer无需执行这一句
        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

        //触发事件
        var active = {
            distrbutionSetInfo: function (obj,status){
            layer.open({
                type: 1
                ,title:'设置默认分销值'
                ,area: ['390px', '260px']
                ,content: 'distrbutionSetInfo.jsp?data='+obj+'&status='+status
                ,btn: ['确认','取消']
                ,btnAlign: 'r' //按钮居中
                ,shade: 0 //不显示遮罩
                ,yes: function(){
                    layer.closeAll();
                }
                ,btn2: function(){
                    layer.closeAll();
                }
                ,zIndex: layer.zIndex //重点1
                ,success: function(layero){
                    layer.setTop(layero); //重点2
                }
            });
        }
        }
    });
</script>