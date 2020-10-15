<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
            <h3>预约体检</h3> 
            <h5>1.请填写体检时间<br>
            2.我们会及时和您确认信息<br>
           </h5>
            <input id="usid" type="hidden" value=${user.usid} />
            <div class="input-prepend">
                <span class="add-on"><i class="icon-calendar"></i></span>
                <input id="ortimes" class="input-xlarge" type="text" placeholder="预约时间" />
            </div>
            
             <div class="input-prepend">
                <span class="add-on"><i class="icon-user"></i></span>
                <input  id="orname" class="input-xlarge" type="text" placeholder="儿童姓名" />
            </div>
            
             <div class="input-prepend">
                <span class="add-on"><i class="icon-calendar"></i></span>
                <input id="orbirth" class="input-xlarge" type="text" placeholder="出生日期" />
            </div>
            
             <div class="input-prepend">
                <span class="add-on"><i class="icon-phone-sign"></i></span>
                <input  id="orphone" class="input-xlarge" type="text" placeholder="联系电话" />
            </div>
            <div class="input-prepend">
                <span class="add-on"><i class="icon-phone-sign"></i></span>
                <input  id="orstate" class="input-xlarge" type="text" placeholder="儿童状态" />
            </div>
            <div class="controls form-inline"> 
            	<input type="button" id="yy" class="btn-u pull-right" value="预约" />
                
            </div>
            
            <br>
            
           
            
        </form>
    </div><!--/row-fluid-->
</div>
<script type="text/javascript">

    var picker = new Pikaday(
    {
        field: document.getElementById('ortimes'),
        firstDay: 1,
        minDate: new Date('2010-01-01'),
        maxDate: new Date('2020-12-31'),
        yearRange: [2000,2020]
    });
	
    var picker = new Pikaday(
    	    {
    	        field: document.getElementById('orbirth'),
    	        firstDay: 1,
    	        minDate: new Date('2010-01-01'),
    	        maxDate: new Date('2020-12-31'),
    	        yearRange: [2000,2020]
    	    });
    

			$("#yy").click(function(event){
    			//判定登录

        		var goid = ${param.goid};

    			if (${user == null}) {
    				alert("请登录");
    				window.location.href = "<%=basePath%>qian/login.jsp";

    			}else{
    			    var usid = $("#usid").val();
    			    var ortimes = $("#ortimes").val();
    			    var orname = $("#orname").val();
    			    var orbirth = $("#orbirth").val();
    			    var orphone = $("#orphone").val();
    			    var orstate = $("#orstate").val();
    			    console.log(orders);
    			$.post(
    					"<%=basePath%>orders/add",
    					{
    						"usid": usid, "goid" : goid, "ortimes" : ortimes,
       					 	"orname" : orname, "orbirth" : orbirth, 
    					 	"orphone" : orphone, "orstate" : orstate},
    					function(data) {
    						if(data > 0) {
    							if (data >0) {
    								alert("预约成功");
    								location.href="index.jsp";
    							} else {
    								alert("失败");
    								location.reload();
    							}		
    						}
    					}
    			);	
    		}
            });
    	
    	
    		
   
</script>
<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>	
