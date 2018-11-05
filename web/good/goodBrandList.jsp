<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<%@ include file="/common/menu.jsp"%>


<script>

    layui.config({
        version: '1515376178738' //为了更新 js 缓存，可忽略
    });

    //JavaScript代码区域
    layui.use(['laydate', 'layer','table', 'element'], function(){
        var element = layui.element;

        var laydate = layui.laydate //日期
            ,layer = layui.layer //弹层
            ,table = layui.table //表格
            ,element = layui.element; //元素操作


        //执行一个 table 实例
        table.render({
            elem: '#test'
            //,height: 332
            // ,url: '/my-layui/good/getGoodSourceList' //数据接口
            ,url: './data/user.json' //数据接口
            ,page: true //开启分页
            ,cols: [[ //表头
                {type:'checkbox', fixed: 'left',field:"ids"}
                ,{field:'id', width:80, title: 'ID',  fixed: 'left'}
                ,{field:'username', type:'text', width:150, title: '排序'}
                ,{field:'city', width:120, title: '品牌名'}
                ,{field:'sign', width:250, templet: '#logoTpl', title: '品牌LOGO'}
                ,{field:'sign', width:120, templet: '#urlTpl',title: '网址'}
                ,{field:'sign', width:120, title: '关联商品'}
                ,{field:'sign', width:120, title: '简介'}
                ,{field:'wealth', width:240, fixed: 'right', align:'center',title: '操作',toolbar:"#barDemo"}
            ]]
        });

    });
</script>

<script id="logoTpl" type="text/html">
    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
</script>

<script id="urlTpl" type="text/html">
    <a href="http://www.baidu.com" target="_blank">此处为网址</a>
</script>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">修改</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>


<!-- 内容主体区域 -->
<div class="layui-body">


    <div style="padding: 15px;">

        <blockquote class="layui-elem-quote">
            商品品牌列表
        </blockquote>

        <blockquote class="layui-elem-quote">
            <form class="layui-form" action="">

                <div class="layui-form-item">

                    <div class="layui-input-inline" style="height:40px;width: 40px;">
                        <div class="layui-input" style="background-color:#f2f2f2;border:0px solid">
                            <i class="layui-icon" style="font-size: 30px; color: #1E9FFF;">&#xe615;</i>
                        </div>
                    </div>
                    <%--<label class="layui-form-label">品牌名称 关键字 编码 <i class="layui-icon"></label>--%>
                    <div class="layui-input-inline">
                        <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="品牌名称、关键字、编码快速查询"
                               class="layui-input">
                    </div>
                    <div class="layui-input-inline">
                        <button class="layui-btn" lay-submit="" lay-filter="demo1">搜索</button>
                    </div>
                </div>

            </form>
        </blockquote>

        <blockquote class="layui-elem-quote">
            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">删除</button>
            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">编辑</button>
            <a class="layui-btn layui-btn-sm" href="./goodBrandAdd.jsp" target="_self">添加品牌</a>
        </blockquote>



        <table class="layui-hide" id="test" lay-filter="demo"></table>


    </div>


</div>


<%@ include file="/common/footer.jsp"%>