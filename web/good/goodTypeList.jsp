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
        var form = layui.form;

        //执行一个 table 实例
        table.render({
            elem: '#test'
            ,height: 332
            ,url: './data/user.json' //数据接口
            ,page: true //开启分页
            ,cols: [[ //表头
                {type:'checkbox', fixed: 'left',field:"ids"}
                ,{field:'id', width:80, title: 'ID',  fixed: 'left'}
                ,{field:'city', width:120, title: '类型名称'}
                ,{field:'sign', width:150, title: '状态'}
                ,{field:'sign', width:120, title: '属性数'}
                ,{field:'sign', width:120, title: '是否关联商品'}
                ,{field:'sign', width:120, title: '所在类目'}
                ,{field:'lock', title:'是否启用', width:110, templet: '#checkboxTpl', unresize: true}
                ,{field:'wealth', width:600, fixed: 'right', align:'center',title: '操作',toolbar:"#barDemo"}
            ]]
        });

        //监听启用操作
        form.on('checkbox(lockDemo)', function(obj){
            layer.tips(this.value + ' ' + this.name + '：'+ obj.elem.checked + obj.elem.title, obj.othis);
        });

        //监听启用操作(switch方式)
        form.on('switch(lockFilter)', function(obj){
            layer.tips(this.value + ' ' + this.name + '：'+ obj.elem.checked + obj.elem.title, obj.othis);
        });



    });
</script>

<script id="checkboxTpl" type="text/html">
    <!-- 这里的 checked 的状态只是演示 -->
    <input type="checkbox" name="lock" value="{{d.id}}" title="启用" lay-skin="primary" lay-filter="lockDemo" {{ d.id == 1 ? 'checked' : '' }}>
</script>


<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    <input type="checkbox" name="lock" value="{{d.id}}" title="启用" lay-skin="switch" lay-text="启用|禁用" lay-filter="lockFilter" {{ d.id == 1 ? 'checked' : '' }}>
</script>



<!-- 内容主体区域 -->
<div class="layui-body">


    <div style="padding: 15px;">

        <blockquote class="layui-elem-quote">
            商品类型列表
        </blockquote>

        <blockquote class="layui-elem-quote">
            <form class="layui-form" action="">

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit="" lay-filter="demo1">搜索</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">类型名称</label>
                    <div class="layui-input-inline">
                        <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder=""
                               class="layui-input">
                    </div>

                    <label class="layui-form-label">分类名称</label>
                    <div class="layui-input-inline">
                        <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder=""
                               class="layui-input">
                    </div>

                </div>
            </form>
        </blockquote>


        <blockquote class="layui-elem-quote">
            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">删除</button>
            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">编辑</button>
            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">启用</button>
            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">禁用</button>
            <a class="layui-btn layui-btn-sm" href="./goodTypeAdd.jsp" target="_self">添加类型</a>

            <a class="layui-btn layui-btn-sm" href="./goodPropertyList.jsp" target="_self">属性列表</a>
        </blockquote>



        <span class="layui-badge">6</span>
        <span class="layui-badge">赤</span>
        <span class="layui-badge layui-bg-orange">无关联的商品(12)</span>
        <span class="layui-badge layui-bg-green">禁用(12)</span>
        <span class="layui-badge layui-bg-cyan">未设置分类(15)</span>
        <span class="layui-badge layui-bg-blue">蓝</span>
        <span class="layui-badge layui-bg-black">黑</span>

        <table class="layui-hide" id="test" lay-filter="demo"></table>


    </div>


</div>


<%@ include file="/common/footer.jsp"%>