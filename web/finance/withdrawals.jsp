<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/header.jsp"%>
<%@include file="menu_finance.jsp"%>

    <div class="layui-body">
      <!-- 内容主体区域 -->
      <div style="padding: 20px;">
        <div class="layui-row">
          <div style="background-color: #EEEEEE ;height: 50px;margin-top: 10px;margin-left: 10px">
            <label style="font-size: 18px;margin-left: 3% ; line-height: 50px" > 提现管理  </label>
          </div>

          <div class="demoTable" style="background-color: #EEEEEE ;height: 150px;margin-top: 10px;margin-left: 10px">
            <div>
              <button class="layui-btn" data-type="reload">搜索</button>
              <button class="layui-btn" data-type="reset" >重置</button>
            </div>
            姓名：
            <div class="layui-inline">
              <input class="layui-input" name="username" id="username"  autocomplete="off">
            </div>
            手机号：
            <div class="layui-inline">
              <input class="layui-input" name="phoneNum" id="phoneNum"  autocomplete="off">
            </div>
            处理状态：
            <div class="layui-inline">
              <select class="layui-select" name="handleStatus" id="handleStatus" autocomplete="off">
                <option value="0" selected="selected">全部</option>
                <option value="1" >正常（默认状态）</option>
                <option value="2" >锁定</option>
              </select>
            </div>

            申请日期：
            <div class="layui-inline">
              <div class="layui-input-inline" style="width: 100px;">
                <input name="price_min" id="price_min" placeholder="开始日期" autocomplete="off" class="layui-input" type="text" placeholder="yyyy-MM-dd">
              </div>
              <div class="layui-input-inline">-</div>
              <div class="layui-input-inline" style="width: 100px;">
                <input name="price_max" id="price_max" placeholder="结束日期" autocomplete="off" class="layui-input" type="text" placeholder="yyyy-MM-dd">
              </div>
            </div>
          </div>
        </div>
        <table class="layui-table"  id="withdrawalsList"  lay-filter="withdrawals"></table>
      </div>
    </div>
    <div class="layui-footer">
  <!-- 底部固定区域 -->
  © layui.com - 底部固定区域
