<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
<link rel="stylesheet" type="text/css" href="../css/pikaday.css"/>
<script type="text/javascript" src="../js/pikaday.min.js"></script>
<script type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
<jsp:include page="head.jsp"></jsp:include>
<br><br>
<div class="container">		
	<div class="row-fluid">
        <form class="log-page" action="<%=path %>/ordersShow.jsp"/>
            <h3>购买药品</h3>

           </h5>
            <c:forEach var="tcxq" items="${tjcxs}">
                <c:if test="${tcxq.goid == param.goid}">
                    <h3>童乐产品${tcxq.goages}${tcxq.gotype}</h3>
                    <ul style="list-style:none; margin-left: -1px; font-size: 18px;font-weight: bold" >
                        <li><i class="icon-user color-green"></i>年龄范围：${tcxq.goages}</li>
                        <li><i class="icon-home color-green"></i>套餐类别：${tcxq.gotype}</li>
                        <li><i class="icon-tags color-green"></i>原价：<s>${tcxq.goprice}</s></li>
                        <li><i class="icon-info-sign color-red"></i>活动价:${tcxq.gosell}</li>
                    </ul>
                </c:if>
            </c:forEach>
            <br>
            
        </form>
    </div><!--/row-fluid-->
</div>
<script type="text/javascript">

    var picker = new Pikaday(
    {
        field: document.getElementById('ortimes'),
        firstDay: 1,
        minDate: new Date('2010-01-01'),
        maxDate: new Date('2020-12-31'),
        yearRange: [2000,2020]
    });
	
    var picker = new Pikaday(
    	    {
    	        field: document.getElementById('orbirth'),
    	        firstDay: 1,
    	        minDate: new Date('2010-01-01'),
    	        maxDate: new Date('2020-12-31'),
    	        yearRange: [2000,2020]
    	    });
    

			$("#yy").click(function(event){
    			//判定登录

        		var goid = ${param.goid};

    			if (${user == null}) {
    				alert("请登录");
    				window.location.href = "<%=basePath%>qian/login.jsp";

    			}else{
    			    var usid = $("#usid").val();
    			    var ortimes = $("#ortimes").val();
    			    var orname = $("#orname").val();
    			    var orbirth = $("#orbirth").val();
    			    var orphone = $("#orphone").val();
    			    var orstate = $("#orstate").val();
    			    console.log(orders);
    			$.post(
    					"<%=basePath%>orders/add",
    					{
    						"usid": usid, "goid" : goid, "ortimes" : ortimes,
       					 	"orname" : orname, "orbirth" : orbirth, 
    					 	"orphone" : orphone, "orstate" : orstate},
    					function(data) {
    						if(data > 0) {
    							if (data >0) {
    								alert("预约成功");
    								location.href="index.jsp";
    							} else {
    								alert("失败");
    								location.reload();
    							}		
    						}
    					}
    			);	
    		}
            });
    	
    	
    		
   
</script>
<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>	
