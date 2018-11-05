<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<%@ include file="/common/menu.jsp"%>


<script>

    layui.config({
        version: '1515376178738' //为了更新 js 缓存，可忽略
    });

    //JavaScript代码区域
    layui.use(['laydate', 'laypage', 'layer','table', 'element'], function(){
        var element = layui.element;
        var $ = layui.jquery;
        var laydate = layui.laydate //日期
            ,laypage = layui.laypage //分页
            ,layer = layui.layer //弹层
            ,table = layui.table //表格
            ,element = layui.element; //元素操作

        //监听Tab切换
        element.on('tab(demo)', function(data){
            layer.msg('切换了：'+ this.innerHTML);
            console.log(data);
        });


        //点击按钮 起售
        $('#startSaleBtn').on('click', function(){
            var text = "请选择商品要推送的地址！";
            layer.open({
                type: 1
                ,title: '提示'
                ,id: 'layerTips'
                ,content: '<div style="padding: 20px 100px;">'+ text +'</div>'
                ,btn: '关闭'
                ,btnAlign: 'c' //按钮居中
                ,yes: function(){
                    layer.closeAll();
                }
            });
        });


        //点击按钮
        $('#pushArea').on('click', function(){
            var text = "Demo Demo";
            layer.open({
                type: 1
                ,title: '推送地区'
                //,offset: 'auto'
                ,id: 'layerDemo'
                ,area: ['800px', '400px']
                ,content: $('#openDemo')
                ,btn: '关闭'
                ,btnAlign: 'c' //按钮居中
                //,shade: 0 //不显示遮罩
                ,yes: function(){
                    layer.closeAll();
                }
            });
        });

        //执行一个 table 实例
        table.render({
            elem: '#test'
            ,height: 450
            ,url: './data/user.json' //数据接口
            ,page: true //开启分页
            ,cols: [[ //表头
                {type:'checkbox', fixed: 'left',field:"ids"}
                ,{field:'id', width:80, title: 'ID',  fixed: 'left'}
                ,{field:'username', width:120, title: 'SKU-规格名称'}
                ,{field:'sex', width:120, title: '推广地区' }
                ,{field:'city', width:120, title: '状态'}
                ,{field:'sign', width:150, title: '限售数量'}
                ,{field:'sign', width:120, title: '单位'}
                ,{field:'sign', width:120, title: '包装数量'}
                ,{field:'sign', width:80, title: '原价(元)'}
                ,{field:'sign', width:80, title: '销售价(元)'}
                ,{field:'sign', width:120, title: '预售时间'}
                ,{field:'sign', width:120, title: '体积'}
                ,{field:'sign', width:120, title: '重量'}
                ,{field:'sign', width:120, title: '扩展属性1'}
                ,{field:'sign', width:120, title: '扩展属性2'}
                ,{field:'wealth', width:180, fixed: 'right', align:'center',title: '操作',toolbar:"#barDemo"}
            ]]
        });


        //分页
        // laypage.render({
        //     elem: 'pageDemo' //分页容器的id
        //     ,count: 1000 //总页数
        //     //,limit: 20 //每页显示的条数
        //     //,limits:[10, 20, 30, 40, 50] //每页条数的选择项
        //     ,skin: '#1E9FFF' //自定义选中色值
        //     ,skip: true //开启跳页
        //     ,jump: function(obj, first){
        //         if(!first){
        //             layer.msg('第'+ obj.curr +'页');
        //         }
        //     }
        // });


    });
</script>





<!-- 内容主体区域 -->
<div class="layui-body">

    <div style="padding: 15px;">

        <blockquote class="layui-elem-quote">
            山东小芋头-规格管理列表
            <a class="layui-btn layui-btn-normal" href="./goodList.jsp" target="_self">返回</a>
        </blockquote>


        <blockquote class="layui-elem-quote">
            <button id="startSaleBtn" data-method="offset" data-type="auto"
                    class="layui-btn layui-btn-normal layui-btn-sm">起售
            </button>
            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal layui-btn-sm">停售</button>
            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">删除</button>
            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">编辑</button>
            <button id="pushArea" data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">推送地区</button>
            <a class="layui-btn layui-btn-sm" href="./goodAdd_C.jsp" target="_self">添加规格</a>
        </blockquote>


        <table class="layui-hide" id="test" lay-filter="demo"></table>


        <script type="text/html" id="barDemo">
            <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
            <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
            <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
        </script>


    </div>


</div>





<!-- 推送地区 -->
<div id="openDemo" style="display: none;">

    <div class="layui-form-item">
        <label class="layui-form-label">选择推送地区</label>
        <div class="layui-input-inline">
            <select name="quiz1">
                <option value="">请选择省</option>
                <option value="浙江" selected="">浙江省</option>
                <option value="你的工号">江西省</option>
                <option value="你最喜欢的老师">福建省</option>
            </select>
        </div>
        <div class="layui-input-inline">
            <select name="quiz2">
                <option value="">请选择市</option>
                <option value="杭州">杭州</option>
                <option disabled="" value="宁波">宁波</option>
                <option value="温州">温州</option>
                <option value="温州">台州</option>
                <option value="温州">绍兴</option>
            </select>
        </div>
        <div class="layui-input-inline">
            <select name="quiz3">
                <option value="">请选择县/区</option>
                <option value="西湖区">西湖区</option>
                <option value="余杭区">余杭区</option>
                <option value="拱墅区">临安市</option>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">详细地址</label>
        <div class="layui-input-block">
            <input type="text" name="title" lay-verify="title" lay-verify="required" autocomplete="off" placeholder="请输入名称">
        </div>
    </div>


    <div class="layui-input-block">
        <input type="checkbox" name="like[write]" title="是否推送商品" checked="">
        是否推送商品
    </div>

    <div class="layui-form-mid layui-word-aux">注：勾选了推送商品后，商品即可上架，并在所选地区开始销售；</div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="demo1">保存</button>
        </div>
    </div>
</div>



<%@ include file="/common/footer.jsp"%>
