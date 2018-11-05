<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp"%>
<html>
<head>
    <title>查看上级会员信息</title>
</head>
<body>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree"  lay-filter="test">
            <li class="layui-nav-item">
                <a href="javascript:;">会员管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="/uidemo/member/memberList.jsp">会员查询</a></dd>
                    <dd><a href="/uidemo/member/certification.jsp">认证审核</a></dd>
                    <dd><a href="/uidemo/member/member_mrank.jsp">等级管理</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">注册管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="/uidemo/member/pregistered.jsp">禁止注册账户</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">基本档案</a>
                <dl class="layui-nav-child">
                    <dd><a href="/uidemo/member/employee.jsp">员工管理</a></dd>
                </dl>
            </li>
        </ul>
    </div>
</div>
</body>
</html>
