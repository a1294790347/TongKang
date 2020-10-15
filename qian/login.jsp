<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<div class="row-fluid">
        <form class="log-page" id="for1"/>
            <h3>请登陆</h3>    
            <div class="input-prepend">
                <span class="add-on"><i class="icon-user"></i></span>
                <input class="input-xlarge" name="usname" type="text" placeholder="用户名" />
            </div>
            <div class="input-prepend">
                <span class="add-on"><i class="icon-lock"></i></span>
                <input class="input-xlarge" name="uspass" type="text" placeholder="密码" />
            </div>
            <div class="input-prepend">
                <span class="add-on"><i class="icon-lock"></i></span>
              <select >
                  <option value="0">请选择身份</option>
                  <option value="1">用户</option>
                  <option value="2">管理员</option>
              </select>
            </div>


        <div class="controls form-inline">
                <label class="checkbox"><input type="checkbox" /> Stay Signed in</label>
                <button class="btn-u pull-right" id="login" type="submit">Login</button>
            </div>
            <hr />
            <h4>Forget your Password ?</h4>
            <p>no worries, <a class="color-green" href="#">click here</a> to reset your password.</p>
        </form>
        <br><br>
    </div><!--/row-fluid-->
</div>
<jsp:include page="foot.jsp"></jsp:include>
</body>
    <script type="text/javascript" >
        $(function () {
            $("#login").click(function (event) {
                var iden=$("#iden1").val();
                   event.preventDefault();
                $.post(
                    "<%=basePath %>/users/login",
                    $("#for1").serialize(),
                    function (data) {
                        if (data.login) {
                           var iden= $("select option:selected").val();
                                if(iden==2) {
                                    alert("管理员登录成功")
                                location.href="/tongkang/back/index.html";
                            }else if(iden==1){
                                alert("用户登录成功");
                                //alert(data.flag);
                               //  alert(data.g);
                                 // alert(data.user.usname);
                                location.href="/tongkang/qian/index.jsp";
                            }
                        } else {
                            alert("账号或密码错误");
                            location.reload();
                        }
                    }
                )
            })
        })
    </script>
</html>	
