<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<style>
    	.h44{font-size:18px;line-height:60px;font-weight:bold;color:#fff;height:60px;text-center:center}

.tr001{width:65px;text-align: center; line-height: 3em; background: #1d953f; color: #fff; font-size: 1.1em; font-weight: bold}
.td01{width:65px;text-align: center; background: #1d953f; color: #fff; font-size: 1.1em; font-weight: bold}
.td02{text-align: center; background: #7dc6ed; color: #fff; font-size: 1.1em}
.td03{text-align: left; padding-bottom: 0.5em; padding-left: 0.5em; padding-right: 0.5em; background: #d7ebf8; color: #0074b3; font-size: 1.1em; padding-top: 0.5em}
.td04{text-align: left; padding-bottom: 0.5em; padding-left: 0.5em; padding-right: 0.5em; background: #d7ebf8; color: #0074b3; font-size: 1.1em; padding-top: 0.5em}
    	
    
    </style>
<body>
    
<jsp:include page="head.jsp"></jsp:include>
<br><br>

<div class="container portfolio-item"> 	
	<div class="row-fluid margin-bottom-20"> 
		<!-- Carousel -->
        <!--/span7-->
        <!-- //End Tabs and Carousel -->
         <div class="span7">
            <div id="myCarousel" class="carousel slide">
                <div class="carousel-inner">
                <c:forEach var="tcxq" items="${tjcxs}">
       		 	<c:if test="${tcxq.goid == param.goid}">
                    <div class="item active">
                        <img src="<%=path %>/${tcxq.gourl}" width="400" alt="" />
                        
                    </div>
                   
                </div>
                
            </div>
        </div>
        <div class="span5">
        <%
		Date d = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String now = df.format(d);
		%>
        
        
        	<h3>童乐产品${tcxq.goages}${tcxq.gotype}</h3>
            <ul style="list-style:none; margin-left: -1px; font-size: 18px;font-weight: bold" >
            	<li><i class="icon-user color-green"></i>年龄范围：${tcxq.goages}</li>
            	<li><i class="icon-home color-green"></i>套餐类别：${tcxq.gotype}</li>
            	<li><i class="icon-tags color-green"></i>原价：<s>${tcxq.goprice}</s></li>
            	<li><i class="icon-info-sign color-red"></i>活动价:${tcxq.gosell}</li> 
            	<li><i class="icon-calendar color-green"></i>更新时间：<%=now %></li>
            </ul>
        
            <p><a id="yy" class="btn-u btn-u-large" href="<%=path %>/qian/ordersAdd.jsp?goid=${tcxq.goid}&usid=${user.usid}">预约门诊</a></p>
            <p><a id="gm" class="btn-u btn-u-large" href="<%=path %>/qian/buy.jsp?goid=${tcxq.goid}&usid=${user.usid}">点击购买</a></p>
        </div>
       	</c:if>
        </c:forEach>  
    </div><!--/row-fluid-->

	<!-- Recent Works -->
   
  <div class="row-fluid">
            <blockquote>
                <h2 class="color-green">套餐包含：</h2>
                <p><span style="font-family: '宋体';font-size:16px; line-height: 30px;">
岗健康档案管理、体格发育测定及评估(6项)、儿内科检查、儿外科检查、眼保健、听力保健(耳声发射)、听力保健(耳镜检查)、口腔检查、神经心理发育测试（DDST）、生活护理的指导、良好生活习惯培养、健康评估（终检）...                      </span></blockquote>
        </div>
	<!-- //End Recent Works --> 
	
              <div class="row-fluid">
    	
             <table border="1" bordercolor="#0f0f0f" align="center">
    <!--title-->
    <tbody>
        <tr>
            <td width="65" class="tr001">编号</td>
            <td width="176" class="tr001">项目名称</td>
            <td width="262" class="tr001">说明</td>
            <td width="262" class="tr001">意义</td>
        </tr>
        <!--1-->
        <tr>
            <td   class="td01">1</td>
            <td  class="td02">健康档案管理</td>
            <td   class="td03">包括出生史(产时情况、出生体重、身长)、喂养等情况，以及健康体检报告的管理</td>
            <td   class="td04">掌握儿童的基本信息，围产期情况，出生时的情况，抚养情况及抚养措施等，便于评价和指导</td>
        </tr>
        <!--2-->
        <tr>
            <td class="td01">2</td>
            <td class="td02">体格发育测定及评估(6项)</td>
            <td class="td03">包括身长、体重、头围、胸围、顶臀长、皮下脂肪的测量</td>
            <td class="td03">根据年龄测体重、年龄测身高、身高测体重、顶臀长，体格发育是否正常，身材是否匀称</td>
        </tr>
        <!--3-->
        <tr>
            <td class="td01">3</td>
            <td class="td02">儿内科检查</td>
            <td class="td03">包括面色、皮肤、心、肺、腹部等检查</td>
            <td class="td03">通过物理检查排除内科疾病或发现内科疾病的征兆</td>
        </tr>
        <!--4-->
        <tr>
            <td class="td01">4</td>
            <td class="td02">儿外科检查</td>
            <td class="td03">包括颈部、四肢各关节、骨骼、外阴生殖器、淋巴结等检查。</td>
            <td class="td03">通过触诊及物理检查了解外科系统的基本情况</td>
        </tr>
        <!--5-->
        <tr>
            <td class="td01">5</td>
            <td class="td02">尿常规检查</td>
            <td class="td03">包括比重、PH、白细胞、红细胞、蛋白质、葡萄糖、酮体等，了解有无尿路感染</td>
            <td class="td03">发现异常及时诊治</td>
        </tr>
        <!--6-->
        <tr>
            <td class="td01">6</td>
            <td class="td02">眼保健(WelchAllyn屈光检测)</td>
            <td class="td03">进行屈光验光，建立屈光档案</td>
            <td class="td03">通过定期屈光检查，观察屈光变化，了解孩子有否近视、远视、散光等，推测孩子有否发生近视可能</td>
        </tr>
        <!--7-->
        <tr>
            <td class="td01">7</td>
            <td class="td02">听力保健(声阻抗)</td>
            <td class="td03">声阻抗仪器测定</td>
            <td class="td03">筛查鼓室、外耳道容积、声发射、耳咽管功能，主要反映中耳的情况</td>
        </tr>
        <!--8-->
        <tr>
            <td class="td01">8</td>
            <td class="td02">听力保健(耳镜检查)</td>
            <td class="td03">耳镜检查</td>
            <td class="td03">检查外耳道的情况</td>
        </tr>
        <!--9-->
        <tr>
            <td class="td01">9</td>
            <td class="td02">口腔检查</td>
            <td class="td03">包括口腔粘膜、舌系带、诞生牙、牙畸形形检查</td>
            <td class="td03">发现口腔的异常情况，如：舌系带是否正常、有无诞生牙及畸形</td>
        </tr>
        <!--10-->
        <tr>
            <td class="td01">10</td>
            <td class="td02">神经心理发育测试（DDST）</td>
            <td class="td03">测试孩子社会适应性、精细动作、语言及大运动四大能区的发展</td>
            <td class="td03">让家长了解孩子神经心理发育的水平，配合医生对发育偏离儿童进行干预</td>
        </tr>
        <!--11-->
        <tr>
            <td class="td01">11</td>
            <td class="td02">健康评估费</td>
            <td class="td03">汇总体格、心理发育等各项检查的情况，发现问题所在</td>
            <td class="td03">对宝宝该阶段生长发育做出全面的评估，对本次体检作出结论与建议，提出矫治意见或就医途径，并发出电子（网络）版文字报告</td>
        </tr>
        <!--12-->
        <tr>
            <td class="td01">12</td>
            <td class="td02">血液常规</td>
            <td class="td03">检测白细胞、红细胞、血红蛋白和血小板等相关含量和比例</td>
            <td class="td03">主要了解有无贫血及贫血的类型，是否患有细菌性感染还是病毒性感染。了解体内血小板数量</td>
        </tr>
        <!--13-->
        <tr>
            <td class="td01">13</td>
            <td class="td02">微量元素检查</td>
            <td class="td03">利用原子吸收法对体内的微量元素进行检测（镁、锌、铜、铁和钙、血镉和铅）进行分析</td>
            <td class="td03">检查微量元素和钙，某些有害元素是否超标所致的相关疾病提供诊治参考的依据</td>
        </tr>
    </tbody>
</table>
           
       
    </div>   
</div>
	<br><br>
<jsp:include page="foot.jsp"></jsp:include>
</body>

</html>	
