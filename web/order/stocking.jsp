<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp"%>

<form class="layui-form" action="">
    <div class="layui-form">
        <div class="layui-form-item">
            <label class="layui-form-label">订单号</label>
            <div class="layui-input-block">
                <input name="title" lay-verify="title" autocomplete="off" class="layui-input" type="text">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
                <select name="interest" lay-filter="remark">
                    <option value="0" selected="">北京一号仓库</option>
                </select>
            </div>
        </div>
        <!-- 文本域-->
        <div class="layui-form-item layui-form-text">
            <div class="layui-input-block">
                <textarea class="layui-textarea"></textarea>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn layui-btn-sm layui-btn-normal">确认</button>
            </div>
        </div>
    </div>
</form>

<script>
    layui.use('form',function(){

    });
</script>


<%@ include file="/common/footer.jsp"%>
