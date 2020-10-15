<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<body>

<jsp:include page="head.jsp"></jsp:include>
<jsp:include page="huandengpian.jsp"></jsp:include>
<div class="container">	
<br><br>
	<div >
	<div class="headline" ><h3 >超值儿童体检套餐</h3> <a href="" style="float:right;margin-top:20px;">查看更多</a></div>
    <ul class="thumbnails" >
        <c:forEach var="tjcxs" items="${allgood}">
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
    <br>
    <a href="#"><img src="../img/gg1.jpg" width="100%" /></a>
	<br>
	 <div class="headline"><h3>白金儿童医师阵容</h3><a href="" style="float:right;margin-top:20px;">查看更多</a></div>
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
	<div class="row-fluid">
     
     
    	<div class="span9">
        	<div class="headline"><h3>抚育儿童须知</h3></div>
            <div class="row-fluid"> 
            <ul style="font-size:16px; font-weight: bold">
            	<li><a href="">甲型H1N1流感病毒</a></li>
            	<li><a href="">宝宝腹泻，婴儿腹泻怎么办？</a> </li>
            	<li><a href="">宝宝腹泻，婴儿腹泻怎么办？</a> </li>
            	<li><a href="">宝宝腹泻，婴儿腹泻怎么办？</a> </li>
            	<li><a href="">宝宝腹泻，婴儿腹泻怎么办？</a> </li>
            	<li><a href="">宝宝腹泻，婴儿腹泻怎么办？</a> </li>
            	<li><a href="">宝宝腹泻，婴儿腹泻怎么办？</a> </li> 
			</ul>
           </div>
           
        </div><!--/span9-->

    	<div class="span3">
        	<!-- Our Services -->
           <img src="../img/guanggao1.jpg"/>

        	
        </div><!--/span3-->
      	
    </div> 
</div>
<br>
<center><img src="../img/footss.jpg"/></center>
<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>	
