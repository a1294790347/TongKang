<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<!--[if IE 7]> <html lang="en" class="ie7"> <![endif]-->  
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>Unify | Welcome...</title>

    <!-- Meta -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="stylesheet" href="../plugins/revolution_slider/css/rs-style.css" media="screen" />
    <link rel="stylesheet" href="../plugins/revolution_slider/rs-plugin/css/settings.css" media="screen" />
    <!-- CSS Global Compulsory-->
    <link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../css/style.css" />
    <link rel="stylesheet" href="../css/headers/header2.css" />
    <link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="../css/style_responsive.css" />
    <link rel="shortcut icon" href="favicon.ico" />
    <!-- CSS Implementing  -->
    <link rel="stylesheet" href="../plugins/font-awesome/css/font-awesome.css" />
    <link rel="stylesheet" href="../plugins/flexslider/flexslider.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="../plugins/bxslider/jquery.bxslider.css" />
    <link rel="stylesheet" href="../plugins/horizontal-parallax/css/horizontal-parallax.css" />
    <!-- CSS Theme -->
    <link rel="stylesheet" href="../css/themes/default.css" id="style_color" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<body> 
<div class="top">
    <div class="container">			        
        <div class="row-fluid">
            <ul class="loginbar inline">
                <c:if test="${user == null}">
                <li><a href="mailto:info@anybiz.com"><i class="icon-envelope-alt"></i> info@anybiz.com</a></li>	
                <li><a><i class="icon-phone-sign"></i> 010 4202 2656</a></li>	
                <li><a href="<%=path %>/qian/login.jsp"><i class="icon-user"></i>登陆</a></li>
                <li><a href="<%=path %>/qian/register.jsp"><i class="icon-edit"></i>注册</a></li>
                </c:if>
                <c:if test="${user != null}">
                <li><a href="<%=path %>/qian/loginUser.jsp?usid=${user.usid}"><i class="icon-user"></i>个人信息</a></li>
                <li><a href="<%=path %>/orders/yyjl"><i class="icon-calendar"></i>预约记录</a></li> 
                <li><a href="<%=path %>/asks/zxjl"><i class="icon-calendar"></i>咨询记录</a></li>
                <li><a href="<%=path %>/users/exit"><i class="icon-edit"></i>退出</a></li>
                </c:if>
            </ul>
        </div>        				
    </div><!--/container-->		
</div><!--/top-->
<!--=== End Top ===-->    

<!--=== Header ===-->
<div class="header">               
    <div class="container"> 
        <!-- Logo -->       
        <div class="logo">                                             
            <a href="<%=path %>/qian/index.jsp"><img id="logo-header" style="height:38px;" src="../img/logo.png" alt="Logo" /></a>
        </div><!-- /logo -->        
                                    
        <!-- Menu -->       
        <div class="navbar">                                
            <div class="navbar-inner">                                  
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a><!-- /nav-collapse -->                                  
                <div class="nav-collapse collapse">                                     
                    <ul class="nav" style="font-weight:bold">
                         <li>
                            <a href="<%=path %>/index/getAll" class="dropdown-toggle" >首页</a>
                            <b class="caret-out"></b>                        
                        </li>
                         <li>
                            <a href="<%=path %>/good/tjcx" class="dropdown-toggle" >体检套餐</a>
                            <b class="caret-out"></b>                        
                        </li>
                         <li>
                            <a href="<%=path %>/question/zndc" class="dropdown-toggle" >智能导诊</a>
                            <b class="caret-out"></b>                        
                        </li>
                       <li>
                            <a href="<%=path %>/doctors/yszr" class="dropdown-toggle" >医师阵容</a>
                            <b class="caret-out"></b>                        
                        </li>
                        <li >
                       	    <a href="<%=path %>/qian/buynews.jsp" class="dropdown-toggle" >健康百科</a>
                            <b class="caret-out"></b>                           
                        </li>
                        <li>
                            <a href="<%=path %>/qian/contact.jsp" class="dropdown-toggle" >联系我们</a>
                            <b class="caret-out"></b>                        
                        </li>
                                                        
                    </ul>
                    <div class="search-open search-open-inner">
                        <div class="input-append">
                            <form />
                                <input type="text" class="span3" placeholder="Search" />
                                <button type="submit" class="btn-u">Search</button>
                            </form>
                        </div>
                    </div>
                </div><!-- /nav-collapse -->                                
            </div><!-- /navbar-inner -->
        </div><!-- /navbar -->                          
    </div><!-- /container -->               
</div>
