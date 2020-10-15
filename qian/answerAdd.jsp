<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
            <h3>提交咨询</h3> 
            <h5>1.请认真填写咨询内容<br>
            2.我们会及时和您确认信息<br>
           </h5>    
           <%
			Date d = new Date();
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String now = df.format(d);
		   %>
            <input id="usid" type="hidden" value=${user.usid} />
            <div class="input-prepend">
                <span class="add-on"><i class="icon-user"></i></span>
                <input id="astitle" class="input-xlarge" type="text" placeholder="症状" />
            </div>
            
             <div class="input-prepend">
                <span class="add-on"><i class="icon-user"></i></span>
                <input  id="assex" class="input-xlarge" type="text" placeholder="性别" />
            </div>
            
             <div class="input-prepend">
                <span class="add-on"><i class="icon-user"></i></span>
                <input id="asage" class="input-xlarge" type="text" placeholder="年龄" />
            </div>
            <div class="input-prepend" >
                <span class="add-on"><i class="icon-user"></i></span>
                <input id="astimes" disabled class="input-xlarge" type="text" placeholder="时间" value=<%=now %> />
            </div>
            <div class="controls form-inline"> 
            	<input type="button" id="cx" class="btn-u pull-right" value="查询" />   
            </div>  
            <br>
       </form>
       
    </div><!--/row-fluid-->
</div>
	   
	   
<script type="text/javascript">
        $("#cx").click(function(event){
            //判定登录
            if (${user == null}) {
                alert("请登录");
                window.location.href = "<%=basePath%>qian/login.jsp";
                return;
            }else{
                var usid = $("#usid").val();
                var astimes = $("#astimes").val();
                var astitle = $("#astitle").val();
                var assex = $("#assex").val();
                var asage = $("#asage").val();
                var asanswer = "请看聊天记录";
                var ashfzt = "待回复";
                $.post(
                    "<%=basePath%>asks/add",
                    {
                        "usid": usid, "astimes" : astimes,"ashfzt" : ashfzt,
                        "astitle" : astitle, "assex" : assex,
                        "asage" : asage, "asanswer" : asanswer},
                    function(data) {
                        if(data > 0) {
                            if (data >0) {
                                alert("成功提交咨询申请");
                                location.href="index.jsp";
                            } else {
                                alert("失败");
                                location.reload();
                            }
                        }
                    });
            }
            });
</script>
<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>	
