<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<body>

<jsp:include page="head.jsp"></jsp:include>
<br><br>

<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>	
