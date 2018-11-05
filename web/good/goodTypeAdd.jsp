<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<%@ include file="/common/menu.jsp"%>




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
    });

</script>


<!-- 内容主体区域 -->
<div class="layui-body">

    <div style="padding: 15px;">

        <blockquote class="layui-elem-quote">
            添加商品类型
            <a class="layui-btn layui-btn-normal" href="./goodTypeList.jsp" target="_self" style="margin-left: 85%;">商品类型列表</a>
        </blockquote>

        <form class="layui-form" action="" style="padding: 15px;">
            <div class="layui-form-item">
                <label class="layui-form-label">类型名称</label>
                <div class="layui-input-inline">
                    <input type="text" style="width: 500px;" name="title" lay-verify="title" lay-verify="required" autocomplete="off"
                           placeholder="请输入名称" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">所属类目</label>
                <div class="layui-input-inline">
                    <select name="interest" lay-filter="aihao" lay-verify="required" >
                        <option value=""></option>
                        <option value="0">顶级类目</option>
                        <option value="1" selected="">一级</option>
                        <option value="2">二级</option>
                        <option value="3">三级</option>
                        <option value="4">顶级二</option>
                    </select>
                </div>
            </div>


            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">分类</label>
                    <div class="layui-input-inline">
                        <select name="quiz">
                            <option value="">请选择分类</option>
                            <optgroup label="顶级类目一">
                                <option value="11">一级</option>
                                <optgroup label="类目二">
                                    <option value="22">二级</option>
                                </optgroup>
                            </optgroup>
                            <optgroup label="学生时代">
                                <option value="你的工号">你的工号</option>
                                <option value="你最喜欢的老师">你最喜欢的老师</option>
                            </optgroup>
                        </select>
                    </div>
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