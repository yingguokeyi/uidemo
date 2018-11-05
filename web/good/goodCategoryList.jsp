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
            ,table = layui.table; //表格


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
                ,{field:'sign', type:'text', width:150, title: '排序', edit: 'text'}
                ,{field:'city', type:'text', width:300, templet: '#sortTpl', unresize: true, title: '排序2', edit: 'text'}
                ,{field:'city', width:120, title: '分类名称'}
                ,{field:'sign', width:150, title: '默认商品类型'}
                ,{field:'sign', width:100, title: '关联商品数量'}
                ,{field:'wealth', width:500, fixed: 'right', align:'center',title: '操作',toolbar:"#barDemo"}
            ]]
        });

        table.on('checkbox(test)', function(obj){
            console.log(obj.checked); //当前是否选中状态
            alert(obj.checked)
            console.log(obj.data); //选中行的相关数据
            console.log(obj.type); //如果触发的是全选，则为：all，如果触发的是单选，则为：one
        });

        //监听单元格编辑
        table.on('edit(demofilter)', function(obj){
            var value = obj.value //得到修改后的值
                ,data = obj.data //得到所在行所有键值
                ,field = obj.field; //得到字段
            layer.msg('[ID: '+ data.id +'] ' + field + ' 更改为：'+ value);
        });



    });
</script>

<!-- 排序 -->
<script id="sortTpl" type="text/html">
    <input type="text" style="width: 100px;" name="sort" value="{{d.city}}"  >
</script>


<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" href="./goodAdd_A.jsp" target="_self">添加商品</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">单位</a>
    <a class="layui-btn layui-btn-xs" href="./quantityUnitList.jsp" lay-event="edit">包装数量单位</a>
    <a class="layui-btn layui-btn-xs" href="./goodCategoryAdd.jsp" lay-event="edit">添加子类</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>


<!-- 内容主体区域 -->
<div class="layui-body">


    <div style="padding: 15px;">

        <blockquote class="layui-elem-quote">
            商品分类列表
            <a class="layui-btn layui-btn-normal" href="./goodTrash.jsp" target="_self" style="margin-left: 85%;">回收站</a>
        </blockquote>

        <blockquote class="layui-elem-quote">
            <form class="layui-form" action="">

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn layui-btn-sm" lay-submit="" lay-filter="demo1">搜索</button>
                        <button type="reset" class="layui-btn layui-btn-primary layui-btn-sm">重置</button>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">分类名称</label>
                    <div class="layui-input-inline">
                        <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder=""
                               class="layui-input">
                    </div>


                    <div class="layui-inline">
                        <label class="layui-form-label">默认类型</label>
                        <div class="layui-input-inline">
                            <select name="interest" lay-filter="aihao">
                                <option value=""></option>
                                <option value="0">默认类型1</option>
                                <option value="1" selected="">默认类型2</option>
                            </select>
                        </div>
                    </div>

                </div>
            </form>
        </blockquote>


        <blockquote class="layui-elem-quote">
            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">确认排序</button>
            <a class="layui-btn layui-btn-sm" href="./goodCategoryAdd.jsp" target="_self">添加商品分类</a>
            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">删除</button>
            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">编辑</button>
        </blockquote>



        <table class="layui-hide" id="test" lay-filter="demofilter"></table>


    </div>


</div>


<%@ include file="/common/footer.jsp"%>