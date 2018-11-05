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

        var form = layui.form;



        //监听Tab切换
        element.on('tab(demo)', function(data){
            layer.msg('切换了：'+ this.innerHTML);
            console.log(data);
        });

        //执行一个 table 实例
        table.render({
            elem: '#test'
            //,width: 1400
            ,height: 650
            ,url: '/my-layui/good/getGoodSourceList' //数据接口
            //,url: './data/user.json'
            ,page: true //开启分页
            ,cols: [[ //表头

                {type:'checkbox', fixed: 'left',field:"ids"}
                ,{field:'id', width:80, title: 'ID',  fixed: 'left'}
                ,{field:'sourcechannel', width:120, title: '商品渠道来源'}
                ,{field:'status', width:80, title: '状态' }
                ,{field:'lastedittime', width:180, title: '最后编辑时间'}
                ,{field:'lasthandlername', width:150, title: '最后操作者'}
                ,{field:'sex', title:'性别', width:85, templet: '#switchTpl', unresize: true}
                ,{field:'lock', title:'是否启用', width:110, templet: '#checkboxTpl', unresize: true}
                ,{field:'wealth', width:250, fixed: 'right', align:'center',title: '操作',toolbar:"#barDemo"}

            ]]
        });



        //监听性别操作
        form.on('switch(sexDemo)', function(obj){
            layer.tips(this.value + ' ' + this.name + '：'+ obj.elem.checked, obj.othis);
        });

        //监听启用操作
        form.on('checkbox(lockDemo)', function(obj){
            layer.tips(this.value + ' ' + this.name + '：'+ obj.elem.checked + obj.elem.title, obj.othis);
        });

        //点击按钮
        $('#btnDemo').on('click', function(){
            var text = "Demo Demo";
            layer.open({
                type: 1
                ,title: '添加商品来源'
                //,offset: 'auto'
                ,id: 'layerDemo'
                ,area: ['500px', '300px']
                ,content: $('#openDemo')
                ,btn: '关闭'
                ,btnAlign: 'c' //按钮居中
                //,shade: 0 //不显示遮罩
                ,yes: function(){
                    layer.closeAll();
                }
            });
        });



        //自定义验证规则
        form.verify({
            title: function(value){
                if(value.length < 5){
                    return '标题至少得5个字符啊';
                }
            }
        });


        //监听提交
        form.on('submit(saveFilter)', function(data){
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });



    });
</script>





<!-- 内容主体区域 -->
<div class="layui-body">

    <div style="padding: 15px;">
        <div class="layui-elem-quote">
            商品来源
            <button id="btnDemo" data-method="offset" data-type="auto" class="layui-btn layui-btn-normal" style="margin-left: 85%;">添加商品来源</button>
        </div>


        <%--<div class="layui-row" style="background-color: #EEEEEE">--%>
            <%--<div class="layui-col-md9">--%>
                <%--<div class="grid-demo grid-demo-bg1">商品来源</div>--%>
            <%--</div>--%>
            <%--<div class="layui-col-md3">--%>
                <%--<div class="grid-demo">--%>
                    <%--<button id="btnDemo" data-method="offset" data-type="auto" class="layui-btn">添加商品来源</button>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>


        <table class="layui-hide" id="test" lay-filter="demo"></table>

        <script type="text/html" id="barDemo">
            <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
            <a class="layui-btn layui-btn-xs" lay-event="edit">启用</a>
            <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">禁用</a>
            <input type="checkbox" name="sex" value="{{d.id}}" lay-skin="switch" lay-text="启用|禁用" lay-filter="sexDemo" {{ d.id == 1 ? 'checked' : '' }}>
        </script>

        <script id="switchTpl" type="text/html">
            <!-- 这里的 checked 的状态只是演示 -->
            <input type="checkbox" name="sex" value="{{d.id}}" lay-skin="switch" lay-text="女|男" lay-filter="sexDemo" {{ d.id == 1 ? 'checked' : '' }}>
        </script>

        <script id="checkboxTpl" type="text/html">
            <!-- 这里的 checked 的状态只是演示 -->
            <input type="checkbox" name="lock" value="{{d.id}}" title="启用" lay-skin="primary" lay-filter="lockDemo" {{ d.id == 1 ? 'checked' : '' }}>
        </script>

    </div>

</div>



<div id="openDemo" style="display: none;">
    <form class="layui-form" action="">
        <div class="layui-form-item">
            <label class="layui-form-label">来源名称</label>
            <div class="layui-input-block">
                <input type="text" name="title" lay-verify="title" lay-verify="required" autocomplete="off"
                       placeholder="请输入名称">
            </div>
        </div>


        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="saveFilter">保存</button>
            </div>
        </div>
    </form>
</div>



<%@ include file="/common/footer.jsp"%>
