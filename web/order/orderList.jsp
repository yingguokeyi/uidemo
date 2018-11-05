<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<%@ include file="/common/menu.jsp"%>

  <div class="layui-layout layui-layout-admin">

    <div class="layui-side layui-bg-black">
      <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree"  lay-filter="test">
          <li class="layui-nav-item layui-nav-itemed">
            <a class="" href="javascript:;">订单查询</a>
            <dl class="layui-nav-child">
              <dd><a href="javascript:;">待支付</a></dd>
              <dd><a href="javascript:;">待备货</a></dd>
              <dd><a href="javascript:;">待提货</a></dd><br/>
              <dd><a href="javascript:;">已提货</a></dd>
              <dd><a href="javascript:;">已完成</a></dd>
              <dd><a href="javascript:;">已取消</a></dd>
            </dl>
          </li>

        </ul>
      </div>
    </div>

    <div class="layui-body">
      <!-- 内容主体区域 -->
      <div style="padding: 20px;">
        <div class="layui-row">
          <div class="layui-col-xs3">
            <div class="grid-demo grid-demo-bg1">全部订单</div>
          </div>
          <div class="layui-row layui-col-space30">
            <div class="layui-col-md7">
              <div class="grid-demo grid-demo-bg1"></div>
            </div>
          </div>
          <form class="layui-form" action="">
          <div class="layui-row">
            <div class="layui-col-md4">
            <div class="grid-demo grid-demo-bg1">
              <button class="layui-btn layui-btn-normal layui-btn-radius" onclick="orderListTable()">搜索</button>
              <button class="layui-btn layui-btn-primary layui-btn-radius" onclick="reset()">重置</button>

            </div>
          </div>
          </div>
          <div class="layui-row">
            <div class="layui-col-md4">
              <div class="grid-demo grid-demo-bg1">
                  <div class="layui-form-item">
                    <label class="layui-form-label">订单编号:</label>
                    <div class="layui-input-block">
                      <input name="title" lay-verify="title" autocomplete="off" class="layui-input" type="text">
                    </div>
                  </div>
              </div>
            </div>
            <div class="layui-col-md3">
              <div class="grid-demo">
                <div class="layui-form-item">
                  <label class="layui-form-label">买家昵称:</label>
                  <div class="layui-input-block">
                    <input name="title" lay-verify="title" autocomplete="off" class="layui-input" type="text">
                  </div>
                </div>

              </div>
            </div>
            <div class="layui-col-md5">
              <div class="grid-demo grid-demo-bg1">
                <div class="layui-form-item">
                  <label class="layui-form-label">发货仓库</label>
                  <div class="layui-input-block">
                    <select name="interest" lay-filter="district" style="width:200px;">
                      <option value=""></option>
                      <option value="0">仓库列表</option>
                    </select>
                  </div>
                </div>

              </div>
            </div>
          </div>
          <div class="layui-row">
            <div class="layui-col-md4">
              <div class="grid-demo grid-demo-bg1">
                <div class="layui-form-item">
                  <label class="layui-form-label">手机号:</label>
                  <div class="layui-input-block">
                    <input name="title" lay-verify="title" autocomplete="off" class="layui-input" type="text">
                  </div>
                </div>

              </div>
            </div>
            <div class="layui-col-md3">
              <div class="grid-demo">
                <div class="layui-form-item">
                  <label class="layui-form-label">收货人:</label>
                  <div class="layui-input-block">
                    <input name="title" lay-verify="title" autocomplete="off" class="layui-input" type="text">
                  </div>
                </div>

              </div>
            </div>
            <div class="layui-col-md5">
              <div class="grid-demo grid-demo-bg1">
                <div class="layui-form-item">
                  <div class="layui-inline">
                    <label class="layui-form-label">发货时间：</label>
                    <div class="layui-input-inline" style="width: 100px;">
                      <input name="price_min" placeholder="开始时间" autocomplete="off" class="layui-input" type="text">
                    </div>
                    <div class="layui-form-mid">-</div>
                    <div class="layui-input-inline" style="width: 100px;">
                      <input name="price_max" placeholder="结束时间" autocomplete="off" class="layui-input" type="text">
                    </div>
                  </div>
                </div>

              </div>
            </div>
          </div>
          <div class="layui-row">
            <div class="layui-col-md4">
              <div class="grid-demo grid-demo-bg1">
                <div class="layui-form-item">
                  <label class="layui-form-label">运单号:</label>
                  <div class="layui-input-block">
                    <input name="title" lay-verify="title" autocomplete="off" class="layui-input" type="text">
                  </div>
                </div>
              </div>
            </div>
            <div class="layui-col-md6">
              <div class="grid-demo">
                <div class="layui-form-item">
                  <div class="layui-inline">
                    <label class="layui-form-label">下单时间：</label>
                    <div class="layui-input-inline" style="width: 100px;">
                      <input name="price_min" placeholder="开始时间" autocomplete="off" class="layui-input" type="text">
                    </div>
                    <div class="layui-form-mid">-</div>
                    <div class="layui-input-inline" style="width: 100px;">
                      <input name="price_max" placeholder="结束时间" autocomplete="off" class="layui-input" type="text">
                    </div>
                  </div>
                </div>
              </div>
                <table class="layui-table"  id="orderList"  lay-filter="orderlist"></table>
            </div>
          </div>
          </form>
          <div class="layui-tab" lay-filter="test">
            <ul class="layui-tab-title">
              <li class="layui-this" lay-id="11">全部</li>
              <li lay-id="22">待支付</li>
              <li lay-id="33">待备货</li>
              <li lay-id="44">待发货</li>
              <li lay-id="55">
                <div class="layui-input-block" style="position: relative;left:20px;bottom: 20px;border-radius: 10px;">
                <select name="interest" lay-filter="district" style="width:100px;" onchange=select(this.value)>
                  <option value="" selected="selected">更多...</option>
                  <option value="0" onchange="pending_delivery()">待提收（0）</option>
                  <option value="1" onchange="carry_out_the_goods()">已提收（0）</option>
                  <option value="2" onchange="completed()">已完成（0）</option>
                  <option value="3">异常订单</option>
                  <option value="4" onchange="have_been_cancelled()">取消订单</option>
                  <option value="5">失效订单</option>
                </select>
              </div></li>
            </ul>
            <div class="layui-tab-content">
              <div class="layui-tab-item layui-show">
                <table class="layui-hide" id="test"></table>
              </div>
              <div class="layui-tab-item">
                <table class="layui-hide" id="test2" lay-filter="demo2"></table>
              </div>
              <div class="layui-tab-item">
                  <table class="layui-hide" id="test3" lay-filter="demo3"></table>
              </div>
              <div class="layui-tab-item">
                <table class="layui-hide" id="test4"></table>
              </div>
              <div class="layui-tab-item">
                <table class="layui-hide" id="test5"></table>
              </div>
            </div>
          </div>
          <script>
              layui.use('element', function(){
                  var $ = layui.jquery
                      ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

                  //触发事件
                  var active = {
                      tabAdd: function(){
                          //新增一个Tab项
                          element.tabAdd('demo', {
                              title: '新选项'+ (Math.random()*1000|0) //用于演示
                              ,content: '内容'+ (Math.random()*1000|0)
                              ,id: new Date().getTime() //实际使用一般是规定好的id，这里以时间戳模拟下
                          })
                      }
                      ,tabDelete: function(othis){
                          //删除指定Tab项
                          element.tabDelete('demo', '44'); //删除：“商品管理”


                          othis.addClass('layui-btn-disabled');
                      }
                      ,tabChange: function(){
                          //切换到指定Tab项
                          element.tabChange('demo', '22'); //切换到：用户管理
                      }
                  };

                  $('.site-demo-active').on('click', function(){
                      var othis = $(this), type = othis.data('type');
                      active[type] ? active[type].call(this, othis) : '';
                  });

                  //Hash地址的定位
                  var layid = location.hash.replace(/^#test=/, '');
                  element.tabChange('test', layid);

                  element.on('tab(test)', function(elem){
                      location.hash = 'test='+ $(this).attr('lay-id');
                  });

              });
          </script>
          <script type="text/html" id="idTpl">
            <a href="javascript:void(0)" onclick="Foo('{{d.username}}')" class="a" style="color: #003399">{{ d.username }}</a>
          </script>
          <script>
              layui.use('table', function(){
                  var table = layui.table;
                  table.render({
                      elem: '#test'
                      ,width: 892
                      ,height: 332
                      ,cols: [[
                          {type:'checkbox', fixed: 'left'}
                          ,{field:'id', width:80, title: 'ID', sort: true, fixed: 'left'}
                          ,{field:'username', width:80, title: '订单编号',templet: '#idTpl'}
                          ,{field:'sex', width:80, title: '状态', sort: true}
                          ,{field:'city', width:80, title: '下单时间'}
                          ,{field:'sign', width: 219, title: '发货仓库'}
                          ,{field:'experience', width:80, title: '运单编号', sort: true}
                          ,{field:'score', width:80, title: '买家昵称', sort: true}
                          ,{field:'classify', width:80, title: '买家手机号'}
                          ,{field:'xs', width:80, title: '最后处理时间'}
                          ,{field:'xl', width:80, title: '最后操作者'}
                      ]],data: [{

                          "id": "1001"
                          ,"username": "杜甫"
                          ,"sex":"待支付"
                          ,"city":"杜甫"
                          ,"sign":"杜甫"
                          ,"experience":"杜甫"
                          ,"score":"杜甫"
                          ,"classify":"杜甫"

                      }, {
                          "id": "10002"
                          ,"username": "李白"
                          ,"sex":"待支付"
                          ,"city":"杜甫"
                          ,"sign":"杜甫"
                          ,"experience":"杜甫"
                          ,"score":"杜甫"
                          ,"classify":"杜甫"
                      }, {
                          "id": "10003"
                          ,"username": "王勃"
                          ,"sex":"待发货"
                          ,"city":"杜甫"
                          ,"sign":"杜甫"
                          ,"experience":"杜甫"
                          ,"score":"杜甫"
                          ,"classify":"杜甫"
                      }, {
                          "id": "10004"
                          ,"username": "贤心"
                          ,"sex":"待支付"
                          ,"city":"杜甫"
                          ,"sign":"杜甫"
                          ,"experience":"杜甫"
                          ,"score":"杜甫"
                          ,"classify":"杜甫"
                      }, {
                          "id": "10005"
                          ,"username": "贤心"
                          ,"joinTime": "2016-10-14"
                          ,"sex":"待支付"
                          ,"city":"杜甫"
                          ,"sign":"杜甫"
                          ,"experience":"杜甫"
                          ,"score":"杜甫"
                          ,"classify":"杜甫"
                      }]
                      ,page: true
                  });

                  table.render({
                      elem: '#test2'
                      ,width: 892
                      ,height: 332
                      ,cols: [[
                          {field:'id', width:80, title: 'ID', sort: true, fixed: 'left'}
                          ,{field:'username', width:80, title: '订单编号',templet: '#idTpl'}
                          ,{field:'sex', width:80, title: '状态', sort: true}
                          ,{field:'city', width:80, title: '下单时间'}
                          ,{field:'sign', width: 219, title: '买家昵称'}
                          ,{field:'experience', width:80, title: '买家手机号', sort: true}
                          ,{field:'score', width:300, title: '操作', sort: true,toolbar:"#barDemo"}
                      ]],data: [{

                          "id": "1001"
                          ,"username": "杜甫"
                          ,"sex":"待支付"
                          ,"city":"杜甫"
                          ,"sign":"杜甫"
                          ,"experience":"杜甫"
                          ,"score":"异常订单"

                      }, {
                          "id": "10002"
                          ,"username": "李白"
                          ,"sex":"待支付"
                          ,"city":"杜甫"
                          ,"sign":"杜甫"
                          ,"experience":"杜甫"
                          ,"score":"异常订单"
                      }, {
                          "id": "10003"
                          ,"username": "王勃"
                          ,"sex":"待发货"
                          ,"city":"杜甫"
                          ,"sign":"杜甫"
                          ,"experience":"杜甫"
                          ,"score":"异常订单"
                      }, {
                          "id": "10004"
                          ,"username": "贤心"
                          ,"sex":"待支付"
                          ,"city":"杜甫"
                          ,"sign":"杜甫"
                          ,"experience":"杜甫"
                          ,"score":"异常订单"
                      }, {
                          "id": "10005"
                          ,"username": "贤心"
                          ,"joinTime": "2016-10-14"
                          ,"sex":"待支付"
                          ,"city":"杜甫"
                          ,"sign":"杜甫"
                          ,"experience":"杜甫"
                          ,"score":"异常订单"
                      }]
                      ,page: true
                  });
                  table.render({
                      elem: '#test3'
                      ,width: 892
                      ,height: 332
                      ,cols: [[
                          {field:'id', width:80, title: 'ID', sort: true, fixed: 'left'}
                          ,{field:'username', width:80, title: '订单号',templet: '#idTpl'}
                          ,{field:'sex', width:80, title: '状态', sort: true}
                          ,{field:'city', width:80, title: '类型'}
                          ,{field:'sign', width: 219, title: '发货仓库'}
                          ,{field:'experience', width:80, title: '下单时间', sort: true}
                          ,{field:'sign2', width: 219, title: '买家昵称'}
                          ,{field:'experience2', width:80, title: '买家手机号', sort: true}
                          ,{field:'score', width:300, title: '操作', sort: true,toolbar:"#barDemo2"}
                      ]],data: [{

                          "id": "1001"
                          ,"username": "杜甫"
                          ,"sex":"待支付"
                          ,"city":"杜甫"
                          ,"sign":"杜甫"
                          ,"experience":"杜甫"
                          ,"score":"异常订单"

                      }, {
                          "id": "10002"
                          ,"username": "李白"
                          ,"sex":"待支付"
                          ,"city":"杜甫"
                          ,"sign":"杜甫"
                          ,"experience":"杜甫"
                          ,"score":"异常订单"
                      }, {
                          "id": "10003"
                          ,"username": "王勃"
                          ,"sex":"待发货"
                          ,"city":"杜甫"
                          ,"sign":"杜甫"
                          ,"experience":"杜甫"
                          ,"score":"异常订单"
                      }, {
                          "id": "10004"
                          ,"username": "贤心"
                          ,"sex":"待支付"
                          ,"city":"杜甫"
                          ,"sign":"杜甫"
                          ,"experience":"杜甫"
                          ,"score":"异常订单"
                      }, {
                          "id": "10005"
                          ,"username": "贤心"
                          ,"joinTime": "2016-10-14"
                          ,"sex":"待支付"
                          ,"city":"杜甫"
                          ,"sign":"杜甫"
                          ,"experience":"杜甫"
                          ,"score":"异常订单"
                      }]
                      ,page: true
                  });
                  table.render({
                      elem: '#test4'
                      ,width: 892
                      ,height: 332
                      ,cols: [[
                          {field:'id', width:80, title: 'ID', sort: true, fixed: 'left'}
                          ,{field:'username', width:80, title: '订单号',templet: '#idTpl'}
                          ,{field:'sex', width:80, title: '状态', sort: true}
                          ,{field:'city', width:80, title: '类型'}
                          ,{field:'sign', width: 219, title: '发货仓库'}
                          ,{field:'experience', width:80, title: '下单时间', sort: true}
                          ,{field:'sign2', width: 219, title: '买家昵称'}
                          ,{field:'experience2', width:80, title: '买家手机号', sort: true}
                          ,{field:'score', width:300, title: '操作', sort: true,toolbar:"#barDemo2"}
                      ]],data: [{

                          "id": "1001"
                          ,"username": "杜甫"
                          ,"sex":"待支付"
                          ,"city":"杜甫"
                          ,"sign":"杜甫"
                          ,"experience":"杜甫"
                          ,"score":"异常订单"

                      }, {
                          "id": "10002"
                          ,"username": "李白"
                          ,"sex":"待支付"
                          ,"city":"杜甫"
                          ,"sign":"杜甫"
                          ,"experience":"杜甫"
                          ,"score":"异常订单"
                      }, {
                          "id": "10003"
                          ,"username": "王勃"
                          ,"sex":"待发货"
                          ,"city":"杜甫"
                          ,"sign":"杜甫"
                          ,"experience":"杜甫"
                          ,"score":"异常订单"
                      }, {
                          "id": "10004"
                          ,"username": "贤心"
                          ,"sex":"待支付"
                          ,"city":"杜甫"
                          ,"sign":"杜甫"
                          ,"experience":"杜甫"
                          ,"score":"异常订单"
                      }, {
                          "id": "10005"
                          ,"username": "贤心"
                          ,"joinTime": "2016-10-14"
                          ,"sex":"待支付"
                          ,"city":"杜甫"
                          ,"sign":"杜甫"
                          ,"experience":"杜甫"
                          ,"score":"异常订单"
                      }]
                      ,page: true
                  });

              });

              //监听工具条
              table.on('tool(orderlist)', function(obj){
                  var data = obj.data;
                  if(obj.event === 'agree'){
                      agree(data)
                  } else if(obj.event === 'refuse') {
                      refuse(data)
                  }
              });

              function Foo(){
                  layer.open({
                      type: 2,
                      title: '订单详情',
                      shadeClose: true,
                      shade: 0.8,
                      area: ['900px', '75%'],
                      content: 'orderDetails.jsp'
                  });
              }
              function abnormal(){
                  layer.open({
                      type: 2,
                      title: '异常订单确认',
                      shadeClose: true,
                      shade: 0.8,
                      area: ['500px', '50%'],
                      content: 'exceptioOrder.jsp'
                  });
              }

              function agree(){
                  layer.open({
                      type: 2,
                      title: '配货单打印',
                      shadeClose: true,
                      shade: 0.8,
                      area: ['100%', '100%'],
                      content: 'print.jsp'
                  });
              }
              function refuse(){
                  layer.open({
                      type: 2,
                      title: '开始备货确认',
                      shadeClose: true,
                      shade: 0.8,
                      area: ['500px', '50%'],
                      content: 'stocking.jsp'
                  });
              }



          </script>
          <script type="text/html" id="barDemo">
            <a class="layui-btn layui-btn-primary layui-btn-normal" onclick="abnormal()">异常订单</a>
          </script>
         <script type="text/html" id="barDemo2">
            <a class="layui-btn layui-btn-primary layui-btn-normal" lay-event="agree" onclick="agree()">打印</a>
            <a class="layui-btn layui-btn-mini" lay-event="refuse" onclick="refuse()">开始配货</a>
          </script>



      </div>
    </div>


 <%@ include file="/common/footer.jsp"%>

