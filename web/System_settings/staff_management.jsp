<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp" %>
<%@include file="../common/Sys_menu.jsp"%>

    <div class="layui-body" >
        <div style="background-color: #EEEEEE ;height: 50px;margin-top: 10px;margin-left: 10px">
          <label style="font-size: 18px;margin-left: 3% ; line-height: 50px" > 员工管理列表  </label>
            <a href="staff_add.jsp"><button class="layui-btn layui-btn-primary layui-btn-sm" style="background-color: #FFFFFF ; margin-left: 75%">添加员工</button></a>
        </div>
        <!-- 上部分查询表单-->
        <div class="main-top" style="background-color:#EEEEEE;width:100%;margin-top: 20px;margin-left: 10px">
            <div class="layui-btn layui-btn-primary layui-btn-sm" style="background-color: #FFFFFF;margin-left: 20px;margin-top: 10px">搜索</div>
            <div class="layui-btn layui-btn-primary layui-btn-sm" style="background-color: #FFFFFF ;margin-top: 10px">重置</div>
            <form class="layui-form" action=""  style="margin-top:10px;">
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">账号</label>
                        <div class="layui-input-inline">
                            <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">姓名</label>
                        <div class="layui-input-inline">
                            <input type="text" name="date" id="date" lay-verify="required|number"  autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">角色</label>
                        <div class="layui-input-inline">
                            <select name="modules" lay-verify="required" lay-search="">
                                <option value="">读取角色列表</option>
                                <option value="1">启用</option>
                                <option value="2">禁用</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">部门</label>
                        <div class="layui-input-inline">
                            <select name="modules" lay-verify="required" lay-search="">
                                <option value="">读取部门列表</option>
                                <option value="1">启用</option>
                                <option value="2">禁用</option>
                            </select>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <!-- 中部表单 -->
        <div class="main-top "style="margin-left: 10px">
            <button class="layui-btn layui-btn-primary layui-btn-sm" >禁用</button>
            <button class="layui-btn layui-btn-primary layui-btn-sm" >启用</button>

            <a href="staff_edit.jsp"><button class="layui-btn layui-btn-primary layui-btn-sm">编辑</button></a>

            <a href="staff_add.jsp"> <button class="layui-btn layui-btn-primary layui-btn-sm">添加员工</button></a>
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
                            ,{field:'id', width:100, title: '账号',fixed: 'left'}
                            ,{field:'city', width:100, title: '部门'}
                            ,{field:'sign', width:100, title: '姓名'}
                            ,{field:'experience', width:100, title: '角色'}
                            ,{field:'score', width:100, title: '状态'}
                            ,{field:'classify', width:100, title: '电话'}
                            ,{field:'classify', width:100, title: 'E-mail'}
                            ,{field:'classify', width:100, title: '座机'}
                            ,{field:'classify', width:150, title: '最后登录时间'}
                        ]]
                        ,page: true
                    });
                });
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