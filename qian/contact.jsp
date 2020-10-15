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
	<div class="row-fluid">
		<div class="span9">
            <div class="headline"><h3>联系我们</h3></div>
            <p>您有任何投诉或者建议，请发信息给我们，我们将定期慎重查阅。</p><br />
			<form />
                <label>姓名</label>
                <input type="text" class="span7 border-radius-none" />
                <label>邮箱 <span class="color-red">*</span></label>
                <input type="text" class="span7 border-radius-none" />
                <label>内容</label>
                <textarea rows="8" class="span10"></textarea>
                <p><button id="sub" type="submit" class="btn-u">提交</button></p>
            </form>
        </div><!--/span9-->
        
		<div class="span3">
        	<!-- Contacts -->
            <div class="headline"><h3>联系我们</h3></div>
            <ul class="unstyled who margin-bottom-20">
                <li><a href="#"><i class="icon-home"></i>浙江守护大道22号 </a></li>
                <li><a href="#"><i class="icon-envelope-alt"></i>fangfangs@163.com</a></li>
                <li><a href="#"><i class="icon-phone-sign"></i>138 5286 1971</a></li>
                <li><a href="#"><i class="icon-globe"></i>http://www.aifang.com</a></li>
            </ul>

        	<!-- Business Hours -->
            <div class="headline"><h3>业务受理时间</h3></div>
            <ul class="unstyled">
            	<li><strong>周一到周五:</strong> 上午10时 -- 晚上20时</li>
            	<li><strong>周六:</strong> 上午11时 -- 下午15时</li>
            	<li><strong>周日:</strong> </li>
            </ul>

        	 
        </div><!--/span3-->
    </div><!--/row-fluid--></div>
<jsp:include page="foot.jsp"></jsp:include>
</body>
<script type="text/javascript">
    $("#sub").click(function (event) {
        event.preventDefault();
        alert("提交建议成功");
        location.reload();
    });
</script>
</html>	
 