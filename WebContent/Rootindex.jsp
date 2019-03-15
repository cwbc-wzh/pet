<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Rootindex.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link type="text/css" rel="stylesheet" href="css/rootstyle.css" />
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
  </head>
  
  <body>
   <div class="top"></div>
<div id="header">
	<div class="logo">宠物之家后台管理系统</div>
	<div class="navigation">
		<ul>
		 	<li>欢迎您！</li>
			<li><a href="">111</a></li>
			<li><a href="">修改密码</a></li>
			<li><a href="">设置</a></li>
			<li><a href="Rootlogin.jsp">退出</a></li>
		</ul>
	</div>
</div>
<div id="content">
	<div class="left_menu">
				<ul id="nav_dot">
      <li>
          <h4 class="M1"><span></span>宠物管理</h4>
          <div class="list-item none">
            <a href=''>增加宠物</a>
            <a href=''>宠物下架</a>
            <a href=''>修改信息</a>
          </div>
        </li>
        <li>
          <h4 class="M2"><span></span>美容管理</h4>
          <div class="list-item none">
            <a href=''>预约审核</a>
            <a href='dingdan.jsp'>查看历史</a>
                
           </div>
        </li>
        <li>
          <h4 class="M3"><span></span>宠物用品</h4>
          <div class="list-item none">
            <a href=''>增加商品</a>
            <a href=''>查看全部商品</a>
            <a href=''>删除商品</a>
            <a href=''>更新商品</a>  
          </div>
        </li>
				<li>
          <h4 class="M4"><span></span>诊疗管理</h4>
          <div class="list-item none">
            <a href=''>诊疗预约</a>
            <a href=''>查看历史</a>
          </div>
        </li>
				<li>
          <h4 class="M5"><span></span>员工管理</h4>
          <div class="list-item none">
            <a href=''>增加员工</a>
            <a href=''>删除员工</a>
            <a href=''>修改信息</a>
          </div>
        </li>
				<li>
          <h4  class="M6"><span></span>卖家秀</h4>
          <div class="list-item none">
            <a href=''>信息下架</a>
            <a href=''>更新页面</a>
         
          </div>
        </li>
				<li>
          <h4  class="M7"><span></span>统计信息</h4>
          <div class="list-item none">
            <a href=''>统计病例信息</a>
          </div>
        </li>
  </ul>
		</div>
		<div class="m-right">
			<div class="right-nav">
					<ul>
							<li><img src="images/home.png"></li>
								<li style="margin-left:25px;">您当前的位置：</li>
								<li><a href="#">系统公告</a></li>
								<li>></li>
								<li><a href="#">最新公告</a></li>
						</ul>
			</div>
			<div class="main">
				
			</div>
		</div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2016南京晓庄学院</p></div>
<script>navList(12);</script>
  </body>
</html>
