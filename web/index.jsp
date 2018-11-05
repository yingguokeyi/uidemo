<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/header.jsp" %>
<%@ include file="/common/menu.jsp" %>
<script>


    layui.config({
        version: '1515376178738' //为了更新 js 缓存，可忽略
    });

    //JavaScript代码区域
    layui.use(['laydate', 'laypage', 'layer','table', 'element'], function(){
        var element = layui.element;

        var laydate = layui.laydate //日期
            ,laypage = layui.laypage //分页
            ,layer = layui.layer //弹层
            ,table = layui.table //表格
            ,element = layui.element; //元素操作

        //监听Tab切换
        // element.on('tab(demo)', function(data){
        //     layer.msg('切换了：'+ this.innerHTML);
        //     console.log(data);
        // });


    });

</script>


<!-- 内容主体区域 -->
<div class="layui-body" style="padding: 30px;">
    <blockquote class="layui-elem-quote"> 管理中心</blockquote>
    <blockquote class="layui-elem-quote"> 重要提醒：<span style="color: red; ">有三个新订单等待处理</span></blockquote>
    <table class="layui-table">
        <colgroup>
            <col width="25%">
            <col width="25%">
            <col width="25%">
            <col width="25%">
        </colgroup>
        <thead>
        <tr>
            <th>统计信息</th>
            <th></th>
            <th></th>
            <th>
                <div class="layui-form">
                    <select name="" lay-verify="">
                        <option>全部</option>
                    </select>
                </div>
            </th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><span style="color: red; ">待处理任务:</span></td>
            <td><span style="color: red; ">150</span></td>
            <td>未处理任务:</td>
            <td>53</td>
        </tr>
        <tr>
            <td>待提现人数:</td>
            <td>52</td>
            <td></td>
            <td></td>
        </tr>
        </tbody>
    </table>
<%@ include file="/common/footer.jsp" %>