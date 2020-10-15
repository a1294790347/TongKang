<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<script src="../js/jquery-1.8.2.min.js"></script>
<!DOCTYPE html>
<html>
	<body>

		<jsp:include page="head.jsp"></jsp:include>
		<br>
		<br>

		<div class="container portfolio-item">
			<img src="../img/zijianbg.jpg"
				style="width: 100%;" />
			<div class="row-fluid margin-bottom-20">
				<div class="span8">
					<div class="headline">
						<h3>
							常见病情自测
						</h3>
					</div>
					<ul class="nav nav-tabs tabs">
						<li class="active">
							<a href="#1" data-toggle="tab">注意力缺失</a>
						</li>
						<li>
							<a href="#2" data-toggle="tab">支气管哮喘</a>
						</li>
						<li>
							<a href="#3" data-toggle="tab">感冒</a>
						</li>
						<li>
							<a href="#4" data-toggle="tab">支气管肺炎</a>
						</li>
					</ul>
					<!--/tabs-->

					<div class="tab-content" style="font-size: 15px;">


						<div class="tab-pane active"  id="1">
							<form action="<%=path %>/qian/selfExamsEnds.jsp">

								<br>
								性别：<input type="radio" />男孩：<input type="radio" />女孩<br>
								<br>

								年龄：<input class="input-xlarge" type="text"  /><br><br>

								症状表现 ：<br><br>

								<c:forEach items="${zndcs}" var="zd">
									<c:if test="${zd.qutitle=='注意力缺失'}">
										<input type="checkbox" value="${zd.quscore}" name="zhengzhuang"> ${zd.quchoose}<br></br>
									</c:if>
								</c:forEach>

								<input class="btn-u " type="submit" id="testbtn"/>

								 
							</form>
						</div>
						<div class="tab-pane" id="2">
							<form  action="<%=path %>/qian/selfExamsEnds.jsp">

								<br>
								性别：<input type="radio" />男孩：<input type="radio" />女孩<br>
								<br>

								年龄：<input class="input-xlarge" type="text"  /><br><br>

								 症状表现 ：<br><br>

								<c:forEach items="${zndcs}" var="zd">
									<c:if test="${zd.qutitle=='支气管哮喘'}">
										<input type="checkbox" value="${zd.quscore}" name="zhengzhuang"> ${zd.quchoose}<br></br>
									</c:if>
								</c:forEach>
		<br><br>
								<input class="btn-u " type="submit" id="testbtn"/>

								 
							</form>
						</div>
						<div class="tab-pane" id="3">
							<form  action="<%=path %>/qian/selfExamsEnds.jsp">

								<br>
								性别：<input type="radio" />男孩：<input type="radio" />女孩<br>
								<br>

								年龄：<input class="input-xlarge" type="text"  /><br><br>

								 症状表现 ：<br><br>

								<c:forEach items="${zndcs}" var="zd">
									<c:if test="${zd.qutitle=='感冒'}">
										<input type="checkbox" value="${zd.quscore}" name="zhengzhuang"> ${zd.quchoose}<br></br>
									</c:if>
								</c:forEach>

		<br><br>
								<input class="btn-u " type="submit" id="testbtn"/>

								 
							</form>
						</div>
						<div class="tab-pane" id="4">
							<form  action="<%=path %>/qian/selfExamsEnds.jsp">

								<br>
								性别：<input type="radio" />男孩：<input type="radio" />女孩<br>
								<br>

								年龄：<input class="input-xlarge" type="text"  /><br><br>

								 症状表现 ：<br><br>

								<c:forEach items="${zndcs}" var="zd">
									<c:if test="${zd.qutitle=='支气管肺炎'}">
										<input type="checkbox" value="${zd.quscore}" name="zhengzhuang"> ${zd.quchoose}<br></br>
									</c:if>
								</c:forEach>
		<br><br>
								<input class="btn-u " type="submit" id="testbtn"/>



								 
							</form>
						</div>
					</div>
					<!--/tab-content-->
				</div>
				<!--/span8-->

				<!-- Testimonials -->
				<div class="span4">
					<div class="headline">
						<h3>
							咨询专家
						</h3>
					</div>
					<div id="testimonal_carousel" class="carousel slide">
							<img src="../img/doctors.jpg">
							<p>登陆后即可免费享受特权---230位知名儿科大夫为您答疑！</p>
							<br><br>
						<form>
									<center>基本情况</center>
								<br>
								性别：<input type="radio" />男孩：<input type="radio" />女孩<br>
								<br>
								年龄：<input class="input-xlarge" type="text"  /><br><br>
								
								症状：<textarea cols="45" rows="13"></textarea><br><br> 
								
								<button class="btn-u " type="submit">
									提交
								</button>
						</form>
					</div>
				</div>

			</div>

		</div>

		<jsp:include page="foot.jsp"></jsp:include>
	</body>
<script>
	$("#testbtn").click(function (event) {
		event.preventDefault();
		var quscore=$("input[name=zhengzhuang]:checked");
		var countScore = 0;
		quscore.each(function () {
			var score = $(this).val();
			countScore += parseInt(score);
		})
		$.post(
				'<%=basePath %>/exams/countScore',
				{"countScore":countScore},
				function () {
					window.location.href="<%=basePath %>qian/selfExamsEnds.jsp";
				}
		)

	})
</script>
</html>
