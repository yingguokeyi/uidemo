<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/header.jsp"%>
<%@include file="member_menu.jsp"%>

<div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 20px;">
        <div class="layui-row">
            <div style="background-color: #EEEEEE ;height: 50px;margin-top: 10px;margin-left: 10px">
                <label style="font-size: 18px;margin-left: 3% ; line-height: 50px" > 【孙萁】的订单返佣统计表  </label>
            </div>

            <div class="demoTable" style="background-color: #EEEEEE ;height: 150px;margin-top: 10px;margin-left: 10px">
                <div>
                    <button class="layui-btn" data-type="reload">搜索</button>
                    <button class="layui-btn" data-type="reset" >重置</button>
                </div>
                姓名：
                <div class="layui-inline">
                    <input class="layui-input" name="username" id="username"  autocomplete="off">
                </div>
                手机号：
                <div class="layui-inline">
                    <input class="layui-input" name="phoneNum" id="phoneNum"  autocomplete="off">
                </div>
                成交日期：
                <div class="layui-inline">
                    <div class="layui-input-inline" style="width: 100px;">
                        <input name="price_min" id="price_min" placeholder="开始日期" autocomplete="off" class="layui-input" type="text" placeholder="yyyy-MM-dd">
                    </div>
                    <div class="layui-input-inline">-</div>
                    <div class="layui-input-inline" style="width: 100px;">
                        <input name="price_max" id="price_max" placeholder="结束日期" autocomplete="off" class="layui-input" type="text" placeholder="yyyy-MM-dd">
                    </div>
                </div>
                订单编号：
                <div class="layui-inline">
                    <input class="layui-input" name="orderNum" id="orderNum"  autocomplete="off">
                </div>
                返现类型：
                <div class="layui-inline">
                    <select class="layui-select" name="countRebateType" id="countRebateType" autocomplete="off">
                        <option value="0" selected="selected">全部</option>
                    </select>
                </div>
                订单来源：
                <div class="layui-inline">
                    <select class="layui-select" name="order" id="order" autocomplete="off">
                        <option value="0" selected="selected">全部</option>
                    </select>
                </div>


            </div>
        </div>
        <table class="layui-table"  id="priOrderCountRebateList"  lay-filter="priOrderCountRebate"></table>
    </div>
</div>
<div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
</div>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-normal" lay-event="orderDetailInfo" >订单详情 </a>
    <%--<a class="layui-btn layui-btn-mini" lay-event="selOrderInfo" >查看原始订单</a>--%>
</script>
<script>
    layui.use('table', function(){
        var table = layui.table;
        //列表加载
        table.render({
            elem: '#priOrderCountRebateList'
            // ,url:'./demo/table/user.json'
            ,cols: [[
                {type:'numbers',fixed: 'true'}
                ,{type:'checkbox', fixed: 'left'}
                ,{field:'field1', width:80, title: '订单编号'}
                ,{field:'field2', width:80, title: '联系人'}
                ,{field:'field3', width:100, title: '手机号'}
                ,{field:'field4', width:80, title: '成交日期'}
                ,{field:'field5', width:80, title: '成交商品'}
                ,{field:'field6', width:100, title: '支付方式'}
                ,{field:'field7', width:100, title: '订单来源'}
                ,{field:'field8', width:100, title: '商品来源'}
                ,{field:'field9', width:100, title: '返现类型'}
                ,{field:'field10', width:100, title: '父级用户姓名'}
                ,{field:'field11', width:100, title: '父级用户手机号'}
                ,{field:'field12', width:100, title: '预计返佣金额'}
                ,{field:'field13', width:100, title: '子级用户姓名'}
                ,{field:'field14', width:100, title: '子级用户手机号'}
                ,{field:'field15', width:100, title: '预计返佣金额'}
                ,{field:'field16', width:100, title: '返现时间'}
                ,{fixed:'right',title:'操作', width:350,align:'center',toolbar:"#barDemo"}
            ]]
            ,data:[{
                "field1": "105001750024521006"
                ,"field2": "姓名-1"
                ,"field3": "18911893350"
                ,"field4": "2018-01-30 09:55"
                ,"field5": "三只松鼠坚..."
                ,"field6": "1"
                ,"field7": "微信"
                ,"field8": "小程序"
                ,"field9": "淘宝"
                ,"field10": "奖金"
                ,"field11": "大圣"
                ,"field12": "18911496642"
                ,"field13": "￥6.02"
                ,"field14": "---"
                ,"field15": "---"
                ,"field16": "---"
            }]
            ,page:true//关闭自动分页
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

        //监听工具条
        table.on('tool(priOrderCountRebate)', function(obj){
            var data = obj.data;
            if(obj.event === 'orderDetailInfo'){
                orderDetailInfo(data)
            }
        });

        function orderDetailInfo(obj){
            window.location.href='orderDetailInfo.jsp?userName='+obj.username+'&phoneNum='+obj.phoneNum+'&usernameType=会员';
        }


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
