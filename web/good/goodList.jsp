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

        //监听Tab切换
        element.on('tab(demo)', function(data){
            layer.msg('切换了：'+ this.innerHTML);
            console.log(data);
        });


        //日期
        laydate.render({
            elem: '#dateStart'
        });
        laydate.render({
            elem: '#dateEnd'
        });


        //点击"商品导入"按钮
        $('#btnGoodImport').on('click', function(){
            var text = "Demo Demo";
            layer.open({
                type: 1
                ,title: '导入商品'
                //,offset: 'auto'
                ,id: 'goodImportOpen'
                ,area: ['500px', '300px']
                ,content: $('#goodImportDiv')
                //,btn: '关闭'
                ,btnAlign: 'c' //按钮居中
                ,yes: function(){
                    layer.closeAll();
                }
            });
        });

        //点击"商级搜索"按钮
        $('#btnSearchMore').on('click', function(){
            var text = "Demo Demo";
            layer.open({
                type: 1
                ,title: '高级搜索'
                //,offset: 'auto'
                ,id: 'searchMoreOpen'
                ,area: ['600px', '650px']
                ,content: $('#searchMoreDiv')
                //,btn: '关闭'
                ,btnAlign: 'c' //按钮居中
                ,yes: function(){
                    layer.closeAll();
                }
            });
        });




        //执行一个 table 实例
        table.render({
            elem: '#test'
            ,height: 332
            ,url: './data/user.json' //数据接口
            ,page: true //开启分页
            ,cols: [[ //表头
                {type:'checkbox', fixed: 'left',field:"ids"}
                ,{field:'id', width:80, title: 'ID',  fixed: 'left'}
                ,{field:'username', width:120, title: 'SPU-商品名称'}
                ,{field:'sex', width:120, title: '销售状态' }
                ,{field:'city', width:120, title: '规格数量'}
                ,{field:'sign', width:150, title: '商品来源'}
                ,{field:'sign', width:120, title: '推广地区'}
                ,{field:'sign', width:120, title: '商品类型'}
                ,{field:'sign', width:120, title: '商品分类'}
                ,{field:'sign', width:120, title: '录入时间'}
                ,{field:'sign', width:120, title: '最后编辑时间'}
                ,{field:'sign', width:120, title: '最后操作者'}
                // ,{field:'wealth', width:180, fixed: 'right',align:'center',title: '操作',toolbar:"#barDemo"}
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

        //点击按钮 移入回收站
        $('#pushToTrash').on('click', function(obj){
            var text = "Demo Demo";
            //alert(obj.othis);
            window.location.href='pushToTrash?userName='+obj.username+'&phoneNum='+obj.elem.title+'&usernameType=会员';
        });




    });
</script>





<!-- 内容主体区域 -->
<div class="layui-body">


    <div style="padding: 15px;">

        <blockquote class="layui-elem-quote">
            商品列表
            <%--<a class="layui-btn layui-btn-normal" href="layuiAdmin.html" target="_blank">设置显示项目</a>--%>
            <%--<button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal">高级搜索</button>--%>
            <%--<button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal layui-btn-sm">设置显示项目</button>--%>
            <button id="btnGoodImport" data-method="offset" data-type="auto" class="layui-btn layui-btn-normal" style="margin-left: 85%;">商品导入</button>

        </blockquote>


        <!-- 表单集合-->
        <form class="layui-form" action="">
            <blockquote class="layui-elem-quote">
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn layui-btn-sm" lay-submit="" lay-filter="demo1">搜索</button>
                        <a id="btnSearchMore" data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">高级搜索</a>
                        <button type="reset" class="layui-btn layui-btn-primary layui-btn-sm">重置</button>
                    </div>
                </div>


                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">商品名称</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="phone" lay-verify="title" autocomplete="off" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-inline">
                        <label class="layui-form-label">商品来源</label>
                        <div class="layui-input-inline">
                            <input type="text" name="email" autocomplete="off" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-inline">
                        <label class="layui-form-label">状态</label>
                        <div class="layui-input-inline">
                            <select name="interest" lay-filter="aihao">
                                <option value=""></option>
                                <option value="0">上架</option>
                                <option value="1" selected="">下架</option>
                            </select>
                        </div>
                    </div>

                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">商品类型</label>
                        <div class="layui-input-inline">
                            <select name="interest22" lay-filter="aihao">
                                <option value=""></option>
                                <option value="0">顶级类目</option>
                                <option value="1" selected="">一级</option>
                                <option value="2">二级</option>
                                <option value="3">三级</option>
                                <option value="4">顶级二</option>
                            </select>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">商品编码</label>
                        <div class="layui-input-inline">
                            <input type="text" name="email" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
            </blockquote>

            <!-- 表单集合 end -->


            <blockquote class="layui-elem-quote">
                <a class="layui-btn layui-btn-sm" href="./goodSKUList.jsp" target="_self">规格管理</a>
                <button data-method="offset" data-type="auto" class="layui-btn layui-btn-sm">编辑</button>
                <a class="layui-btn layui-btn-sm" href="./goodAdd_A.jsp" target="_self">添加商品</a>
                <button id="pushToTrash" class="layui-btn layui-btn-sm">移入回收站</button>

                <input type="checkbox" name="like[write]" title="仅显示有停售规格" checked=""  lay-skin="primary">

                <div class="layui-form-item" pane="">
                    <input type="checkbox" name="like[write]" title="仅显示有停售规格" checked=""  lay-skin="primary">
                </div>


            </blockquote>

        </form>

        <table class="layui-hide" id="test" lay-filter="demo"></table>


        <%--<script type="text/html" id="barDemo">--%>
            <%--<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>--%>
            <%--<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>--%>
            <%--<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>--%>
        <%--</script>--%>


    </div>


</div>


<!-- 商品导入-->
<div id="goodImportDiv" style="display: none;">
    <div class="layui-form-item">
        <div class="layui-input-block">
            <a class="layui-btn layui-btn-normal" lay-event="detail">下载模板</a>
        </div>
    </div>

    <div class="layui-upload">
        <label class="layui-form-label">选择文件</label>
        <div class="layui-input-inline">
            <input name="file" id="test20" type="file">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="demo1">保存</button>
        </div>
    </div>
</div>




<!-- 高级搜索 -->
<div id="searchMoreDiv" style="display: none;">
    <form class="layui-form" action="" style="padding: 15px;">

        <div class="layui-form-item">
            <label class="layui-form-label">商品名称</label>
            <div class="layui-input-inline">
                <input type="text" name="title" lay-verify="title" lay-verify="required" autocomplete="off"
                       placeholder="请输入名称" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">商品关键字</label>
            <div class="layui-input-inline">
                <input type="text" name="title" lay-verify="title" lay-verify="required" autocomplete="off"
                       placeholder="请输入关键字" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">商品分类</label>
            <div class="layui-input-inline">
                <select name="interest" lay-filter="aihao" lay-verify="required" >
                    <option value=""></option>
                    <option value="0">顶级类目</option>
                    <option value="1" selected="">一级</option>
                    <option value="2">二级</option>
                    <option value="3">三级</option>
                    <option value="4">顶级二</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">商品来源</label>
            <div class="layui-input-inline">
                <select name="interest" lay-filter="aihao" lay-verify="required" >
                    <option value=""></option>
                    <option value="0">顶级类目</option>
                    <option value="1" selected="">一级</option>
                    <option value="2">二级</option>
                    <option value="3">三级</option>
                    <option value="4">顶级二</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">存放仓库</label>
            <div class="layui-input-inline">
                <select name="interest" lay-filter="aihao" lay-verify="required" >
                    <option value=""></option>
                    <option value="0">仓库1</option>
                    <option value="1" selected="">仓库2</option>
                    <option value="2">仓库1</option>
                    <option value="3">仓库1</option>
                    <option value="4">仓库5</option>
                </select>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">库存</label>
            <div class="layui-input-inline" style="width: 100px;" >
                <input type="text" name="title" lay-verify="title" lay-verify="required" autocomplete="off"
                       placeholder="最低库存" class="layui-input">
            </div>
            <div class="layui-input-inline"  style="width: 20px;" >
                --
            </div>
            <div class="layui-input-inline"  style="width: 100px;" >
                <input type="text" name="title" lay-verify="title" lay-verify="required" autocomplete="off"
                       placeholder="最高库存" class="layui-input">
            </div>
        </div>


        <div class="layui-form-item">
            <label class="layui-form-label">商品状态</label>
            <div class="layui-input-inline">
                <select name="interest" lay-filter="aihao">
                    <option value=""></option>
                    <option value="0">上架</option>
                    <option value="1" selected="">下架</option>
                </select>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">销售价格</label>
            <div class="layui-input-inline" style="width: 100px;" >
                <input type="text" name="title" lay-verify="title" lay-verify="required" autocomplete="off"
                       placeholder="最低价格" class="layui-input">
            </div>
            <div class="layui-input-inline"  style="width: 20px;" >
                --
            </div>
            <div class="layui-input-inline"  style="width: 100px;" >
                <input type="text" name="title" lay-verify="title" lay-verify="required" autocomplete="off"
                       placeholder="最高价格" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">上架时间</label>
            <div class="layui-input-inline" style="width: 100px;" >
                <input type="text" id="dateStart" name="title" lay-verify="date" lay-verify="required" autocomplete="off"
                       placeholder="开始时间" class="layui-input">
            </div>
            <div class="layui-input-inline"  style="width: 20px;" >
                --
            </div>
            <div class="layui-input-inline"  style="width: 100px;" >
                <input type="text" id="dateEnd" name="title" lay-verify="date" lay-verify="required" autocomplete="off"
                       placeholder="结束时间" class="layui-input">
            </div>
        </div>


        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="demo1">搜索</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>

    </form>
</div>


<%@ include file="/common/footer.jsp"%>