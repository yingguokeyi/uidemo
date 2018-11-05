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
            添加商品分类
            <a class="layui-btn layui-btn-normal" href="./goodCategoryList.jsp" target="_self" style="margin-left: 85%;">商品分类列表</a>
        </blockquote>

        <form class="layui-form" action="" style="padding: 15px;">
            <div class="layui-form-item">
                <label class="layui-form-label">分类名称</label>
                <div class="layui-input-inline">
                    <input type="text" style="width: 500px;" name="title" lay-verify="title" lay-verify="required" autocomplete="off"
                           placeholder="请输入名称" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">分类</label>
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
                <label class="layui-form-label">默认单位数量</label>
                <div class="layui-input-inline">
                    <select name="interest" lay-filter="aihao">
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
                    <label class="layui-form-label">筛选属性</label>
                    <div class="layui-input-inline">
                        <select name="interest" lay-filter="aihao">
                            <option value=""></option>
                            <option value="0">顶级类目</option>
                            <option value="1" selected="">一级</option>
                            <option value="2">二级</option>
                            <option value="3">三级</option>
                            <option value="4">顶级二</option>
                        </select>
                    </div>
                </div>
                <div class="layui-inline">
                    <div class="layui-input-inline">
                        <select name="interest" lay-filter="aihao">
                            <option value=""></option>
                            <option value="0">顶级类目</option>
                            <option value="1" selected="">一级</option>
                            <option value="2">二级</option>
                            <option value="3">三级</option>
                            <option value="4">顶级二</option>
                        </select>
                    </div>
                </div>
            </div>


            <div class="layui-form-item">
                <label class="layui-form-label">METE Title</label>
                <div class="layui-input-inline">
                    <input type="text" name="title" lay-verify="title" lay-verify="required" autocomplete="off"
                           placeholder="针对搜索引擎设置的标题" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">METE Keywords</label>
                <div class="layui-input-inline">
                    <input type="text" name="title" lay-verify="title" lay-verify="required" autocomplete="off"
                           placeholder="针对搜索引擎设置的关键词" class="layui-input">
                </div>
            </div>


            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">分组选择框</label>
                    <div class="layui-input-inline">
                        <select name="quiz">
                            <option value="">请选择问题</option>
                            <optgroup label="城市记忆">
                                <option value="你工作的第一个城市">你工作的第一个城市</option>
                            </optgroup>
                            <optgroup label="学生时代">
                                <option value="你的工号">你的工号</option>
                                <option value="你最喜欢的老师">你最喜欢的老师</option>
                            </optgroup>
                        </select>
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">搜索选择框</label>
                    <div class="layui-input-inline">
                        <select name="modules" lay-verify="required" lay-search="">
                            <option value="">直接选择或搜索选择</option>
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
                <label class="layui-form-label">METE Description</label>
                <div class="layui-input-block">
                    <textarea  width="500" height="300" placeholder="针对搜索引擎设置的网页描述" class="layui-textarea"></textarea>
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