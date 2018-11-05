<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<%@ include file="/common/menu.jsp"%>




<script>

    layui.config({
        version: '1515376178738' //为了更新 js 缓存，可忽略
    });

    //JavaScript代码区域
    layui.use(['laydate','upload','layer','table', 'element'], function(){
        var $ = layui.jquery
            ,upload = layui.upload
            ,layer = layui.layer //弹层
            ,element = layui.element; //元素操作


        //普通图片上传
        var uploadInst = upload.render({
            elem: '#test1'
            ,url: '/upload/'
            ,before: function(obj){
                //预读本地文件示例，不支持ie8
                obj.preview(function(index, file, result){
                    $('#demo1').attr('src', result); //图片链接（base64）
                });
            }
            ,done: function(res){
                //如果上传失败
                if(res.code > 0){
                    return layer.msg('上传失败');
                }
                //上传成功
            }
            ,error: function(){
                //演示失败状态，并实现重传
                var demoText = $('#demoText');
                demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
                demoText.find('.demo-reload').on('click', function(){
                    uploadInst.upload();
                });
            }
        });



        //绑定原始文件域
        upload.render({
            elem: '#test20'
            ,url: '/upload/'
            ,done: function(res){
                console.log(res)
            }
        });

    });





</script>


<!-- 内容主体区域 -->
<div class="layui-body">

    <div style="padding: 15px;">

        <blockquote class="layui-elem-quote">
            添加品牌
            <a class="layui-btn layui-btn-normal" href="./goodBrandList.jsp" target="_self" style="margin-left: 85%;">品牌列表</a>
        </blockquote>

        <form class="layui-form" action="" style="padding: 15px;">
            <div class="layui-form-item">
                <label class="layui-form-label">品牌名称</label>
                <div class="layui-input-inline">
                    <input type="text" style="width: 500px;" name="title" lay-verify="title" lay-verify="required" autocomplete="off"
                           placeholder="请输入名称" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">品牌网址</label>
                <div class="layui-input-inline">
                    <input type="text" style="width: 500px;" name="title" lay-verify="title" lay-verify="required" autocomplete="off"
                           placeholder="请输入网址" class="layui-input">
                </div>
            </div>

            <%--<div class="layui-upload">--%>
                <%--<label class="layui-form-label">品牌LOGO</label>--%>
                <%--<div class="layui-input-inline">--%>
                    <%--<input name="file" id="test20" type="file">--%>
                <%--</div>--%>
            <%--</div>--%>

            <div class="layui-form-item">
                <label class="layui-form-label">品牌LOGO</label>
                <div class="layui-input-inline">
                    <button class="layui-btn layui-btn-sm" id="test1" type="button">上传品牌LOGO</button>
                    <div class="layui-upload-list">
                        <img class="layui-upload-img" style="width: 100px;height: 100px" id="demo1">
                        <p id="demoText"></p>
                    </div>

                </div>
            </div>


            <div class="layui-form-item">
                <label class="layui-form-label">品牌介绍</label>
                <div class="layui-input-block">
                    <textarea  width="500" height="300" maxlength="200" placeholder="品牌介绍" class="layui-textarea"></textarea>
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit="" lay-filter="demo1">确定</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>


    </div>


</div>



<%@ include file="/common/footer.jsp"%>