</div>
  <script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-normal" lay-event="agree" >同意</a>
    <a class="layui-btn layui-btn-mini" lay-event="refuse" >拒绝</a>
    <a class="layui-btn layui-btn-danger layui-btn-mini" lay-event="abolish">作废</a>
    <a class="layui-btn layui-btn-danger layui-btn-mini" lay-event="detail">详情</a>
  </script>
  <script>
      layui.use('table', function(){
          var table = layui.table;
          //列表加载
          table.render({
              elem: '#withdrawalsList'
              // ,url:'/demo/table/user/'
              ,cellMinWidth: 100 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
              ,page:true
              ,cols: [[
                  {type:'numbers',fixed: 'true'}
                  ,{type:'checkbox',fixed: 'true'}
                  ,{field:'username', title: '姓名' ,align: 'center',sort: true,fixed: true}
                  ,{field:'phoneNum', title: '手机号', sort: true,align: 'center',fixed: true}
                  ,{field:'accountCostTotal', title: '账户总金额(元)',align: 'center',width:'150'}
                  ,{field:'estimateTotalCost', title: '当前预估总金额',align: 'center',width:'150'}
                  ,{field:'lastCountTime', title: '最后统计时间', align: 'center',width:'150'} //单元格内容水平居中
                  ,{field:'applyTime', title: '申请时间', sort: true, align: 'center',width:'150'} //单元格内容水平居中
                  ,{field:'applyWithdrawalsCost', title: '申请提现金额(元)', sort: true, align: 'center',width:'150'}
                  ,{field:'handleStatus', title: '处理状态', sort: true, align: 'center'}
                  ,{field:'withdrawalsOddNum', title: '提现单号',align:'center', sort: true,width:'150'}
                  ,{field:'withdrawalsStatus', title: '提现状态',align:'center', sort: true ,templet: '#titleTpl'}
                  ,{field:'playMode', title: '打款方式', align:'center',sort: true}
                  ,{field:'firmReason', title: '决绝原因',align:'center', sort: true,width:'150'}
                  ,{fixed:'right',title:'操作', width:350,align:'center',toolbar:"#barDemo"}
              ]]
              ,data:[{
                  "username": "黄志中"
                  ,"phoneNum": "18911493350"
                  ,"accountCostTotal": "￥89.18"
                  ,"estimateTotalCost": "￥80.00"
                  ,"lastCountTime": "2018-02-26 22:09"
                  ,"applyTime": "2018-02-29 22:45"
                  ,"applyWithdrawalsCost": "￥200.00"
                  ,"handleStatus": "同意"
                  ,"withdrawalsOddNum": "45820181226123"
                  ,"withdrawalsStatus": "处理中"
                  ,"playMode": "---"
                  ,"firmReason": "部分订单状态未改变！暂时不能提现"
              }]
              ,username: 'listReload'
          });

          var $ = layui.$, active = {
              reload: function(){
                  var userName = $('#demoReload');
                  // var phone = $('#phone');
                  // var status = $('#status');
                  // var price_min = $('#price_min');
                  // var price_min = $('#price_max');

                  //执行重载
                  table.reload('listReload', {
                      page: {
                          curr: 1 //重新从第 1 页开始
                      }
                      ,where: {
                          key: {
                              username: userName.val()
                          }
                      }
                  });
              }
          };

          $('.demoTable .layui-btn').on('click', function(){
              var type = $(this).data('type');
              active[type] ? active[type].call(this) : '';
          });

          //监听工具条
          table.on('tool(withdrawals)', function(obj){
              var data = obj.data;
              if(obj.event === 'agree'){
                  agree(data)
              } else if(obj.event === 'refuse'){
                  refuse(data)
              } else if(obj.event === 'abolish'){
                  layer.confirm('确认作废吗？', function(index){
                      abolish();
                      layer.close(index);
                  });
              } else if(obj.event === 'detail'){
                  detailInfo(data)
              }
          });
          function agree(obj){
              layer.open({
                  type: 1
                  ,title:'提现确认'
                  ,area: ['390px', '260px']
                  ,content: '<ul class=""  lay-filter="test">'
                  +'<li class="layui-nav-item"><a>&nbsp;提现单号:'+obj.withdrawalsOddNum+'</a></li>'
                  +'<li class="layui-nav-item"><a>&nbsp;提现金额:'+obj.applyWithdrawalsCost+'</a></li>'
                  +'<li class="layui-nav-item"><a>&nbsp;提现方式:'+obj.playMode+'</a></li>'
                  +'<li class="layui-nav-item"><hr class="layui-bg-gray"></li>'
                  +'<li class="layui-nav-item"><a>确认后，提现金额将自动转入会员账户</a></li></ul>'
                  ,btn: '确认'
                  ,btnAlign: 'c' //按钮居中
                  ,shade: 0 //不显示遮罩
                  ,yes: function(){
                      layer.closeAll();
                  }
              });
          }
          function refuse(obj){
              layer.open({
                  type: 1
                  ,title:'拒绝提现确认'
                  ,area: ['390px', '260px']
                  ,content: '<ul class=""  lay-filter="test">'
                      +'<li class="layui-nav-item"><a>&nbsp;提现单号:'+obj.withdrawalsOddNum+'</a></li>'
                      +'<li class="layui-nav-item"><a>&nbsp;提现金额:'+obj.applyWithdrawalsCost+'</a></li>'
                      +'<li class="layui-nav-item"><a>&nbsp;提现方式:'+obj.playMode+'</a></li>'
                      +'<li class="layui-nav-item"><hr class="layui-bg-gray"></li>'
                      +'<li class="layui-nav-item"><a>是否同意提现:</a><input type="radio" value=""/>拒绝</li>'
                      +'<li class="layui-nav-item"><a>备注:</a><textarea name=""></textarea></li>'
                      +'</ul>'
                  ,btn: '确认'
                  ,btnAlign: 'c' //按钮居中
                  ,titAlign: 'c'
                  ,shade: 0 //不显示遮罩
                  ,yes: function(){
                      layer.closeAll();
                  }
              });
          }

          function abolish(){

          }

          function detailInfo(obj){
              window.location.href='withdrawalsDetailInfo.jsp?userName='+obj.username+'&phoneNum='+obj.phoneNum+'&usernameType=会员';
          }


      });
      layui.use('laydate', function(){
          var laydate = layui.laydate;
          //常规用法
          laydate.render({
              elem: '#price_min'
          });
          laydate.render({
              elem: '#price_max'
          });
      });

      layui.use('element', function(){
          var element = layui.element;
      });

  </script>
