<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/header.jsp"%>
<%@include file="member_menu.jsp"%>

<div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 20px;">
        <div class="layui-row">
            <div style="background-color: #EEEEEE ;height: 50px;margin-top: 10px;margin-left: 10px">
                <label style="font-size: 18px;margin-left: 3% ; line-height: 50px" > 分销操作日志  </label>
            </div>

            <div class="demoTable" style="background-color: #EEEEEE ;height: 150px;margin-top: 10px;margin-left: 10px">
                <div>
                    <button class="layui-btn" data-type="reload">搜索</button>
                    <button class="layui-btn" data-type="reset" >重置</button>
                </div>
                用户名：
                <div class="layui-inline">
                    <input class="layui-input" name="username" id="username"  autocomplete="off">
                </div>
                编辑日期：
                <div class="layui-inline">
                    <div class="layui-input-inline" style="width: 100px;">
                        <input name="price_min" id="price_min" placeholder="开始日期" autocomplete="off" class="layui-input" type="text" placeholder="yyyy-MM-dd">
                    </div>
                    <div class="layui-input-inline">-</div>
                    <div class="layui-input-inline" style="width: 100px;">
                        <input name="price_max" id="price_max" placeholder="结束日期" autocomplete="off" class="layui-input" type="text" placeholder="yyyy-MM-dd">
                    </div>
                </div>
                模块：
                <div class="layui-inline">
                    <select class="layui-select" name="handleStatus" id="handleStatus" autocomplete="off">
                        <option value="0" selected="selected">全部</option>
                        <option value="1" >正常（默认状态）</option>
                        <option value="2" >锁定</option>
                    </select>
                </div>
                关键词：
                <div class="layui-inline">
                    <input class="layui-input" name="phoneNum" id="phoneNum"  autocomplete="off">
                </div>
            </div>
        </div>
        <table class="layui-table"  id="distributionLoggerList"  lay-filter="distributionLogger"></table>
    </div>
</div>
<div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
</div>
<script>
    layui.use('table', function(){
        var table = layui.table;
        //列表加载
        table.render({
            elem: '#distributionLoggerList'
            // ,url:'/demo/table/user/'
            ,cellMinWidth: 100 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            ,page:true
            ,cols: [[
                {type:'numbers',fixed: 'true'}
                ,{type:'checkbox',fixed: 'true'}
                ,{field:'username', title: '用户名' ,align: 'center',sort: true,fixed: true}
                ,{field:'phoneNum', title: '手机号', sort: true,align: 'center',fixed: true}
                ,{field:'accountCostTotal', title: 'IP地址',align: 'center',width:'150'}
                ,{field:'estimateTotalCost', title: '模块',align: 'center',width:'150'}
                ,{field:'lastCountTime', title: '操作内容', align: 'center',width:'150'} //单元格内容水平居中
                ,{field:'applyTime', title: '最后操作时间', sort: true, align: 'center',width:'150'} //单元格内容水平居中
            ]]
            ,data:[{
                "username": "admin"
                ,"phoneNum": "18911493350"
                ,"accountCostTotal": "255.255.255.255"
                ,"estimateTotalCost": "商品查询"
                ,"lastCountTime": "添加：斯戴尔墙护角 软包 墙角保护护角条 儿童防撞..."
                ,"applyTime": "2018-02-29 22:45"
            }]
            ,username: 'listReload'
        });

        var $ = layui.$, active = {
            reload: function(){
                var userName = $('#demoReload');
                // var phone = $('#phone');
                // var status = $('#status');
                // var price_min = $('#price_min');
                // var price_min = $('#price_max');

                //执行重载
                table.reload('listReload', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                        key: {
                            username: userName.val()
                        }
                    }
                });
            }
        };

        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });

    });
    layui.use('laydate', function(){
        var laydate = layui.laydate;
        //常规用法
        laydate.render({
            elem: '#price_min'
        });
        laydate.render({
            elem: '#price_max'
        });
    });

    layui.use('element', function(){
        var element = layui.element;
    });

</script>
