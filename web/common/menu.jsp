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
                <a class="" href="javascript:;">商品管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="/uidemo/good/goodSourceList.jsp">商品来源</a></dd>
                    <br/>
                    <dd><a href="/uidemo/good/goodList.jsp">商品列表</a></dd>
                    <dd><a href="/uidemo/good/goodAdd_A.jsp">添加商品</a></dd>
                    <dd><a href="/uidemo/good/goodTrash.jsp">商品回收站</a></dd>
                    <br/>
                    <dd><a href="/uidemo/good/goodCategoryList.jsp">商品分类</a></dd>
                    <dd><a href="/uidemo/good/goodCategoryAdd.jsp">添加商品分类</a></dd>
                    <br/>
                    <dd><a href="/uidemo/good/goodTypeList.jsp">商品类型列表</a></dd>
                    <dd><a href="/uidemo/good/goodTypeAdd.jsp">添加商品类型</a></dd>
                    <br/>
                    <dd><a href="/uidemo/good/goodBrandList.jsp">品牌列表</a></dd>
                    <dd><a href="/uidemo/good/goodBrandAdd.jsp">添加品牌</a></dd>
                    <br/>
                    <%--<dd><a href="${ctx}/good/index">供应商列表</a></dd>--%>
                    <%--<dd><a href="${ctx}/good/index">添加供应商</a></dd>--%>
                    <%--<dd><a href="${ctx}/good/index">自提点列表</a></dd>--%>
                    <%--<dd><a href="${ctx}/good/index">添加自提点</a></dd>--%>
                    <dd><a href="/uidemo/good/quantityUnitList.jsp">单位数量管理</a></dd>
                    <br/>
                    <dd><a href="/uidemo/good/areaList.jsp">地区管理</a></dd>
                </dl>
            </li>

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
            <li class="layui-nav-item">
                <a href="javascript:;">分销管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="">分销设置</a></dd>
                </dl>
                <dl class="layui-nav-child">
                    <dd><a href="">分销等级</a></dd>
                </dl>
                <dl class="layui-nav-child">
                    <dd><a href="">分销操作日志</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">发布商品</a></li>
        </ul>
    </div>
</div>
