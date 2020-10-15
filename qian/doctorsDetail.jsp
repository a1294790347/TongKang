<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<style>
    	.h44{font-size:18px;line-height:60px;font-weight:bold;color:#fff;height:60px;text-center:center}

.tr001{width:65px;text-align: center; line-height: 3em; background: #1d953f; color: #fff; font-size: 1.1em; font-weight: bold}
.td01{width:65px;text-align: center; background: #1d953f; color: #fff; font-size: 1.1em; font-weight: bold}
.td02{text-align: center; background: #7dc6ed; color: #fff; font-size: 1.1em}
.td03{text-align: left; padding-bottom: 0.5em; padding-left: 0.5em; padding-right: 0.5em; background: #d7ebf8; color: #0074b3; font-size: 1.1em; padding-top: 0.5em}
.td04{text-align: left; padding-bottom: 0.5em; padding-left: 0.5em; padding-right: 0.5em; background: #d7ebf8; color: #0074b3; font-size: 1.1em; padding-top: 0.5em}
    	
    
    </style>
<body>
    
<jsp:include page="head.jsp"></jsp:include>
<br><br>

<div class="container portfolio-item"> 	
	<div class="row-fluid margin-bottom-20"> 
		<!-- Carousel -->
        <!--/span7-->
        <!-- //End Tabs and Carousel -->
        <c:forEach var="yszrx" items="${yszrs}">
        <c:if test="${yszrx.doid == param.doid}">
        
         <div class="span7">
            <div id="myCarousel" class="carousel slide">
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="${yszrx.dourl}" width="400" alt="" />
                        
                    </div>
                   
                </div>
                
            </div>
        </div>
        <div class="span5">
        	<h3>白金资深医师</h3>
            <ul style="list-style:none; margin-left: -1px; font-size: 18px;font-weight: bold" >
            	<li><i class="icon-user color-green"></i>专家名：${yszrx.doname}</li>
            	<li><i class="icon-home color-green"></i>职称： ${yszrx.dotitle}</li>
            	<li><i class="icon-tags color-green"></i>擅长：${yszrx.dogoodat}</li>  
            </ul>
            
            <p><a class="btn-u btn-u-large" href="<%=path %>/qian/answerAdd.jsp?usid=${user.usid}">咨询</a></p>
        </div>
       	</c:if>
        </c:forEach>
    </div><!--/row-fluid-->

	<!-- Recent Works -->
   
  <div class="row-fluid">
            <blockquote>
                <h2 class="color-green">简介：</h2>
                <p><span style="font-family: '宋体';font-size:16px; line-height: 30px;">
1976年毕业于上海第二医科大学儿科系。先后在市儿童医院、市儿童保健所、市卫生局妇女儿童保健所、普陀区妇婴保健院（所）工作。
现任中国优生优育协会理事、上海优生优育科学协会副会长、上海预防医学会理事、妇幼专业委员会主任委员、普陀区妇婴保健院主任医师。
从事儿童保健工作三十余年，发表论文十余篇，其中三篇论文获施恩明基金优秀论文类一等奖和进步奖。 </span></blockquote>
        </div>
	<!-- //End Recent Works --> 
	
              
</div>
	<br><br>
<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>	
