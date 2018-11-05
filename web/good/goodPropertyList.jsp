<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<%@ include file="/common/menu.jsp"%>


<script>

    layui.config({
        version: '1515376178738' //为了更新 js 缓存，可忽略
    });

    //JavaScript代码区域
    layui.use(['laydate', 'laypage', 'layer','table', 'element'], function(){

        var laydate = layui.laydate //日期
            ,laypage = layui.laypage //分页
            ,layer = layui.layer //弹层
            ,table = layui.table //表格
            ,element = layui.element; //元素操作

        var form = layui.form;


        //监听启用操作  不能用
        form.on('text(sort)', function(obj){
            layer.tips(this.value + ' ' + this.name + '：'+ obj.elem.checked + obj.elem.title, obj.othis);
        });

        //监听checkbox操作
        form.on('switch(lockDemo)', function(obj){
            layer.tips(this.value + ' ' + this.name + '：'+ obj.elem.checked + obj.elem.title, obj.othis);
        });


        //监听单元格编辑
        table.on('edit(demofilter)', function(obj){
            var value = obj.value //得到修改后的值
                ,data = obj.data //得到所在行所有键值
                ,field = obj.field; //得到字段
            layer.msg('[ID: '+ data.id +'] ' + field + ' 更改为：'+ value);
        });


        //点击"可选值"按钮
        $('#btnSelectValue').on('click', function(){
            var text = "Demo Demo";
            layer.open({
                type: 1
                ,title: '可选值'
                //,offset: 'auto'
                ,id: 'selectValueOpen'
                ,area: ['600px', '650px']
                ,content: $('#selectValueDiv')
                //,btn: '关闭'
                ,btnAlign: 'c' //按钮居中
                ,yes: function(){
                    layer.closeAll();
                }
            });
        });



        //点击按钮  添加可选值
        $('#btnSelectValueAdd').on('click', function(){
            var text = "Demo Demo";
            layer.open({
                type: 1
                ,title: '添加可选值'
                //,offset: 'auto'
                ,id: 'selectValueAddOpen'
                ,area: ['500px', '300px']
                ,content: $('#selectValueAddDiv')
                //,btn: '关闭'
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
            //,height: 332
            // ,url: '/my-layui/good/getGoodSourceList' //数据接口
            ,url: './data/user.json' //数据接口
            ,page: true //开启分页
            ,cols: [[ //表头
                {type:'checkbox', fixed: 'left',field:"ids"}
                ,{field:'id', width:80, title: 'ID',  fixed: 'left'}
                ,{field:'username', type:'text', width:150, title: '排序',edit: 'text'}
                ,{field:'city', type:'text', width:300, templet: '#sortTpl', unresize: true, title: '排序1', edit: 'text'}
                ,{field:'city', type:'text', width:300, templet: '#sortTpl2', unresize: true, title: '排序2'}
                ,{field:'city', width:120, title: '属性名称'}
                ,{field:'sign', width:150, title: '属性值录入方式'}
                ,{field:'sign', width:120, title: '能否检索'}
                ,{field:'sign', width:120, title: '属性类型'}
                ,{field:'sign', width:120, title: '是否筛选项目'}
                ,{field:'sign', width:120, title: '同属性是否关联'}
                ,{field:'sign', width:120, title: '是否关联商品'}
                ,{field:'wealth', width:240, fixed: 'right', align:'center',title: '操作',toolbar:"#barDemo"}
            ]]
        });







        //执行一个 table 实例 --可选值
        table.render({
            elem: '#selectValueTbl'
            //,height: 332
            // ,url: '/my-layui/good/getGoodSourceList' //数据接口
            ,url: './data/user.json' //数据接口
            //,page: true //开启分页
            ,cols: [[ //表头
                {type:'checkbox', fixed: 'left',field:"ids"}
                ,{field:'id', width:80, title: 'ID',  fixed: 'left'}
                ,{field:'city', width:120, title: '属性名称'}
                ,{field:'sign', width:150, title: '可选值'}
                ,{field:'sign', width:120, title: '是否关联规格'}
            ]]
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

<!-- 排序2 -->
<script id="sortTpl2" type="text/html">
    <input type="text" style="width: 100px;" name="sort" value="{{d.city}}" lay-filter="sortFilter" >
</script>


<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">修改</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    <input  type="checkbox" name="lock" value="{{d.id}}" title="启用" lay-skin="switch" lay-text="允许|禁止" lay-filter="lockDemo" {{ d.id == 1 ? 'checked' : '' }}>
    检索
</script>


<!-- 内容主体区域 -->
<div class="layui-body">
    <div style="padding: 15px;">

        <blockquote class="layui-elem-quote">
            XXX属性列表
            <a class="layui-btn layui-btn-normal" href="./goodPropertyAdd.jsp" target="_self">添加属性</a>
        </blockquote>

        <blockquote class="layui-elem-quote">
            <a class="layui-btn layui-btn-sm" href="./goodPropertyAdd.jsp" target="_self">添加属性</a>
            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">确认排序</button>
            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">禁止检索</button>
            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">允许检索</button>
            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">删除</button>
            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">编辑</button>
            <a id="btnSelectValue" data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">可选值</a>
        </blockquote>

        <table class="layui-hide" id="test" lay-filter="demofilter"></table>

    </div>
</div>




<!-- 可选值 表格-->
<div id="selectValueDiv" style="display: none;">
    <button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal layui-btn-sm">删除</button>
    <button id="btnSelectValueAdd" data-method="offset" data-type="auto" class="layui-btn layui-btn-normal layui-btn-sm">添加可选值</button>
    <table class="layui-hide" id="selectValueTbl" lay-filter="demofilter2"></table>
</div>




<!-- 添加可选值 -->
<div id="selectValueAddDiv" style="display: none;">

    <div class="layui-form-item">
        <label class="layui-form-label">可选值名称</label>
        <div class="layui-input-block">
            <input type="text" name="title" lay-verify="title" lay-verify="required" autocomplete="off" placeholder="请输入名称">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="demo1">保存</button>
        </div>
    </div>
</div>






<%@ include file="/common/footer.jsp"%>