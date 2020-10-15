<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

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
						<h4 class="color-green"> 症状判断</h4>
				<c:if test="${countScore<40}">
					<h5>正常</h5>
				</c:if>
					<c:if test="${countScore >= 40}">
						<h5>很可能患有多动症</h5>

						<h4 class="color-green"> 就症建议</h4>

						<h5>建议带着孩子到医院进行全面的检查，以便确诊是否为多动症</h5>
					</c:if>

					<!--/tab-content-->
				</div>
				<!--/span8-->

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
</html>
