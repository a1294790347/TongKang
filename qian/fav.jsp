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
	 <!-- Search Result -->
   <div class="row-fluid">
    	
            <table class="table table-striped">
                   	 <thead>
                        <tr>
                            <th></th>
                            <th width="300">招聘职位</th>
                            <th>公司名称</th>
                            <th>薪资</th>
                            <th>工作地点</th>
                            <th>结算方式</th>
                            <th>发布时间</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><i class="icon-user"></i></td>
                            <td><a href="qiuzhixinxi.jsp">发单人员，60一天</a></td>
                            <td>济南有成教育</td>
                            <td>12元/小时</td>
                             <td>市中区</td>
                              <td>日结</td>
                             <td>2016-06-01</td>
                        </tr>
                      <tr>
                            <td><i class="icon-user"></i></td>
                            <td><a href="#">发单人员，60一天</a></td>
                            <td>济南有成教育</td>
                            <td>12元/小时</td>
                             <td>市中区</td>
                              <td>日结</td>
                             <td>2016-06-01</td>
                        </tr>
                        <tr>
                            <td><i class="icon-user"></i></td>
                            <td><a href="#">发单人员，60一天</a></td>
                            <td>济南有成教育</td>
                            <td>12元/小时</td>
                             <td>市中区</td>
                              <td>日结</td>
                             <td>2016-06-01</td>
                        </tr>
                        <tr>
                            <td><i class="icon-user"></i></td>
                            <td><a href="#">发单人员，60一天</a></td>
                            <td>济南有成教育</td>
                            <td>12元/小时</td>
                             <td>市中区</td>
                              <td>日结</td>
                             <td>2016-06-01</td>
                        </tr>
                        <tr>
                            <td><i class="icon-user"></i></td>
                            <td><a href="#">发单人员，60一天</a></td>
                            <td>济南有成教育</td>
                            <td>12元/小时</td>
                             <td>市中区</td>
                              <td>日结</td>
                             <td>2016-06-01</td>
                        </tr>
                        <tr>
                            <td><i class="icon-user"></i></td>
                            <td><a href="#">发单人员，60一天</a></td>
                            <td>济南有成教育</td>
                            <td>12元/小时</td>
                             <td>市中区</td>
                              <td>日结</td>
                             <td>2016-06-01</td>
                        </tr>
                        <tr>
                            <td><i class="icon-user"></i></td>
                            <td><a href="#">发单人员，60一天</a></td>
                            <td>济南有成教育</td>
                            <td>12元/小时</td>
                             <td>市中区</td>
                              <td>日结</td>
                             <td>2016-06-01</td>
                        </tr>
                        <tr>
                            <td><i class="icon-user"></i></td>
                            <td><a href="#">发单人员，60一天</a></td>
                            <td>济南有成教育</td>
                            <td>12元/小时</td>
                             <td>市中区</td>
                              <td>日结</td>
                             <td>2016-06-01</td>
                        </tr>
                        <tr>
                            <td><i class="icon-user"></i></td>
                            <td><a href="#">发单人员，60一天</a></td>
                            <td>济南有成教育</td>
                            <td>12元/小时</td>
                             <td>市中区</td>
                              <td>日结</td>
                             <td>2016-06-01</td>
                        </tr>
                    </tbody>
                </table>
           
       
    </div>

       <div class="pagination pagination-large pagination-centered">
                <ul>
                    <li class="disabled"><a href="#">Prev</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li class="active"><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">Next</a></li>
                </ul>
            </div>    
</div><!--/container-->		

<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>	
