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
    layui.use('upload', function(){
        var $ = layui.jquery
            ,upload = layui.upload;

        //多图片上传
        upload.render({
            elem: '#test2'
            ,url: '/upload/'
            ,multiple: true
            ,before: function(obj){
                //预读本地文件示例，不支持ie8
                obj.preview(function(index, file, result){
                    $('#demo2').append('<img src="'+ result +'" alt="'+ file.name +'" class="layui-upload-img">')
                });
            }
            ,done: function(res){
                //上传完毕
            }
        });
    });
</script>
<!-- 内容主体区域 -->
<div class="layui-body" style="padding: 30px">
    <button class="layui-btn layui-btn-primary" onclick="window.location.href='./goodAdd_A.jsp'">1.选择类型 ></button>
    <button class="layui-btn layui-btn-normal" onclick="window.location.href='./goodAdd_B.jsp'">2.商品信息 ></button>
    <button class="layui-btn layui-btn-primary" onclick="window.location.href='./goodAdd_C.jsp'">3.添加规格 ></button>
    <button class="layui-btn layui-btn-primary">4.发布商品</button>
    <blockquote class="layui-elem-quote" style="margin-top: 40px;">您选择的类目:水果>哈密瓜>新疆哈密瓜</blockquote>
    <form class="layui-form" action="./goodAdd_C.jsp">
        <h3>商品属性 : </h3>
        <hr class="layui-bg-blue">
        <div class="layui-form-item">
            <label class="layui-form-label">类型 : </label>
            <div class="layui-input-block">
                <input style="width: 500px;" name="title" lay-verify="title" autocomplete="off" placeholder=""
                       class="layui-input" type="text">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">属性1 : </label>
            <div class="layui-input-block">
                <input style="width: 500px;" name="title" lay-verify="title" autocomplete="off" placeholder=""
                       class="layui-input" type="text">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">属性2 : </label>
            <div class="layui-input-block">
                <input style="width: 500px;" name="title" lay-verify="title" autocomplete="off" placeholder=""
                       class="layui-input" type="text">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">属性3：</label>
            <div class="layui-input-block">
                <input style="width: 500px;" name="title" lay-verify="title" autocomplete="off" placeholder=""
                       class="layui-input" type="text">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">产品尺寸：</label>
            <div class="layui-input-block">
                <input style="width: 500px;" name="title" lay-verify="title" autocomplete="off" placeholder=""
                       class="layui-input" type="text">
            </div>
        </div>
        <h3>基本信息 : </h3>
        <hr class="layui-bg-blue">
        <div class="layui-form-item">
            <label class="layui-form-label">商品名称：</label>
            <div class="layui-input-block">
                <input style="width: 500px;" name="title" lay-verify="title" autocomplete="off" placeholder=""
                       class="layui-input" type="text">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">商品品牌：</label>
            <div class="layui-input-block">
                <input style="width: 500px;" name="title" lay-verify="title" autocomplete="off" placeholder=""
                       class="layui-input" type="text">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">供应商：</label>
            <div class="layui-input-block">
                <input style="width: 500px;" name="title" lay-verify="title" autocomplete="off" placeholder=""
                       class="layui-input" type="text">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">产地：</label>
            <div class="layui-input-block">
                <input style="width: 500px;" name="title" lay-verify="title" autocomplete="off" placeholder=""
                       class="layui-input" type="text">
            </div>
        </div>
        <h3>图片和详细说明 : </h3>
        <hr class="layui-bg-blue">
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">详细描述：</label>
            <div class="layui-input-block">
                <textarea style="width: 500px;" placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
        </div>
        <div class="layui-upload" style="margin-left: 110px;">
            <button type="button" class="layui-btn" id="test2">多图片上传</button>
            <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 10px;">
                预览图：
                <div class="layui-upload-list" id="demo2"></div>
            </blockquote>
        </div>
        <h3>其他信息 : </h3>
        <hr class="layui-bg-blue">
        <div class="layui-form-item">
            <label class="layui-form-label">首页序号：</label>
            <div class="layui-input-block">
                <input style="width: 500px;" name="title" lay-verify="title" autocomplete="off" placeholder=""
                       class="layui-input" type="text">
            </div>
        </div>
        <h3>SEO信息 : </h3>
        <hr class="layui-bg-blue">
        <div class="layui-form-item">
            <label class="layui-form-label">META Keywords</label>
            <div class="layui-input-block">
                <input style="width: 500px;" name="title" lay-verify="title" autocomplete="off"
                       placeholder="关键词之间请用 , 隔开" class="layui-input" type="text">
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">META Description</label>
            <div class="layui-input-block">
                <textarea style="width: 500px;" placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn layui-btn-normal">保存/关闭</button>
                <button class="layui-btn layui-btn-normal">保存/添加规格</button>
            </div>
        </div>
    </form>
<%@ include file="/common/footer.jsp" %>