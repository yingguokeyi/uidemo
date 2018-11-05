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
            ,height: 332
            // ,url: '/my-layui/good/getGoodSourceList' //数据接口
            ,url: './data/user.json' //数据接口
            ,page: true //开启分页
            ,cols: [[ //表头
                {type:'checkbox', fixed: 'left',field:"ids"}
                ,{field:'id', width:80, title: 'ID',  fixed: 'left'}
                ,{field:'username', width:120, title: 'SPU-商品名称'}
                ,{field:'city', width:120, title: '销售状态'}
                ,{field:'sign', width:150, title: '规格数量'}
                ,{field:'sign', width:120, title: '商品来源'}
                ,{field:'sign', width:120, title: '推广地区'}
                ,{field:'sign', width:80, title: '商品类型'}
                ,{field:'sign', width:80, title: '商品分类'}
                ,{field:'sign', width:120, title: '录入时间'}
                ,{field:'sign', width:120, title: '最后编辑时间'}
                ,{field:'sign', width:120, title: '最后操作者'}
                // ,{field:'wealth', width:180, fixed: 'right', align:'center',title: '操作',toolbar:"#barDemo"}
            ]]
        });

    });
</script>



<!-- 内容主体区域 -->
<div class="layui-body">


    <div style="padding: 15px;">

        <blockquote class="layui-elem-quote">
            商品回收站
        </blockquote>


        <form class="layui-form" action="">

            <blockquote class="layui-elem-quote">

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn layui-btn-sm" lay-submit="" lay-filter="demo1">查询</button>
                        <button type="reset" class="layui-btn layui-btn-primary layui-btn-sm">重置</button>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">商品名称</label>
                    <div class="layui-input-inline">
                        <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题"
                               class="layui-input">
                    </div>

                    <label class="layui-form-label">供应商</label>
                    <div class="layui-input-inline">
                        <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题"
                               class="layui-input">
                    </div>

                    <label class="layui-form-label">商品品牌</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" lay-verify="required" placeholder="请输入" autocomplete="off"
                               class="layui-input">
                    </div>


                </div>
                <div class="layui-form-item">

                    <label class="layui-form-label">商品类目</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" lay-verify="required" placeholder="请输入" autocomplete="off"
                               class="layui-input">
                    </div>

                    <label class="layui-form-label">商品编码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" lay-verify="required" placeholder="请输入" autocomplete="off"
                               class="layui-input">
                    </div>

                </div>

            </blockquote>


        </form>


        <blockquote class="layui-elem-quote">
            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">还原</button>
            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">彻底删除</button>
            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">清空回收站</button>
        </blockquote>



        <table class="layui-hide" id="test" lay-filter="demo"></table>


        <%--<script type="text/html" id="barDemo">--%>
            <%--<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>--%>
            <%--<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>--%>
            <%--<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>--%>
        <%--</script>--%>

    </div>


</div>


<%@ include file="/common/footer.jsp"%>