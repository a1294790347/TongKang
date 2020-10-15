<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>

<body>


<!--=== Copyright ===-->
<div class="copyright" style="background-color: #7fb80e">
	<div class="container">
		<div class="row-fluid">
			<div class="span8" >						
	            <p><b>沪ICP备14020180&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;增值电信业务经营许可证：沪B2-20160026 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;沪公网安备 31010702001120号</b></p>
			</div>
			 
		</div><!--/row-fluid-->
	</div><!--/container-->	
</div><!--/copyright-->	
<!--=== End Copyright ===-->

<script type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="../js/modernizr.custom.js"></script>
<script type="text/javascript" src="../plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="../plugins/flexslider/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="../plugins/back-to-top.js"></script>
<script type="text/javascript" src="../plugins/revolution_slider/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
<script type="text/javascript" src="../plugins/revolution_slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="../js/app.js"></script>
<script type="text/javascript" src="../js/pages/index.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		App.init();
		App.initSliders();
		Index.initRevolutionSlider();

	});
</script>
<!--[if lt IE 9]>
<script src="../js/respond.js"></script>
<![endif]-->
</body>
</html>	
