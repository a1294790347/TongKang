<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	
</head>

<body>


<jsp:include page="head.jsp" ></jsp:include>

<br><br>
<div class="container">		
	<div class="row-fluid blog-page blog-item">
        <!-- Left Sidebar -->
    	<div class="span9">
        	<div class="blog margin-bottom-30">
            	<h3>传统商户营销如何移动起来？百度的生态布局开始了</h3>
            	<ul class="unstyled inline blog-info">
                	<li><i class="icon-calendar"></i> 时间：2015-01-02</li>
                	<li><i class="icon-pencil"></i>转载自：</li>
                	<li><i class="icon-comments"></i> <a href="#">编辑人：小王</a></li>
                </ul>
            	
                <div class="blog-img"><img src="../img/posts/1.jpg" alt="" /></div>
                <p>
                1、三房将可能变为刚需<br>在现在的房产市场里<a href="http://jinan.anjuke/ask/SE38082?from=qa_ask_best" target="_blank" rel="nofollow">*</a>两房的刚需属性已经得到肯定*对部分购房者来说，三房也属于刚需范畴*但是如果生了二胎*二房肯定是不够住的*孩子小时候尚且可以用上下床过渡*但如果孩子长大，哪怕性别相同，还是需要一定的个人空间*那个时候：父母一间，孩子一人一间，三房才是刚需产品*<br>2、四房成为改需<br>三房变成了刚需，那么相应的，四房将会变成改需产品*多出来的房间可以作为书房、健身室、对大多数两孩家庭来说<a href="http://jinan.anjuke/ask/SE69C80?from=qa_ask_best" target="_blank" rel="nofollow">最</a>主要的，还可以作为儿童娱乐室，保证儿童的健康发展*<br>3、保姆房会列入开发范畴<br>二孩家庭，只靠父母两个孩子照顾是非常辛苦的*以后的两孩家庭请保姆可能会成为常态*目前市面上就有许多高端产品将保姆房纳入设计范围，相信全面放开二孩政策以后这个范围会更广*<br>4、二房的市场被大大挤压<br>二孩政策普遍放开后，房产市场上二房的地位将非常尴尬*作为过渡性的首套房呢，三房总价比两房高，不划算*作为改需产品呢，三房可能以后不会满足家庭的居住计划*有条件的家庭都会购买三房、四房，一步到位*如此左右不逢源，二房会被市场淘汰吗?这也不会，毕竟市场需求千变万化，而且二房也可以往小三房发展*<br>5、学区房地位更加不可动摇<br>对二胎家庭来说，两个孩子的教育将成为重中之重，而且也将花费父母大量精力*如果孩子能入读较好的学校，将会大大减轻父母压力*所以，全面放开二孩政策后，全国各地学区房的地位将更加不可动摇，学区房及入读名额的争夺也将愈发激烈*需要各位家长未雨绸缪*
                
                </p>
                

               </div><!--/blog-->

			<hr />

            <!-- Media -->
            <div id="tj">
            <div class="media">
                <a class="pull-left" href="#">
                    <img class="media-object" src="../img/sliders/elastislide/9.jpg" alt="" />
                </a>
                <div class="media-body">
                <p><b>2015-12-01</b></p>        
                    <h4 class="media-heading">破碎之手 </h4>
                    <p>而且也将花费父母大量精力*如果孩子能入读较好的学校，将会大大减轻父母压力*所以</p>         
                </div>
                <hr />
            </div>  
            
             <c:forEach var="pllb" items="${pllb}"> 
            <div class="media">
                <a class="pull-left" href="#">
                    <img class="media-object" src="../img/sliders/elastislide/匿名头像.jpg "  alt="" />
                </a>
                <div class="media-body">
                <p><b>2020-1-01</b></p>        
                    <h4 class="media-heading"  id="a"> ${pllb.MZ }</h4>
                    <p id="b">${pllb.XX }</p>         
                </div>
                <hr />
            </div>  
            </c:forEach>
                      
            </div>
           
		
            <!-- Leave a Comment -->
            <div class="post-comment">
            	<h3 class="color-green">发表评论</h3>
                <form >
                    <label>姓名<span class="color-red" >*</span></label>
                    <input type="text" class="span7"  id="mz" />
                     <p id="xmt"></p>
                    <label>邮箱<span class="color-red" >*</span></label>
                    <input type="text" class="span7"  id="yx"  />
                     <p id="yxt"></p>
                    <label>信息<span class="color-red" >*</span></label>
                    <textarea rows="8" class="span10"  id="xx"></textarea>
                     <p id="xxt"></p>
                    <p><button type="submit" class="btn-u"  id="fabu">发布</button></p>
                </form>
            </div><!--/post-comment-->      
              
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
</div><!--/container-->		
<jsp:include page="foot.jsp"></jsp:include>
</body>
	<script type="text/javascript">
		$(function(){			 
			$.get(
					"<%=basePath%>plb/pllb",
					{},
					function(pllb){
						for(var i = 0; i < pllb.length; i++) {
							$("#a").val(pllb[i].MZ);
							$("#b").val(pllb[i].XX);
						}
					}						
			);
						
			/* $("#tp").hide() ; */
			$("#fabu").click(function(event){
				event.preventDefault();
				var mz = $("#mz").val().trim();
              	if(mz == ""){  
                   $("#xmt").text("姓名不能为空").css("color","red");
                   return;
             	 }
              	$("#xmt").text("");
	              if($("#yx").val().trim()==""){  
	                   $("#yxt").text("邮箱不能为空").css("color","red");		
	                   return;
	              }
	          	$("#yxt").text(""); 
	          	
	          	var infoText = $("#xx").val().trim();
	            if(infoText == ""){  
	                   $("#xxt").text("评论信息不能为空").css("color","red");		
	                   return;
	            }   
		        $("#xxt").text("");
		     
	      		 var mz=$("#mz").val();
		        var yx=$("#yx").val();
		        var xx=$("#xx").val();
		        $.post(
		        	"<%=basePath%>plb/getAll",
		           	 {"mz":mz,"yx":yx,"xx":xx},       
		             function(data) {		            	
		            		 alert("留言成功");
			 		       var addText = "<div class='media'>";
			            	addText +=  "<a class='pull-left' href='#'><img class='media-object' src='assets/img/sliders/elastislide/匿名头像.jpg'  /></a>";
			            	addText +=  "<div class='media-body'><p><b>"+ new Date().toLocaleDateString() +"</b></p>";
			            	addText +=  " <h4 class='media-heading'>"+ mz +" </h4>";
			            	addText +=  " <p>"+ infoText +"</p></div> <hr /></div>"; 
					        $("#tj").append(addText);
					        $("#mz").val("");
			 		        $("#yx").val("");
			 		        $("#xx").val(""); 
		     			}
		     			
		       );
		      
			});
		});
	</script>
</html>	
