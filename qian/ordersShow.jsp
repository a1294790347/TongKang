<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<body>

<jsp:include page="head.jsp"></jsp:include>
<br><br>
 <div class="container">		
    
    <!-- Search Result -->
   <div class="row-fluid">
    	
            <table class="table table-striped">
                   	 <thead>
                        <tr>
                            <th></th>
                            <th>儿童姓名</th>
                            <th>预约时间</th>
                            <th>出生日期</th>
                            <th>预约产品</th>
                            <th>联系方式</th> 
                            <th>状态</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="yyjl" items="${yyjls}">
                        <c:if test="${yyjl.usid == user.usid}">
                        <tr>
                            <td><i class="icon-user"></i></td>
                            <td><input type="hidden"  value="${yyjl.orid}" id="orid"/> </td>
                            <td>${yyjl.orname}</td>
                            <td>${yyjl.ortimes}</td>
                             <td>${yyjl.orbirth}</td>
                              <td>${yyjl.gotype}</td>
                             <td>${yyjl.orphone}</td>
                             <td>${yyjl.orstate}</td>
                             <td><input type="button" id = "btn" value="删除" class="btn-u" /></td>
                        </tr>
                        </c:if>
                        </c:forEach>
                        
                    </tbody>
                </table>
           
       
    </div>


    <!-- //End Search Result -->
</div><!--/container-->
<jsp:include page="foot.jsp"></jsp:include>
</body>
<script type="text/javascript">
	$(function(){
		$("#btn").click(function(){
		    var orid = $("#orid").val();
            alert("是否确定要删除这条预约记录");
            $.ajax({
                url : '<%=basePath%>orders/del',
                type: "post",
                data: {"orid":orid},
                dataType: "json",
                success: function(data){
                    if (data>0){
                        alert('删除结果-成功');
                        location.reload();
                    } else {
                        alert('删除结果-失败');
                    }
                }

            });
		});
	});
</script>
</html>	
