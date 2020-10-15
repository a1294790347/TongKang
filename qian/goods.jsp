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
	<img src="../img/goosbg.jpg"  style="width:100%;height:300px;"  />
	<div class="headline" ><h3 >超值儿童体检套餐</h3>  </div>
    <ul class="thumbnails" >
    	<c:forEach var="tjcxs" items="${tjcxs}">
    	<c:if test="${tjcxs.gotype == 'A套餐'}">
        <li class="span3" style="background-color: #b2d235">
            <div class="thumbnail-style thumbnail-kenburn">
            	<div class="thumbnail-img">
                    <div class="overflow-hidden"><img src="${tjcxs.gourl}" alt="" /></div>
                    <a class="btn-more hover-effect"  href="<%=path %>/qian/goodsDetail.jsp?goid=${tjcxs.goid}">查看详情</a>	  				
                </div>
                 <center><h3><a class="hover-effect" style="color:#fff" href="#">现价：${tjcxs.goprice}元</a></h3>
                <p  style="color:#fff"> <s>原价：${tjcxs.gosell}元 </s> </p> 
                
                 </center>
            </div>
        </li>     
    	</c:if>
    	<c:if test="${tjcxs.gotype == 'B套餐'}">
        <li class="span3"  style="background-color: #f58220">
            <div class="thumbnail-style thumbnail-kenburn">
            	<div class="thumbnail-img">
                    <div class="overflow-hidden"><img src="${tjcxs.gourl}" alt="" /></div>
                    <a class="btn-more hover-effect" href="<%=path %>/qian/goodsDetail.jsp?goid=${tjcxs.goid}">查看详情</a>					
                </div>
                 <center><h3><a class="hover-effect" style="color:#fff" href="#">现价：${tjcxs.goprice}元</a></h3>
                <p style="color:#fff"><s>原价：${tjcxs.gosell}元</s></p> </center>
            </div>
        </li> 
     	</c:if>
     	<c:if test="${tjcxs.gotype == 'C套餐'}">
        <li class="span3"  style="background-color: #009ad6">
            <div class="thumbnail-style thumbnail-kenburn">
            	<div class="thumbnail-img">
                    <div class="overflow-hidden"><img src="${tjcxs.gourl}" alt="" /></div>
                    <a class="btn-more hover-effect" href="<%=path %>/qian/goodsDetail.jsp?goid=${tjcxs.goid}">查看详情</a>					
                </div>
                 <center><h3><a class="hover-effect" style="color:#fff" href="#">现价：${tjcxs.goprice}元</a></h3>
                <p style="color:#fff"><s>原价：${tjcxs.gosell}元</s></p> </center>
            </div>
        </li>   
        </c:if>
        </c:forEach> 
    </ul> 
    
    
    
    
    </div>
</div>
<br>
<center><img src="../img/footss.jpg"/></center>
<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>	
