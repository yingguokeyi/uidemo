<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/header.jsp"%>
<%@include file="member_menu.jsp"%>

!-- 内容主体区域 -->
<div class="layui-body">
    <div class="layui-row">
        <div style="background-color: #EEEEEE ;height: 50px;margin-top: 10px;margin-left: 10px">
            <label style="font-size: 18px;margin-left: 3% ; line-height: 50px" >提现信息详情</label>
            <button class="layui-btn layui-btn-radius" style=" margin-left: 75%" onclick="history.go(-1)">返回</button>
        </div>
        <br>
        <div>
            <label style="font-size: 15px;margin-left: 3% ; line-height: 30px" >联系人信息</label>
            <hr class="layui-bg-gray">
        </div>
        <div style=" height: 50px;margin-top: 10px;margin-left: 100px">

            <div class="layui-inline" >
                姓名：
                <a class="layui-inline" id="username"></a>
            </div>
            <div class="layui-inline" style="position: relative;left:500px;">
                手机号：
                <a class="layui-inline" id="phone"></a>
            </div>
        </div>
        <div style=" height: 50px;margin-top: 10px;margin-left: 100px">
            会员类型：
            <div class="layui-inline" >
                <a class="layui-inline" id="usernametype"></a>
            </div>
        </div>
    </div>

    <div>
        <div>
            <label style="font-size: 15px;margin-left: 3% ; line-height: 30px" >提现信息</label>
            <hr class="layui-bg-gray">
        </div>
        <div style="margin-left: 7%;width: 80.5%">
            <table class="layui-table" id="withdrawalsDetailList"  style="visibility: hidden" lay-filter="demo" ></table>
        </div>
    </div>
</div>