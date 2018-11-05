<%--
  Created by IntelliJ IDEA.
  User: shi
  Date: 2018/3/3
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/header.jsp" %>
<%@ include file="/common/menu.jsp" %>
<script>
    layui.use('form', function () {
        var form = layui.form;
        //监听提交
        form.on('submit(formDemo)', function (data) {
        });
    });
    layui.use('laydate', function () {
        var laydate = layui.laydate;
        //执行一个laydate实例
        laydate.render({
            elem: '#test1' //指定元素
        });
        laydate.render({
            elem: '#test1-1' //指定元素
        });
    });
</script>
<!-- 内容主体区域 -->
<div class="layui-body" style="padding: 30px">
    <button class="layui-btn layui-btn-primary" onclick="window.location.href='./goodAdd_A.jsp'">1.选择类型 ></button>
    <button class="layui-btn layui-btn-primary" onclick="window.location.href='./goodAdd_B.jsp'">2.商品信息 ></button>
    <button class="layui-btn layui-btn-normal" onclick="window.location.href='./goodAdd_C.jsp'">3.添加规格 ></button>
    <button class="layui-btn layui-btn-primary">4.发布商品</button>
    <form class="layui-form" action="">
        <h3 style="margin-top: 40px;">规格信息 : </h3>
        <hr class="layui-bg-blue">
        <div class="layui-form-item">
            <label class="layui-form-label">规格名称 : </label>
            <div class="layui-input-block">
                <input style="width: 500px;" name="title" lay-verify="title" autocomplete="off" placeholder=""
                       class="layui-input" type="text">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">编码 : </label>
            <div class="layui-input-block">
                <input style="width: 500px;" name="title" lay-verify="title" autocomplete="off" placeholder=""
                       class="layui-input" type="text">
            </div>
        </div>
        <h3>销售信息 : </h3>
        <hr class="layui-bg-blue">
        <div class="layui-form-item">
            <label class="layui-form-label">计量单位 : </label>
            <div class="layui-input-block" style="width: 500px;">
                <select name="interest" lay-filter="aihao">
                    <option value="">请从列表中选择</option>
                    <option value="0">写作</option>
                    <option value="1">阅读</option>
                    <option value="2">游戏</option>
                    <option value="3">音乐</option>
                    <option value="4">旅行</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">包装数量 : </label>
            <div class="layui-input-block">
                <input style="width: 500px;" name="title" lay-verify="title" autocomplete="off" placeholder=""
                       class="layui-input" type="text">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">销售价格(￥)</label>
            <div class="layui-input-block">
                <input style="width: 500px;" name="title" lay-verify="title" autocomplete="off" placeholder=""
                       class="layui-input" type="text">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">原价(￥)</label>
            <div class="layui-input-block">
                <input style="width: 500px;" name="title" lay-verify="title" autocomplete="off" placeholder=""
                       class="layui-input" type="text">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">限售数量:</label>
            <div class="layui-input-block">
                <input style="width: 500px;" name="title" lay-verify="title" autocomplete="off" placeholder=""
                       class="layui-input" type="text">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">重量(kg) : </label>
            <div class="layui-input-block">
                <input style="width: 500px;" name="title" lay-verify="title" autocomplete="off" placeholder=""
                       class="layui-input" type="text">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">体积(cm³) : </label>
            <div class="layui-input-block">
                <input style="width: 500px;" name="title" lay-verify="title" autocomplete="off" placeholder=""
                       class="layui-input" type="text">
            </div>
        </div>
        <h3>预售时间 : </h3>
        <hr class="layui-bg-blue">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">开始时间 : </label>
                <div class="layui-input-inline">
                    <input class="layui-input" id="test1" placeholder="yyyy-MM-dd" type="text">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">结束时间 : </label>
                <div class="layui-input-inline">
                    <input class="layui-input" id="test1-1" placeholder="yyyy-MM-dd" type="text">
                </div>
            </div>
        </div>
        <div class="layui-form-item" pane="">
            <div class="layui-input-block">
                <input name="like1[write]" lay-skin="primary" title="不限制结束时间" checked="" type="checkbox">
            </div>
        </div>
        <h3>销售属性 : </h3>
        <hr class="layui-bg-blue">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">电压 : </label>
                <div class="layui-input-inline" style="width: 500px;">
                    <select name="modules" lay-verify="required" lay-search="">
                        <option value="">可直接输入内容</option>
                        <option value="1">layer</option>
                        <option value="2">form</option>
                        <option value="3">layim</option>
                        <option value="4">element</option>
                        <option value="5">laytpl</option>
                        <option value="6">upload</option>
                        <option value="7">laydate</option>
                        <option value="8">laypage</option>
                        <option value="9">flow</option>
                        <option value="10">util</option>
                        <option value="11">code</option>
                        <option value="12">tree</option>
                        <option value="13">layedit</option>
                        <option value="14">nav</option>
                        <option value="15">tab</option>
                        <option value="16">table</option>
                        <option value="17">select</option>
                        <option value="18">checkbox</option>
                        <option value="19">switch</option>
                        <option value="20">radio</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">功率 : </label>
                <div class="layui-input-inline" style="width: 500px;">
                    <select name="modules" lay-verify="required" lay-search="">
                        <option value="">可直接输入内容</option>
                        <option value="1">layer</option>
                        <option value="2">form</option>
                        <option value="3">layim</option>
                        <option value="4">element</option>
                        <option value="5">laytpl</option>
                        <option value="6">upload</option>
                        <option value="7">laydate</option>
                        <option value="8">laypage</option>
                        <option value="9">flow</option>
                        <option value="10">util</option>
                        <option value="11">code</option>
                        <option value="12">tree</option>
                        <option value="13">layedit</option>
                        <option value="14">nav</option>
                        <option value="15">tab</option>
                        <option value="16">table</option>
                        <option value="17">select</option>
                        <option value="18">checkbox</option>
                        <option value="19">switch</option>
                        <option value="20">radio</option>
                    </select>
                </div>
            </div>
        </div>
        <h3>活动时间 : </h3>
        <hr class="layui-bg-blue">
        <div class="layui-form-item">
            <label class="layui-form-label">活动类型 : </label>
            <div class="layui-input-block" style="width: 500px;">
                <select name="interest" lay-filter="aihao">
                    <option value=""></option>
                    <option value="0">写作</option>
                    <option value="1" selected="">阅读</option>
                    <option value="2">游戏</option>
                    <option value="3">音乐</option>
                    <option value="4">旅行</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">开始时间 : </label>
                <div class="layui-input-inline">
                    <input class="layui-input" id="test1" placeholder="yyyy-MM-dd" type="text">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">结束时间 : </label>
                <div class="layui-input-inline">
                    <input class="layui-input" id="test1-1" placeholder="yyyy-MM-dd" type="text">
                </div>
            </div>
        </div>
        <div class="layui-form-item" pane="">
            <div class="layui-input-block">
                <input name="like1[write]" lay-skin="primary" title="不限制结束时间" checked="" type="checkbox">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn layui-btn-normal">保存/关闭</button>
                <button class="layui-btn layui-btn-normal">保存/添加新规格</button>
                <button class="layui-btn layui-btn-normal">保存</button>
            </div>
        </div>
    </form>
<%@ include file="/common/footer.jsp" %>