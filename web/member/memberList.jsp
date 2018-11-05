<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<%@ include file="/member/huiyuan_menu.jsp"%>
<head>
    <title>会员管理</title>
    <script>
        //JavaScript代码区域
        layui.use('element', function(){
            var element = layui.element;
        });
        //启用和禁用按钮
        function disable(){
            //var size = $("#test").size();
           // if(size == 0){
                alert("请至少选择一条记录");
             //   return;
           // }
        };
        //删除
        function m_del(){
            /*var size = $("table[templet='#ids']:checked").size();
            if(size ==0){
                alert("请至少选择一个");
                return;
            }*/
            //你确定删除吗
            if(!confirm("已关联会员，无法删除")){
                return;
            }
        }
        //数据表格显示
        layui.use('table', function(){
            var table = layui.table;
            var table2 = layui.table;
            table.render({
                elem: '#test'
                ,url:'./demo/table/user.json'
                ,width: 1200
                ,height: 332
                ,cols: [[
                    {type:'checkbox', fixed: 'left',templet:"#ids"}
                    ,{field:'id', width:80, title: 'ID',  fixed: 'left'}
                    ,{field:'username', width:90, title: '会员姓名',templet: '#usernameTpl'}
                    ,{field:'sex', width:80, title: '账号' }
                    ,{field:'city', width:80, title: '手机号'}
                    ,{field:'sign', width: 80, title: '邀请码'}
                    ,{field:'experience', width:90, title: '会员类型'}
                    ,{field:'score', width:90, title: '账号状态'}
                    ,{field:'classify', width:80, title: 'E-mail'}
                    ,{field:'classify', width:90, title: '注册时间'}
                    ,{field:'classify', width:90, title: '注册来源'}
                    ,{field:'classify', width:90, title: '上级会员'}
                    ,{field:'classify', width:130, title: '下级会员人数'}
                    ,{field:'classify', width:90, title: '成交订单数'}
                    ,{field:'wealth', width:420, title: '操作',toolbar:"#barDemo"}
                ]]
                ,page: true
            });
            table.on('checkbox(ids)', function(obj){
                console.log(obj.checked); //当前是否选中状态
                console.log(obj.data); //选中行的相关数据
                console.log(obj.type); //如果触发的是全选，则为：all，如果触发的是单选，则为：one
            });
            //
                table2.render({
                    elem: '#test2'
                    ,url:'./demo/table/user.json'
                    ,page: {
                        layout: ['limit', 'count', 'prev', 'page', 'next', 'skip'] //自定义分页布局
                        //,curr: 5 //设定初始在第 5 页
                        ,groups: 1 //只显示 1 个连续页码
                        ,first: false //不显示首页
                        ,last: false //不显示尾页

                    }
                    ,width: 1000
                    ,height: 332
                    ,cols: [[
                        {field:'id', width:80, title: ''}
                        ,{field:'sex', width:100, title: '名称'}
                        ,{field:'city', width:100, title: '手机号'}
                        ,{field:'sign', title: '邀请码', minWidth: 150}
                        ,{field:'experience', width:100, title: '上级人员'}
                        ,{field:'score', width:100, title: '下级人数' }
                        ,{field:'classify', width:100, title: '注册时间'}
                        ,{field:'wealth', width:100, title: '状态'}
                        ,{field:'wealth', width:100, title: '操作'}
                    ]]
                    ,page: true
                });
        });
        //添加地址信息
        function address_add(){
            layer.open({
                type: 2,
                title: '会员管理--地址信息',
                shadeClose: true,
                shade: false,
                maxmin: true, //开启最大化最小化按钮
                area: ['893px', '600px'],
                content: ['/uidemo/member/address_add.jsp', 'no'], //iframe的url，no代表不显示滚动条
            });
        };
        //编辑会员信息
        function m_edit(){
            layer.open({
                type: 2,
                title: '会员管理--会员编辑',
                shadeClose: true,
                shade: false,
                maxmin: true, //开启最大化最小化按钮
                area: ['893px', '600px'],
                content: ['/uidemo/member/member_edit.jsp', 'yes'], //iframe的url，no代表不显示滚动条
            });
        };
        //添加会员信息
        function m_add(){
            layer.open({
                type: 2,
                title: '会员管理--会员编辑',
                shadeClose: true,
                shade: false,
                maxmin: true, //开启最大化最小化按钮
                area: ['893px', '600px'],
                content: ['/uidemo/member/member_add.jsp', 'yes'], //iframe的url，no代表不显示滚动条
            });
        };
        //点击会员姓名
        function Foo(){
            layer.open({
                type: 2,
                title: '会员信息管理',
                shadeClose: true,
                shade: 0.8,
                area: ['900px', '75%'],
                content: '/uidemo/member/member_edit.jsp'
            });
        }
        //查看上级人员列表
        function look_member_top(){
            layer.open({
                type: 1
                ,title:'【xxx】的上级人员列表'
                ,id: 'layerDemo'
                ,area: ['1000px', '320px']
                ,content:$('#look_member_top_select')
                ,btnAlign: 'c' //按钮居中
                ,shade: 0 //不显示遮罩

            });
        }
        //查看下级人员列表
        function look_member_bo(){
            layer.open({
                type: 1
                ,title:'【xxx】的下级人员列表'
                ,id: 'layerDemo'
                ,area: ['1000px', '500px']
                ,content:$('#look_member_bo_select')
                ,btnAlign: 'c' //按钮居中
                ,shade: 0 //不显示遮罩
                , btn: ['取消', '确认']
                ,btnAlign: 'c' //按钮居中
                ,shade: 0 //不显示遮罩
                ,yes: function(){
                    layer.closeAll();
                }
            });
        }

    </script>
    <%--查看上下级会员--%>
    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-primary layui-btn-mini" lay-event="detail" href="priOrderCountRebate.jsp" >查看订单信息</a>
        <a class="layui-btn layui-btn-mini" lay-event="edit"  onclick="look_member_top()">查看上级会员</a>
        <a class="layui-btn layui-btn-danger layui-btn-mini"  onclick="look_member_bo()">查看下级会员</a>
    </script>
    <script type="text/html" id="usernameTpl">
      <a href="javascript:void(0)" onclick="Foo('{{d.username}}')" class="a" style="color: #003399">{{d.username}}</a>
    </script>
