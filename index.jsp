
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018/2/21
  Time: 上午10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<link href = "<%=basePath%>css/bootstrap.min.css" rel="stylesheet"/>
<script src="<%=basePath%>js/jquery-3.3.1.min.js"></script>
    <script src="<%=basePath%>js/echarts.js"></script>
</head>
<body>
<div style = "
    width: 700px;
    height: 706px;
    margin:0 auto;
    border:1px solid #b9def0;
    ">
    <table class="table table-hover table-bordered">
        <thead>
        <tr>
            <th>过磅时间</th>
            <th>种类</th>
            <th>重量 </th>
            <th>供应商</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th name="date" ondblclick="tst(event)" scope="row">1</th>
            <td><select><option >水稳 1#（19-26.5）</option><option >水稳 2#（9.5-19）</option><option >水稳 3#（4.75-9.5）</option><option >水稳 4#（2.36-4.75）</option><option >水稳 5#（0-2.36）</option><option >油面 1#（16-26.5）</option><option >油面 2#（9.5-16）</option><option >油面 3#（4.75-9.5）</option><option >油面 5#（0-2.36）</option></select></td>
            <td ondblclick="tst(event)" name="weighing" class="weighing">43.19</td>
            <td name="vendor"ondblclick="tst(event)">20170304</td>
        </tr>
        <tr>
            <th name="date" ondblclick="tst(event)" scope="row">1</th>
            <td><select><option >水稳 1#（19-26.5）</option><option >水稳 2#（9.5-19）</option><option >水稳 3#（4.75-9.5）</option><option >水稳 4#（2.36-4.75）</option><option >水稳 5#（0-2.36）</option><option >油面 1#（16-26.5）</option><option >油面 2#（9.5-16）</option><option >油面 3#（4.75-9.5）</option><option >油面 5#（0-2.36）</option></select></td>
            <td ondblclick="tst(event)" name="weighing" class="weighing">43.22</td>
            <td name="vendor" ondblclick="tst(event)">20170404</td>
        </tr>
        <tr>
            <th name="date" ondblclick="tst(event)" scope="row">1</th>
            <td><select><option >水稳 1#（19-26.5）</option><option >水稳 2#（9.5-19）</option><option >水稳 3#（4.75-9.5）</option><option >水稳 4#（2.36-4.75）</option><option >水稳 5#（0-2.36）</option><option >油面 1#（16-26.5）</option><option >油面 2#（9.5-16）</option><option >油面 3#（4.75-9.5）</option><option >油面 5#（0-2.36）</option></select></td>
            <td ondblclick="tst(event)" name="weighing" class="weighing">43.29</td>
            <td name="vendor" ondblclick="tst(event)">20170504</td>
        </tr>
        </tbody>

    </table>
    <button  id="addRaw"  class="btn btn-default" >添加一行</button>
    <button id = "isOk"   class="btn btn-default">确认</button>
    <button id = "removeRaw"   class="btn btn-default">删除一行</button>
</div>
<br/>
<br/>
<br/>
<div id="main" style="width: 530px;height: 500px"></div>
<div id="main_" style="height:350px;"></div>
<script type = "text/javascript">
    function removeRaw(obj){$('#removeRaw').on('click',function(){$(obj).remove()})};

    function tst(event){
        event = event ? event : window.event;
        var obj = event.srcElement ? event.srcElement : event.target;
        obj.setAttribute("contentEditable","true");
    }
$(document).ready(function(){
   $('tbody').on('click','tr',function(){$(this).toggleClass('red').siblings().removeClass('red');removeRaw(this)});
});
<style type="text/css">
    .red{background-color: rgba(68, 64, 64, 0.36)
    }
</style>
</body>
</html>
