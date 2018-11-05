<%--
  Created by IntelliJ IDEA.
  User: luyou
  Date: 2018/2/27
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree"  lay-filter="test">
            <li class="layui-nav-item layui-nav-itemed">
                <a class="" href="staff_management.jsp">员工管理列表</a>
            </li>
            <li class="layui-nav-item layui-nav-itemed">
                <a class="" href="staff_add.jsp">添加员工</a>
            </li>
            <li class="layui-nav-item layui-nav-itemed">
                <a class="" href="role_management.jsp">角色管理列表</a>
            </li>
            <li class="layui-nav-item layui-nav-itemed">
                <a class="" href="role_add.jsp">添加角色</a>
            </li>
            <li class="layui-nav-item layui-nav-itemed">
                <a class="" href="section_management.jsp">部门管理列表</a>
            </li>
            <li class="layui-nav-item layui-nav-itemed">
                <a class="" href="section_add.jsp">添加部门</a>
            </li>
            <li class="layui-nav-item layui-nav-itemed">
                <a class="" href="operation_log.jsp">操作日志</a>
            </li>
            <li class="layui-nav-item layui-nav-itemed">
                <a class="" href="javascript:;">个人设置</a>
            </li>
            <li class="layui-nav-item layui-nav-itemed">
                <a class="" href="message_Management.jsp">消息管理</a>
            </li>
        </ul>
    </div>
</div>