</head>

<div class="layui-layout layui-layout-admin">
    <!--主体部分 -->
    <div class="layui-body">
        <!-- 上部分查询表单-->
        <div class="main-top" style="background-color:#EEEEEE;height: 180px;margin:0px">
            <div class="layui-btn layui-btn-radius layui-btn-normal" style=" margin-top:10px;margin-left:10px;">搜索</div>
            <div class="layui-btn layui-btn-radius layui-btn-primary" style=" margin-top:10px;margin-left:10px;">重置</div>
            <form class="layui-form" action=""  style="margin-top:10px;">
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">账号</label>
                        <div class="layui-input-inline">
                            <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">注册手机号</label>
                        <div class="layui-input-inline">
                            <input type="text" name="date" id="date" lay-verify="required|number"  autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">状态</label>
                        <div class="layui-input-inline">
                            <select name="modules" lay-verify="required" lay-search="">
                                <option value="">全部</option>
                                <option value="1">启用</option>
                                <option value="2">禁用</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline" >
                        <label class="layui-form-label">注册日期</label>
                        <div class="layui-input-inline">
                            <input type="date" class="layui-input" id="test15" >
                        </div>
                        <span style="line-height:40px;">~</span>
                    </div>

                    <div class="layui-inline" id="date">
                        <div class="layui-input-inline">

                            <input type="date" class="layui-input" id="test15" >
                        </div>
                    </div>
                    <div class="layui-inline" style="position:relative;left:110px;">
                        <label class="layui-form-label">注册来源</label>
                        <div class="layui-input-inline">
                            <select name="modules" lay-verify="required" lay-search="">
                                <option value="">全部</option>
                                <option value="1">APP-ios</option>
                                <option value="2">App-Android</option>
                            </select>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <!-- 中部按钮 -->
        <div class="main-top">
            <button class="layui-btn layui-btn-normal layui-btn-radius" onclick="disable()">禁用</button>
            <button class="layui-btn layui-btn-normal layui-btn-radius" onclick="disable()">启用</button>
            <button class="layui-btn layui-btn-normal layui-btn-radius" onclick="address_add()">地址信息</button>
            <button class="layui-btn layui-btn-primary layui-btn-radius" onclick="m_edit()">编辑</button>
            <button class="layui-btn layui-btn-primary layui-btn-radius"  onclick="m_del()" >删除</button>
            <button class="layui-btn layui-btn-primary layui-btn-radius" onclick="m_add()">添加</button>
            <form id="jvForm"  class="layui-form" action="">
                <!-- 表格显示-->
                <table class="layui-hide" id="test"></table>
            </form>
        </div>
        <%--查看上级会员信息--%>
        <div id="look_member_top_select" style="display: none;">
            <table class="layui-table">
                <tr>
                    <td>姓名</td>
                    <td>手机号</td>
                    <td>邀请成功时间</td>
                    <td>注册时间</td>
                    <td>状态</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
        <%--查看下级会员信息--%>
        <div id="look_member_bo_select" style="display: none;">
            <form class="layui-form" action="">
                <div class="layui-inline">
                    <label class="layui-form-label">状态</label>
                    <div class="layui-input-block">
                        <select name="city" lay-verify="required">
                            <option value=""></option>
                            <option value="0">启用</option>
                            <option value="1">禁用</option>
                        </select>
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label"></label>
                    <div class="layui-input-inline">
                        <input type="text" name="date" id="date" lay-verify="required|number" placeholder="请输入名称和手机号" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <div class="layui-input-block">
                        <button class="layui-btn layui-btn-normal layui-btn-radius" lay-submit lay-filter="formDemo">搜索</button>
                        <button type="reset" class="layui-btn layui-btn-primary layui-btn-radius">重置</button>
                    </div>
                </div>
                <%--搜索查询信息显示--%>
                <table class="layui-hide" id="test2"></table>
            </form>
            <script>
                //Demo
                layui.use('form', function(){
                    var form = layui.form;

                    //监听提交
                    form.on('submit(formDemo)', function(data){
                        layer.msg(JSON.stringify(data.field));
                        return false;
                    });
                });
            </script>
        </div>
     </div>
    <div style="padding: 20px 100px;height:100px; display: none;" id="textarea_add">
        <textarea name="textarea" id="area1" cols="30" rows="10"></textarea>
        可以设置通配符，每个关键字一行，可使用通配符 "*" 如 "*admin*"(不含引号)。
    </div>
</div>
<%@ include file="/common/footer.jsp"%>
