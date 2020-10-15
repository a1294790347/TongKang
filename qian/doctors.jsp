<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

<jsp:include page="head.jsp"></jsp:include> 
<div class="container">	
<br><br>
	<div >
	<img src="../img/teamphoto.jpg"  style="width:100%;height:350px;"  />
		<div class="headline"><h3>白金儿童医师阵容</h3> </div>
        <ul class="thumbnails">
        	<c:forEach var="yszr" items="${alldoctors}">
            <li class="span4">
                <div class="thumbnail thumbnail-kenburn">
                    <div class="overflow-hidden"><img src="${yszr.dourl}" alt="" /></div>
                    <div class="caption">
                        <h3>${yszr.dotitle}-${yszr.doname}</h3>
                        <p>${yszr.doinfor}的他擅长${yszr.dogoodat}</p>
                        <p><a href="<%=path %>/qian/doctorsDetail.jsp?doid=${yszr.doid}" class="btn-u">详情</a></p>
                    </div>
                </div>
            </li>
            </c:forEach>
        </ul>
	
	</div>
</div>
<br>
<center><img src="../img/footss.jpg"/></center>
<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>	
