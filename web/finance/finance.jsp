<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<%@include file="menu_finance.jsp"%>
  <div class="layui-layout layui-layout-admin">
    <div class="layui-body">
      <!-- 内容主体区域 -->
      <div style="padding: 20px;">
        <div class="layui-row">
          <div class="layui-col-xs3">
            <div class="grid-demo grid-demo-bg1">佣金/收益管理</div>

     </div>
            <form class="layui-form" action="">
          <div class="layui-col-xs3">
            <div class="grid-demo">
                <a href="javascript:void(0);" class="ck" onclick="exportOrder();">导出数据</a>
            </div>
          </div>

          <div class="layui-row layui-col-space30">
            <div class="layui-col-md7">
              <div class="grid-demo grid-demo-bg1"></div>
            </div>
            <div class="layui-col-md5">
              <div class="grid-demo"></div>
            </div>
          </div>
          <form action="">
          <div class="layui-row">
            <div class="layui-col-md4">
            <div class="grid-demo grid-demo-bg1">
                <a href="javascript:void(0);" class="ck" onclick="searchOrder();">搜索</a>&nbsp;</button>
              <button class="layui-btn layui-btn-primary layui-btn-radius">重置</button>

            </div>
          </div>
            <div class="layui-col-md4">
              <div class="grid-demo"></div>
            </div>
            <div class="layui-col-md4">
              <div class="grid-demo grid-demo-bg1"></div>
            </div>
          </div>
          <div class="layui-row">
            <div class="layui-col-md4">
              <div class="grid-demo grid-demo-bg1">
                  <div class="layui-form-item">
                    <label class="layui-form-label">用户名:</label>
                    <div class="layui-input-block">
                      <input name="title" lay-verify="title" autocomplete="off" class="layui-input" type="text">
                    </div>
                  </div>
              </div>
            </div>
            <div class="layui-col-md3">
              <div class="grid-demo">
                <div class="layui-form-item">
                  <label class="layui-form-label">手机号:</label>
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
                            <label class="layui-form-label">日期：</label>
                            <div class="layui-input-inline" style="width: 100px;">
                                <input name="price_min" placeholder="开始日期" autocomplete="off" class="layui-input" type="text">
                            </div>
                            <div class="layui-form-mid">-</div>
                            <div class="layui-input-inline" style="width: 100px;">
                                <input name="price_max" placeholder="结束日期" autocomplete="off" class="layui-input" type="text">
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
                  <label class="layui-form-label">京东订单号:</label>
                  <div class="layui-input-block">
                    <input name="title" lay-verify="title" autocomplete="off" class="layui-input" type="text">
                  </div>
                </div>

              </div>
            </div>
            <div class="layui-col-md3">
                <div class="grid-demo grid-demo-bg1">
                    <div class="layui-form-item">
                        <label class="layui-form-label">收益类型</label>
                        <div class="layui-input-block">
                            <select name="interest" lay-filter="district" style="width:200px;">
                                <option value="0">全部</option>
                                <option value="1">提成</option>
                                <option value="2">返利</option>
                                <option value="3">分享</option>
                            </select>
                        </div>
                    </div>

                </div>
            </div>
            <div class="layui-col-md3">
                <div class="grid-demo grid-demo-bg1">
                    <div class="layui-form-item">
                        <label class="layui-form-label">订单状态</label>
                        <div class="layui-input-block">
                            <select name="interest" lay-filter="district" style="width:200px;">
                                <option value="0">全部</option>
                                <option value="1">已取消</option>
                                <option value="2">已完成</option>
                                <option value="3">处理中</option>
                            </select>
                        </div>
                    </div>

                </div>
            </div>
          </div>

          </form>

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
<%--
  <div>



      <table class="layui-table" lay-data="{width: 892, height:332, url:'/demo/table/user/', page:true, id:'idTest'}" lay-filter="demo">
          <thead>
          <tr>
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
          <tr>


          </tr>
          </thead>
      </table>

<script type="text/html" id="barDemo">
          <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
          <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
          <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
      </script>
--%> </form>
          <div>
              <table class="layui-hide" id="test"></table>
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
                              ,"sex":"杜甫"
                              ,"city":"杜甫"
                              ,"sign":"杜甫"
                              ,"experience":"杜甫"
                              ,"score":"杜甫"
                              ,"classify":"杜甫"

                          }, {
                              "id": "10002"
                              ,"username": "李白"
                              ,"sex":"杜甫"
                              ,"city":"杜甫"
                              ,"sign":"杜甫"
                              ,"experience":"杜甫"
                              ,"score":"杜甫"
                              ,"classify":"杜甫"
                          }, {
                              "id": "10003"
                              ,"username": "王勃"
                              ,"sex":"杜甫"
                              ,"city":"杜甫"
                              ,"sign":"杜甫"
                              ,"experience":"杜甫"
                              ,"score":"杜甫"
                              ,"classify":"杜甫"
                          }, {
                              "id": "10004"
                              ,"username": "贤心"
                              ,"sex":"杜甫"
                              ,"city":"杜甫"
                              ,"sign":"杜甫"
                              ,"experience":"杜甫"
                              ,"score":"杜甫"
                              ,"classify":"杜甫"
                          }, {
                              "id": "10005"
                              ,"username": "贤心"
                              ,"joinTime": "2016-10-14"
                              ,"sex":"杜甫"
                              ,"city":"杜甫"
                              ,"sign":"杜甫"
                              ,"experience":"杜甫"
                              ,"score":"杜甫"
                              ,"classify":"杜甫"
                          }, {
                              "id": "10006"
                              ,"username": "贤心"
                              ,"sex":"杜甫"
                              ,"city":"杜甫"
                              ,"sign":"杜甫"
                              ,"experience":"杜甫"
                              ,"score":"杜甫"
                              ,"classify":"杜甫"
                          }, {
                              "id": "10007"
                              ,"username": "贤心"
                              ,"sex":"杜甫"
                              ,"city":"杜甫"
                              ,"sign":"杜甫"
                              ,"experience":"杜甫"
                              ,"score":"杜甫"
                              ,"classify":"杜甫"
                          }, {
                              "id": "10008"
                              ,"username": "贤心"
                              ,"sex":"杜甫"
                              ,"city":"杜甫"
                              ,"sign":"杜甫"
                              ,"experience":"杜甫"
                              ,"score":"杜甫"
                              ,"classify":"杜甫"
                          }]
                          ,page: true
                      });
                  });
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
              <script>
                  function Foo(){
                      layer.open({
                          type: 2,
                          title: '订单详情',
                          shadeClose: true,
                          shade: 0.8,
                          area: ['100%', '100%'],
                          content: 'membershipInformation.jsp'
                      });
                  }
                  //导出订单
                  function exportOrder(){
                      var params = formatParams();
                      if(!params.order_date_start){
                          M.alert('请选择开始时间！');
                          return false;
                      }
                      window.open("url" + token + "&" +  $.param(params));
                  }
              </script>

  </div>


      </div>
    </div>

  </div>
<%@ include file="/common/footer.jsp"%>