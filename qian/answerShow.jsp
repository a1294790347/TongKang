<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<body>
<script type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
<jsp:include page="head.jsp"></jsp:include>
<br><br>
 <div class="container">		
    
    <!-- Search Result -->
   <div class="row-fluid">
    	
            <table class="table table-striped">
                   	 <thead>
                        <tr>
                            <th></th>
                            <th></th>
                            <th>症状</th>
                            <th>性别</th>
                            <th>年龄</th> 
                            <th>时间</th>
                            <th>回复内容</th>
                            <th>状态</th>
                            <th>咨询医师</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="zxjl" items="${zxjls}">
                            <c:if test="${zxjl.usid == user.usid}">
                        <tr>
                        	<td><input type="hidden" value="${zxjl.asid}" id="asid" /> </td>
                            <td><i class="icon-user"></i></td>
                            <td><a href="#">${zxjl.astitle}</a></td>
                            <td>${zxjl.assex}</td>
                             <td>${zxjl.asage}</td>
                              <td>${zxjl.astimes}</td>
                             <td><scan id="asanswer">${zxjl.asanswer}</scan></td>
                             <td><scan id="hfzt"> ${zxjl.ashfzt} </scan></td>
                             <td><a id="djzx" href="tencent://message/?uin=1433374320" class="btn-u">咨询医师</a></td>
                             <td><%--<input type="button" class="btn-u" value="删除" id="delete" />--%>
                             <button class="btn-u" id="delete" value="${zxjl.asid}">delete</button></td>
                        </tr>
                            </c:if>
                        </c:forEach>
                    </tbody>
                </table>
           
       
    </div>


    <!-- //End Search Result -->
</div><!--/container-->
<script type="text/javascript">
    $(function(){
        var asid = $("#asid").val();
        $("#djzx").click(function(){

            $.get(
                "<%=basePath%>asks/update2",
                {"ashfzt" : "已回复",
                    "asanswer" : "请查看聊天记录",
                    "asid" : asid},
                function(data){
                    $("#asanswer").text("已回复");
                    $("#hfzt").text("请查看聊天记录");
                }
            );
        });
        $("#delete").click(function () {
            alert("是否确定要删除这条咨询记录");
            $.ajax({
                url : '<%=basePath%>asks/del',
                type: "post",
                data: {"asid":asid},
                dataType: "json",
                success: function(data){
                    if (data>0){
                        alert('删除结果-成功');
                        location.reload();
                    } else {
                        alert('删除结果-失败');
                    }
                }

            });
         });
    });
</script>
<jsp:include page="foot.jsp"></jsp:include>
</body>

</html>	
