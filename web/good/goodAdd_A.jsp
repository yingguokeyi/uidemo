<%--
  Created by IntelliJ IDEA.
  User: shi
  Date: 2018/3/3
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/header.jsp" %>
<%@ include file="/common/menu.jsp" %>
<script>
    layui.use('form', function () {
    });
</script>
<!-- 内容主体区域 -->
<div class="layui-body" style="padding: 30px">
    <button class="layui-btn layui-btn-normal" onclick="window.location.href='./goodAdd_A.jsp'">1.选择类型 ></button>
    <button class="layui-btn layui-btn-primary" onclick="window.location.href='./goodAdd_B.jsp'">2.商品信息 ></button>
    <button class="layui-btn layui-btn-primary" onclick="window.location.href='./goodAdd_C.jsp'">3.添加规格 ></button>
    <button class="layui-btn layui-btn-primary">4.发布商品</button>
    <div class="layui-form-item" style="width: 650px;margin:40px auto;">
        <label class="layui-form-label">查找类型</label>
        <div class="layui-input-block">
            <input style="width: 400px;" name="title" lay-verify="title" autocomplete="off" placeholder=""
                   class="layui-input" type="text">
        </div>
        <button class="layui-btn layui-btn-normal" style="position: relative;left: 520px;bottom: 37px;">搜索</button>
    </div>
    <div style="width: 1400px;height: 450px;background-color: #f2f2f2;margin: 0 auto;">
        <div style="border:1px solid black;width: 1200px;height: 400px;position: relative;left: 100px;top: 25px;background-color: white">
            <div class="layui-form-item layui-form" style="margin: 40px 70px;">
                <label class="layui-form-label">商品选择</label>
                <div class="layui-input-inline">
                    <select name="quiz1">
                        <option value="">请选择省</option>
                        <option value="浙江" selected="">浙江省</option>
                        <option value="你的工号">江西省</option>
                        <option value="你最喜欢的老师">福建省</option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select name="quiz2">
                        <option value="">请选择市</option>
                        <option value="杭州">杭州</option>
                        <option value="宁波" disabled="">宁波</option>
                        <option value="温州">温州</option>
                        <option value="温州">台州</option>
                        <option value="温州">绍兴</option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select name="quiz3">
                        <option value="">请选择县/区</option>
                        <option value="西湖区">西湖区</option>
                        <option value="余杭区">余杭区</option>
                        <option value="拱墅区">临安市</option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select name="quiz4">
                        <option value="">请选择县/区</option>
                        <option value="西湖区">西湖区</option>
                        <option value="余杭区">余杭区</option>
                        <option value="拱墅区">临安市</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
    <button class="layui-btn layui-btn-normal" style="position: relative;left: 740px;top: 30px;" onclick="window.location.href='./goodAdd_B.jsp'">下一步: 填写商品信息
    </button>
<%@ include file="/common/footer.jsp" %>