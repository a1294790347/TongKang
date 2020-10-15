<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; " %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <script type="text/javascript" src="../js/app.js"></script>
    <script type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="../js/modernizr.custom.js"></script>
    <script type="text/javascript" src="../js/pikaday.min.js"></script>
    <script type="text/javascript" src="../js/respond.js"></script>
</head>
<body>

<jsp:include page="head.jsp"></jsp:include>
<br><br>
<div class="container">		
		<div class="row-fluid margin-bottom-10">
        	<form class="reg-page" id="for1"/>
            	<h3>您的个人信息如下</h3>
                <div class="controls">
                    <label>账号: </label>
                    <input required="true" id="usname" name="usname" readonly="readonly" value="${user.usname}">
                    <label>邮箱: </label>
                   	<input name="usemail" id="usemail" value="${user.usemail}">
                   	 <label>电话:</label>
                    <input name="usphone" id="usphone" value="${user.usphone}">
                </div>
                <hr />
				  <button class="btn-u pull-right" id="btn" type="submit">修改</button>
            </form>
        </div><!--/row-fluid-->
	</div>
<jsp:include page="foot.jsp"></jsp:include>
</body>
    <script type="text/javascript" >
        $(function () {
            $("#btn").click(function (event) {
                    event.preventDefault();
                    $.post(
                        "<%=path %>/users/update?usid=${user.usid}",
                        $("#for1").serialize(),
                        function (data) {
                            if(data.update){
                                alert("修改成功");
                                var user1=data.message;
                                $("#usemail").text(user1.getUsemail());
                                $("#usphone").text(user1.getUsphone());
                                return;
                            }
                            alert("请重试")
                            location.reload();
                        }
                    )
            })
        })
    </script>
</html>	
