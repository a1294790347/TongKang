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
<div class="container">		
	<div class="row-fluid blog-page">    
        <!-- Left Sidebar -->
    	<div class="span9">
        	<div class="blog margin-bottom-30">
            	<h3>幸福可能会迟到 但不会缺席</h3>
            	<ul class="unstyled inline blog-info">
                	<li><i class="icon-calendar"></i> 2016-02-01</li>
                	<li><i class="icon-pencil"></i> 小刘</li>
                </ul>
            	
                <div class="blog-img"><img src="../img/posts/1.jpg" alt="" /></div>
                <p>韩剧都抛弃女主角得了绝症，男主不离不弃的桥段了，你还在幻想腻歪的爱情之旅吗？爱情里价值观之间的碰撞才格外吸引人。今天小编cos一下...</p>
                <p><a class="btn-u btn-u-small" href="<%=path %>/qian/buynewsDetail.jsp">阅读详情</a></p>
            </div><!--/blog-->
<div class="blog margin-bottom-30">
            	<h3>幸福可能会迟到 但不会缺席</h3>
            	<ul class="unstyled inline blog-info">
                	<li><i class="icon-calendar"></i> 2016-02-01</li>
                	<li><i class="icon-pencil"></i> 小刘</li>
                </ul>
            	
                <div class="blog-img"><img src="../img/posts/1.jpg" alt="" /></div>
                <p>韩剧都抛弃女主角得了绝症，男主不离不弃的桥段了，你还在幻想腻歪的爱情之旅吗？爱情里价值观之间的碰撞才格外吸引人。今天小编cos一下...</p>
                <p><a class="btn-u btn-u-small" href="blog_item.html">阅读详情</a></p>
            </div>
        	<!--/blog-->
			<div class="blog margin-bottom-30">
            	<h3>幸福可能会迟到 但不会缺席</h3>
            	<ul class="unstyled inline blog-info">
                	<li><i class="icon-calendar"></i> 2016-02-01</li>
                	<li><i class="icon-pencil"></i> 小刘</li>
                </ul>
            	
                <div class="blog-img"><img src="../img/posts/1.jpg" alt="" /></div>
                <p>韩剧都抛弃女主角得了绝症，男主不离不弃的桥段了，你还在幻想腻歪的爱情之旅吗？爱情里价值观之间的碰撞才格外吸引人。今天小编cos一下...</p>
                <p><a class="btn-u btn-u-small" href="blog_item.html">阅读详情</a></p>
            </div>
        	<!--/blog-->
            
            <div class="pagination pagination-centered">
                <ul>
                    <li class="disabled"><a href="#">Prev</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li class="active"><a>3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">6</a></li>
                    <li><a href="#">7</a></li>
                    <li><a href="#">8</a></li>
                    <li><a href="#">Next</a></li>
                </ul>
            </div>
        </div><!--/span9-->

        <!-- Right Sidebar -->
    	<div class="span3">
    		<div class="headline"><h3>搜索新闻</h3></div>
            <div class="input-append  margin-bottom-20">
                <input type="text" class="span9" />
                <button type="button" class="btn-u">搜一下</button>
            </div>
        	<!-- Our Services -->
             <div class="posts margin-bottom-20">
                <div class="headline"><h3>健康百科</h3></div>
                <ul class="unstyled" >
            	<li style="line-height:35px;"><i class="icon-bookmark-empty color-green"></i><a href="#"> 儿童焦躁症的处理</a></li>
            	<li style="line-height:35px;"><i class="icon-bookmark-empty color-green"></i><a href="#"> 婴儿期饮食影响宝宝一生</a></li>
            	<li style="line-height:35px;"><i class="icon-bookmark-empty color-green"></i><a href="#"> 多吃这类型食物帮你生男宝宝</a></li>
            	<li style="line-height:35px;"><i class="icon-bookmark-empty color-green"></i><a href="#"> 让宝宝变聪明的鱼</a></li>
            	</ul>
            </div>

        	
        </div><!--/span3-->
    </div><!--/row-fluid-->        
</div>
<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>	
