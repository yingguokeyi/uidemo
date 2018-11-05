<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp"%>
<div class="layui-form">


        <table class="layui-table">
            <colgroup>
                <col width="150">
                <col width="150">
                <col width="200">
                <col>
            </colgroup>
            <thead>
            <tr>
                <th>单号:</th>
                <th>类型:</th>
                <th>当前状态:</th>
                <th><button class="layui-btn layui-btn-primary layui-btn-sm" id="btn"><i class="layui-icon"></i></button></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>10001</td>
                <td>订单</td>
                <td>已付款</td>
                <td>

                </td>
            </tr>
            </tbody>
        </table>
    <div class="layui-tab layui-tab-brief" lay-filter="test">
        <ul class="layui-tab-title">
            <li class="layui-this" lay-id="11">概要</li>
            <li lay-id="22">商品清单</li>
            <li lay-id="33">处理状态</li>
            <li lay-id="44">物流信息</li>
        </ul>
        <div class="layui-tab-content" style="height: 100px;">
            <div class="layui-tab-item layui-show">
                <div class="layui-row">
                    <div class="layui-col-xs3">
                        <div class="grid-demo grid-demo-bg1">付款信息</div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-xs3">
                        <div class="grid-demo grid-demo-bg1">付款方式：微信支付</div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-xs3">
                        <div class="grid-demo grid-demo-bg1">支付总金额:125.00</div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-xs3">
                        <div class="grid-demo grid-demo-bg1">到手价:115.00</div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-xs3">
                        <div class="grid-demo grid-demo-bg1">返现:10.00</div>
                    </div>
                </div>

                <hr class="layui-bg-cyan">
                <div class="layui-row">
                    <div class="layui-col-xs6">
                        <div class="grid-demo grid-demo-bg1">
                            收货人信息
                        </div>
                        <div class="grid-demo grid-demo-bg1">
                            收货人:孙萁
                        </div>
                        <div class="grid-demo grid-demo-bg1">
                            收货地址:北京市东城区雍和大厦D座 物美超市
                        </div>
                        <div class="grid-demo grid-demo-bg1">
                            电话:18911493340
                        </div>
                    </div>
                </div>

                <hr class="layui-bg-cyan">
                <div class="layui-row">
                    <div class="layui-col-md4">
                        <div class="grid-demo grid-demo-bg1">
                            <div class="grid-demo grid-demo-bg1">
                                物流信息
                            </div>
                            <div class="grid-demo grid-demo-bg1">
                                物流状态:正在途中
                                <button class="layui-btn site-demo-active" data-type="tabChange">物流信息</button>

                            </div>
                            <div class="grid-demo grid-demo-bg1">
                                运单编号:3314542129749
                            </div>

                        </div>
                    </div>
                </div>

            </div>
            <div class="layui-tab-item">

                <table class="layui-table" lay-even="" lay-skin="nob">
                    <thead>
                    <tr>订单编号:</tr>
                    <tr>
                        <th>商品来源</th>
                        <th>商品编码</th>
                        <th>商品图片</th>
                        <th>商品名称</th>
                        <th>数量</th>
                        <th>淘宝价</th>
                        <th>到手价</th>
                        <th>返现</th>
                        <th>库存状态</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>1045555474441</tr>
                    <tr>
                        <td>淘宝</td>
                        <td>TB45666336</td>
                        <td>
                            <img src="timg.jpg">
                        </td>
                        <td>andandandanadan</td>
                        <td>1盒</td>
                        <td>19.00</td>
                        <td>10.00</td>
                        <td>9.00</td>
                        <td>有货</td>
                    </tr>
                    </tbody>
                </table>

            </div>
            <div class="layui-tab-item">
                <ul class="layui-timeline">
                    <li class="layui-timeline-item">
                        <i class="layui-icon layui-timeline-axis"></i>
                        <div class="layui-timeline-content layui-text">
                            <h3 class="layui-timeline-title">8月18日</h3>
                            <p>
                                layui 2.0 的一切准备工作似乎都已到位。发布之弦，一触即发。
                                <br>不枉近百个日日夜夜与之为伴。因小而大，因弱而强。
                                <br>无论它能走多远，抑或如何支撑？至少我曾倾注全心，无怨无悔 <i class="layui-icon"></i>
                            </p>
                        </div>
                    </li>
                    <li class="layui-timeline-item">
                        <i class="layui-icon layui-timeline-axis"></i>
                        <div class="layui-timeline-content layui-text">
                            <h3 class="layui-timeline-title">8月16日</h3>
                            <p>杜甫的思想核心是儒家的仁政思想，他有<em>“致君尧舜上，再使风俗淳”</em>的宏伟抱负。个人最爱的名篇有：</p>
                            <ul>
                                <li>《登高》</li>
                                <li>《茅屋为秋风所破歌》</li>
                            </ul>
                        </div>
                    </li>
                    <li class="layui-timeline-item">
                        <i class="layui-icon layui-timeline-axis"></i>
                        <div class="layui-timeline-content layui-text">
                            <h3 class="layui-timeline-title">8月15日</h3>
                            <p>
                                中国人民抗日战争胜利日
                                <br>常常在想，尽管对这个国家有这样那样的抱怨，但我们的确生在了最好的时代
                                <br>铭记、感恩
                                <br>所有为中华民族浴血奋战的英雄将士
                                <br>永垂不朽
                            </p>
                        </div>
                    </li>
                    <li class="layui-timeline-item">
                        <i class="layui-icon layui-timeline-axis"></i>
                        <div class="layui-timeline-content layui-text">
                            <div class="layui-timeline-title">过去</div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="layui-tab-item" id="con_one_4">
                <ul class="layui-timeline">
                    <li class="layui-timeline-item">
                        <i class="layui-icon layui-timeline-axis"></i>
                        <div class="layui-timeline-content layui-text">
                            <div class="layui-timeline-title">2018年，layui 5.0 发布。并发展成为中国最受欢迎的前端UI框架（期望）</div>
                        </div>
                    </li>
                    <li class="layui-timeline-item">
                        <i class="layui-icon layui-timeline-axis"></i>
                        <div class="layui-timeline-content layui-text">
                            <div class="layui-timeline-title">2017年，layui 里程碑版本 2.0 发布</div>
                        </div>
                    </li>
                    <li class="layui-timeline-item">
                        <i class="layui-icon layui-timeline-axis"></i>
                        <div class="layui-timeline-content layui-text">
                            <div class="layui-timeline-title">2016年，layui 首个版本发布</div>
                        </div>
                    </li>
                    <li class="layui-timeline-item">
                        <i class="layui-icon layui-timeline-axis"></i>
                        <div class="layui-timeline-content layui-text">
                            <div class="layui-timeline-title">2015年，layui 孵化</div>
                        </div>
                    </li>
                    <li class="layui-timeline-item">
                        <i class="layui-icon layui-anim layui-anim-rotate layui-anim-loop layui-timeline-axis"></i>
                        <div class="layui-timeline-content layui-text">
                            <div class="layui-timeline-title">更久前，轮子时代。维护几个独立组件：layer等</div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<script>
    layui.use('layer', function(){
        var layer = layui.layer;
        $(document).on('click','#btn',function(){

            //小tips
            layer.tips('创建时间：2017-12-22<br/>' +
                '操作人：蛋蛋<br/>'+
                '备注:', '#btn', {
                tips: [3, 'sandybrown'],
                time: 0,
                yes: function(){
                layer.closeAll("tips");
            }
            });
        });
    });
</script>
<script>
    layui.use('element', function(){
        var $ = layui.jquery
            ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块


        //触发事件
        var active = {
            tabChange: function(){
                //切换到指定Tab项
                element.tabChange('test', '44'); //切换到：用户管理
            }
        };
        $('.site-demo-active').on('click', function(){
            var othis = $(this), type = othis.data('type');
            active[type] ? active[type].call(this, othis) : '';
        });
        $('#show').on('click', function(){
            //触发事件
            var active = {
                tabChange: function(){
                    //切换到指定Tab项
                    element.tabChange('demo', '44'); //切换到：用户管理
                }
            };
        });
        //Hash地址的定位
        var layid = location.hash.replace(/^#test=/, '');
        element.tabChange('test', layid);

        element.on('tab(test)', function(elem){
            location.hash = 'test='+ $(this).attr('lay-id');
        });

    });
</script>

<%@ include file="/common/footer.jsp"%>