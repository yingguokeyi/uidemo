<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/header.jsp"%>

    <%@include file="../common/Sys_menu.jsp"%>

    <div class="layui-body" >
        <div style="background-color: #EEEEEE ;height: 50px;margin-top: 10px;margin-left: 10px">
            <label style="font-size: 18px;margin-left: 3% ; line-height: 50px" > 部门列表  </label>

        </div>
        <!-- 上部分查询表单-->
        <div class="main-top" style="background-color:#EEEEEE;width:100%;margin-top: 20px;margin-left: 10px;height: 50px;line-height: 50px">
            <div style="margin-left: 30px">
                <button class="layui-btn layui-btn-primary layui-btn-sm" style="margin-left: 20px">确认排序</button>
                <button class="layui-btn layui-btn-primary layui-btn-sm" style="margin-left: 20px">删除</button>
                <button class="layui-btn layui-btn-primary layui-btn-sm" style="margin-left: 20px">编辑</button>
                <button class="layui-btn layui-btn-primary layui-btn-sm" style="margin-left: 20px">添加部门</button>
            </div>


        </div>

        <div class="main-top">
            <!-- 表格显示-->
            <table class="layui-hide" id="test"></table>
            <script>
                layui.use('table', function(){
                    var table = layui.table;

                    table.render({
                        elem: '#test'
                        ,url:'./demo/table/user.json'
                        ,width: 1720
                        ,height: 600
                        ,cols: [[
                            {field:'', width:20, fixed: 'left'}
                            ,{type:'checkbox', fixed: 'left'}
                            ,{field:'id', width:150, title: '排序',  fixed: 'left'}
                            ,{field:'username', width:150, title: '部门名称'}
                            ,{field:'sex', width:150, title: '人数' }
                            ,{field:'city', width:300, title: '备注'}


                            ,{fixed: 'right', width: 250, title: '操作',align:'center', toolbar: '#barDemo'}
                        ]]
                        ,page: true
                    });
                });
            </script>

            <script type="text/html" id="barDemo">
                <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail" href="member_table.jsp">成员列表</a>
                <a class="layui-btn layui-btn-xs" lay-event="edit" href="section_edit.jsp">编辑</a>

            </script>
        </div>
    </div>
</div>


<div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
</div>
</div>

<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</body>
</html>