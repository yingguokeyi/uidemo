<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>支付信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/src/layui/css/layui.css">
      <script src="/src/layui/layui.js" charset="utf-8"></script>
      <!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
  </head>
  <body class="layui-layout-body">
  <div class="layui-layout layui-layout-admin">
    <div class="layui-header">

      <div>
        <button class="layui-btn layui-btn-primary layui-btn-xs layui-btn-radius">首页</button>
        <button class="layui-btn layui-btn-primary layui-btn-xs layui-btn-radius">系统设置</button>
        <button class="layui-btn layui-btn-primary layui-btn-xs layui-btn-radius">个人设置</button>
        <button class="layui-btn layui-btn-normal layui-btn-xs layui-btn-radius">admin|退出</button>
      </div>
    </div>

    <div class="layui-side layui-bg-black">
      <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree"  lay-filter="test">
            <li class="layui-nav-item"><a href="">佣金/收益管理</a></li>
            <li class="layui-nav-item"><a href="">支付信息</a></li>
            <li class="layui-nav-item"><a href="">提现处理</a></li>
        </ul>
      </div>
    </div>

    <div class="layui-body">
      <!-- 内容主体区域 -->
      <div style="padding: 20px;">
        <div class="layui-row">
          <div class="layui-col-xs3">
            <div class="grid-demo grid-demo-bg1">支付信息</div>

          </div>
          <%--<div class="layui-col-xs3">
            <div class="grid-demo"></div>
          </div>
          <div class="layui-col-xs3">
            <div class="grid-demo grid-demo-bg1"></div>
          </div>
          <div class="layui-col-xs3">
            <div class="grid-demo"></div>
          </div>
--%>
          <div class="layui-row layui-col-space30">
            <div class="layui-col-md7">
              <div class="grid-demo grid-demo-bg1"></div>
            </div>
            <div class="layui-col-md5">
              <div class="grid-demo"></div>
            </div>
          </div>
          <div class="layui-row layui-col-space10">
          <div class="layui-col-md9">
            <div class="grid-demo grid-demo-bg1"></div>
          </div>
          <div class="layui-col-md3">
            <div class="grid-demo"></div>
          </div>
        </div>
          <div class="layui-row layui-col-space10">
            <div class="layui-col-md9">
              <div class="grid-demo grid-demo-bg1"></div>
            </div>
            <div class="layui-col-md3">
              <div class="grid-demo"></div>
            </div>
          </div>
        </div>

  <div>

      <table class="layui-table" lay-data="{width: 892, height:332, url:'/demo/table/user/', page:true, id:'idTest'}" lay-filter="demo">
          <thead>
          <tr>
              <th lay-data="{type:'checkbox', fixed: 'left'}"></th>
              <th lay-data="{field:'id', width:80, sort: true, fixed: true}">ID</th>
              <th lay-data="{field:'username', width:80}">用户名</th>
              <th lay-data="{field:'sex', width:80, sort: true}">性别</th>
              <th lay-data="{field:'city', width:80}">城市</th>
              <th lay-data="{field:'sign', width:160}">签名</th>
              <th lay-data="{field:'experience', width:80, sort: true}">积分</th>

              <th lay-data="{field:'classify', width:80}">职业</th>
              <th lay-data="{field:'wealth', width:135, sort: true}">财富</th>
              <th lay-data="{field:'score', width:80, sort: true, fixed: 'right'}">评分</th>
              <th lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}"></th>
          </tr>
          </thead>
      </table>

      <script type="text/html" id="barDemo">
          <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
          <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
          <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
      </script>



      <script>
          layui.use('table', function(){
              var table = layui.table;
              //监听表格复选框选择
              table.on('checkbox(demo)', function(obj){
                  console.log(obj)
              });
              //监听工具条
              table.on('tool(demo)', function(obj){
                  var data = obj.data;
                  if(obj.event === 'detail'){
                      layer.msg('ID：'+ data.id + ' 的查看操作');
                  } else if(obj.event === 'del'){
                      layer.confirm('真的删除行么', function(index){
                          obj.del();
                          layer.close(index);
                      });
                  } else if(obj.event === 'edit'){
                      layer.alert('编辑行：<br>'+ JSON.stringify(data))
                  }
              });

              var $ = layui.$, active = {
                  getCheckData: function(){ //获取选中数据
                      var checkStatus = table.checkStatus('idTest')
                          ,data = checkStatus.data;
                      layer.alert(JSON.stringify(data));
                  }
                  ,getCheckLength: function(){ //获取选中数目
                      var checkStatus = table.checkStatus('idTest')
                          ,data = checkStatus.data;
                      layer.msg('选中了：'+ data.length + ' 个');
                  }
                  ,isAll: function(){ //验证是否全选
                      var checkStatus = table.checkStatus('idTest');
                      layer.msg(checkStatus.isAll ? '全选': '未全选')
                  }
              };

              $('.demoTable .layui-btn').on('click', function(){
                  var type = $(this).data('type');
                  active[type] ? active[type].call(this) : '';
              });
          });
      </script>


      <div class="site-demo-button" id="layerDemo" style="margin-bottom: 0;">
          <button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal">居中弹出</button>
      </div>

      <!-- 示例-970 -->
      <ins class="adsbygoogle" style="display:inline-block;width:970px;height:90px" data-ad-client="ca-pub-6111334333458862" data-ad-slot="3820120620"></ins>

      <!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
      <script>
          layui.use('layer', function(){
              var $ = layui.jquery, layer = layui.layer;

              //触发事件
              var active = {
                  offset: function(othis){
                      var type = othis.data('type')
                          ,text = othis.text();

                      layer.open({
                          type: 1
                          ,offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
                          ,id: 'layerDemo'+type //防止重复弹出
                          ,content: '<div style="padding: 20px 100px;">'+'户名:'
                          + '<input id="ranktext" type="text" style="height:30px;width:200px"><br/>'+'账户:'+
                          '<input id="ranktext" type="text" style="height:30px;width:200px">'+'开户行:'+
                          '<input id="ranktext" type="text" style="height:30px;width:200px">'
                          +'</div>'
                          ,btn: '确认'
                          ,btnAlign: 'c' //按钮居中
                          ,shade: 0 //不显示遮罩
                          ,yes: function(){
                              layer.closeAll();
                          }
                      });
                  }
              };

              $('#layerDemo .layui-btn').on('click', function(){
                  var othis = $(this), method = othis.data('method');
                  active[method] ? active[method].call(this, othis) : '';
              });

          });
      </script>


  </div>


      </div>
    </div>

    <div class="layui-footer">
      <!-- 底部固定区域 -->
      © layui.com - 底部固定区域
    </div>
  </div>
  <script>
      //JavaScript代码区域
      layui.use('element', function(){
          var element = layui.element;

      });
  </script>
  </body>
</html>
