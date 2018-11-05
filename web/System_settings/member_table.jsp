<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/header.jsp"%>
    <%@include file="../common/Sys_menu.jsp"%>

    <div class="layui-body" >
        <div style="background-color: #EEEEEE ;height: 50px;margin-top: 10px;margin-left: 10px">
            <label style="font-size: 18px;margin-left: 3% ; line-height: 50px" > 角色列表  </label>
            <a href="role_add.jsp"><button class="layui-btn layui-btn-primary layui-btn-sm" style="background-color: #FFFFFF ; margin-left: 75%">添加角色</button></a>
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
                            {field:'', width:200, fixed: 'left'}
                            ,{type:'checkbox', fixed: 'left'}
                            ,{field:'id', width:200, title: 'Idds D',  fixed: 'left'}
                            ,{field:'username', width:200, title: '会员姓名'}
                            ,{field:'sex', width:200, title: '账号' }
                            ,{field:'city', width:200, title: '手机号'}

                            ,{fixed: 'right', width: 300, align:'center', toolbar: '#barDemo'}
                        ]]
                        ,page: true
                    });
                });
            </script>

            <script type="text/html" id="barDemo">
                <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail" href="permission.jsp">编辑</a>
                <a class="layui-btn layui-btn-xs" lay-event="edit">操作日志</a>
                <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail" href="operation_log.jsp">移除</a>
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