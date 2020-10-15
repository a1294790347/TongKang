<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
    <style type="text/css">
        p{


        }
    </style>
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
        <h3>注册一个账户</h3>
        <div class="controls">
            <label>账号</label>
            <input type="text" class="span12" id="usname" name="usname"/><p id="name_error" style="color: red"></p>
            <label>邮箱 <span class="color-red">*</span></label>
            <input type="text" class="span12" id="email" name="usemail"/><p id="email_error" style="color: red"></p>
            <label>电话 <span class="color-red">*</span></label>
            <input type="text" class="span12" id="usphone" name="usphone"/><p id="usphone_error" style="color: red"></p>
            <label>身份 <span class="color-red">*</span></label>
            <select name="usden" id="usden">
                <option>用户</option>
                <option>管理员</option>
            </select>
        </div>
        <div class="controls">
            <div class="span6">
                <label>密码<span class="color-red">*</span></label>
                <input type="text" class="span12" id="uspass" name="uspass"/><p id="pass1_error" style="color: red"></p>
            </div>
            <div class="span6">
                <label>重复密码 <span class="color-red">*</span></label>
                <input type="text" class="span12" id="pass2" name="uspass2"/><p id="pass_error" style="color: red"></p>
            </div>
        </div>
        <div class="controls form-inline">
            <label class="checkbox"><input type="checkbox" />&nbsp; 我已经认真阅读 <a href="">网站使用说明</a></label>
            <button class="btn-u pull-right" type="submit" id="btn">注册</button>
        </div>
        <hr />
        <p>已经有账号点击 <a href="<%=path%>/qian/login.jsp" class="color-green">登录</a> 登录系统</p>
        </form>
    </div><!--/row-fluid-->
</div>
<jsp:include page="foot.jsp"></jsp:include>
</body>
<script type="text/javascript">
    $(function () {
        $("#btn").click(function (event) {
            event.preventDefault();
            var usname=$("#usname").val();
                if(usname==null||usname==""){
                    $("#name_error").text("请输入账号");
                    return;
                }
            $("#name_error").text("");
            $.get(
                "<%=basePath %>users/usbyname",
                {"usname":usname},
                function (data) {
                     if(data.exist){
                         $("#name_error").text("账号已被占用");
                         return;
                     }
                         $("#name_error").text("");
                    var yhyx=$("#email").val();
                    var reg = new RegExp("^[a-z0-9A-Z]+[- | a-z0-9A-Z . _]+@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-z]{2,}$");

                    if(!reg.test(yhyx)){
                        $("#email_error").text("邮箱格式错误");
                        return;
                    }
                        $("#email_error").text("");

                    var phone=$("#usphone").val();

                      var myreg=/^[1][3,4,5,7,8][0-9]{9}$/;
                    if (!myreg.test($("#usphone").val())) {
                        $("#usphone_error").text("请输入正确的手机号");
                        return;
                }
                $("#usphone_error").text("");


                    var uspass=$("#uspass").val();
                    if(uspass==null||uspass==""){
                        $("#pass1_error").text("请输入密码");
                        return;
                    }
                    $("#pass1_error").text("");
                    var pass2=$("#pass2").val();
                    if(uspass!=pass2){
                        $("#pass_error").text("密码不一致,请再次确认密码");
                        return;
                    }
                    $.post(
                        "<%=path %>/users/register",
                        $("#for1").serialize(),
                        function(data){
                            if(data.reg){
                                alert("注册成功");
                                location.href="/tongkang/qian/login.jsp";
                            }else{
                                alert("注册失败");
                                location.reload();
                            }

                        }
                    )
                }
            )
        })
    })
</script>
</html>
