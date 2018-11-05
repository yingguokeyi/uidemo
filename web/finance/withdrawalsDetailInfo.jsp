<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<%@ include file="/finance/menu_finance.jsp"%>



<!-- 内容主体区域 -->
<div class="layui-body">
    <div class="layui-row">
        <div style="background-color: #EEEEEE ;height: 50px;margin-top: 10px;margin-left: 10px">
            <label style="font-size: 18px;margin-left: 3% ; line-height: 50px" >提现信息详情</label>
            <button class="layui-btn layui-btn-radius" style=" margin-left: 75%" onclick="history.go(-1)">返回</button>
        </div>
        <br>
        <div>
            <label style="font-size: 15px;margin-left: 3% ; line-height: 30px" >联系人信息</label>
            <hr class="layui-bg-gray">
        </div>
        <div style=" height: 50px;margin-top: 10px;margin-left: 100px">

            <div class="layui-inline" >
                姓名：
                <a class="layui-inline" id="username"></a>
            </div>
            <div class="layui-inline" style="position: relative;left:500px;">
                手机号：
                <a class="layui-inline" id="phone"></a>
            </div>
        </div>
        <div style=" height: 50px;margin-top: 10px;margin-left: 100px">
            会员类型：
            <div class="layui-inline" >
                <a class="layui-inline" id="usernametype"></a>
            </div>
        </div>
    </div>

    <div>
        <div>
            <label style="font-size: 15px;margin-left: 3% ; line-height: 30px" >提现信息</label>
            <hr class="layui-bg-gray">
        </div>
        <div style="margin-left: 7%;width: 80.5%">
            <table class="layui-table" id="withdrawalsDetailList"  style="visibility: hidden" lay-filter="demo" ></table>
        </div>
    </div>
</div>


<script>

    layui.config({
        version: '1515376178738' //为了更新 js 缓存，可忽略
    });

    $(document).ready(myFunction());
    function myFunction(){
        var url = location.search;
        var theRequest = new Object();
        if ( url.indexOf( "?" ) != -1 ) {
            var str = url.substr( 1 ); //substr()方法返回从参数值开始到结束的字符串；
            var strs = str.split( "&" );
            for ( var i = 0; i < strs.length; i++ ) {
                theRequest[ strs[ i ].split( "=" )[ 0 ] ] = ( strs[ i ].split( "=" )[ 1 ] );
            }
            $('#username').text(theRequest.userName);
            $('#phone').text(theRequest.phoneNum);
            $('#usernametype').text(theRequest.usernameType);
        }
    }
    function UnicodeToUtf8(unicode) {
        var uchar;
        var utf8str = "";
        var i;

        for(i=0; i<unicode.length;i+=2){
            uchar = (unicode[i]<<8) | unicode[i+1];               //UNICODE为2字节编码，一次读入2个字节
            utf8str = utf8str  + String.fromCharCode(uchar);    //使用String.fromCharCode强制转换
        }
        return utf8str;
    }

    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#withdrawalsDetailList'
            // ,url:'/demo/table/user/'
            //,cellMinWidth: 100 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            ,page:false
            ,cols: [[
                {field: 'field1', title: '申请时间', width:100,align: 'center'}
                ,{field: 'field2', title: '处理状态', width:100,align: 'center'}
                ,{field: 'field3', title: '账户总金额(元)', width:150,align: 'center'}
                ,{field: 'field4', title: '当前预估总金额', width:150,align: 'center'}
                ,{field: 'field5', title: '提现金额(元)', width: 170,align: 'center'}
                ,{field: 'field6', title: '提现单号', width: 100,align: 'center'}
                ,{field: 'field7', title: '提现状态', width: 100,align: 'center'}
                ,{field: 'field8', title: '打款方式', width: 100,align: 'center'}
                ,{field: 'field9', title: '决绝原因', width: 135,align: 'center'}
                ,{field: 'field10', title: '最后处理时间', width: 135,align: 'center'}
                ,{field: 'field11', title: '最后操作人', width: 135,align: 'center'}
            ]]
            ,data:[{
                "field1": "黄志中"
                ,"field2": "18911493350"
                ,"field3": "￥89.18"
                ,"field4": "￥80.00"
                ,"field5": "￥200.00"
                ,"field6": "￥200.00"
                ,"field7": "￥200.00"
                ,"field8": "同意"
                ,"field9": "45820181226123"
                ,"field10": "2018-02-29 22:45"
                ,"field11": "---"
            },{
                "field1": "黄志中"
                ,"field2": "18911493350"
                ,"field3": "￥89.18"
                ,"field4": "￥80.00"
                ,"field5": "111"
                ,"field6": "11"
                ,"field7": "￥200.00"
                ,"field8": "同意"
                ,"field9": "45820181226123"
                ,"field10": "2018-02-26 22:09"
                ,"field11": "---"
            }]
        });
    });
    layui.use('laydate', function(){
        var laydate = layui.laydate;
        //常规用法
        laydate.render({
            elem: '#field10'
        });

    });
</script>

