<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
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
          <h4 class="M1"><span></span>系统公告</h4>
          <div class="list-item none">
            <a href=''>发布公告</a>
            <a href=''>删除公告</a>
            <a href=''>更新公告</a>
            <a href=''>查看公告</a>  
          </div>
        </li>
        <li>
          <h4 class="M2"><span></span>订单处理</h4>
          <div class="list-item none">
            <a href=''>增加订单</a>
            <a href='dingdan.jsp'>查看订单</a>
            <a href=''>删除订单</a>
            <a href=''>更新订单</a>
                
           </div>
        </li>
        <li>
          <h4 class="M3"><span></span>商品管理</h4>
          <div class="list-item none">
            <a href=''>增加商品</a>
            <a href=''>查看全部商品</a>
            <a href=''>删除商品</a>
            <a href=''>更新商品</a>  
          </div>
        </li>
				<li>
          <h4 class="M4"><span></span>网站设计</h4>
          <div class="list-item none">
            <a href=''>logo设计</a>
            <a href=''>轮播设计</a>
            <a href=''>页面统一设计</a>
          </div>
        </li>
				<li>
          <h4 class="M5"><span></span>用户管理</h4>
          <div class="list-item none">
            <a href=''>增加用户</a>
            <a href=''>删除用户</a>
            <a href=''>更新用户</a>
            <a href=''>cha'k用户</a>
          </div>
        </li>
				<li>
          <h4  class="M6"><span></span>数据统计</h4>
          <div class="list-item none">
            <a href=''>数据统计1</a>
            <a href=''>数据统计2</a>
            <a href=''>数据统计3</a>
          </div>
        </li>
				<li>
          <h4  class="M7"><span></span>奖励管理</h4>
          <div class="list-item none">
            <a href=''>奖励管理1</a>
            <a href=''>奖励管理2</a>
            <a href=''>奖励管理3</a>
          </div>
        </li>
				<li>
          <h4   class="M8"><span></span>字典维护</h4>
          <div class="list-item none">
            <a href=''>字典维护1</a>
            <a href=''>字典维护2</a>
            <a href=''>字典维护3</a>
						<a href=''>字典维护4</a>
            <a href=''>字典维护5</a>
            <a href=''>字典维护6</a>
						<a href=''>字典维护7</a>
            <a href=''>字典维护8</a>
            <a href=''>字典维护9</a>
						<a href=''>字典维护4</a>
            <a href=''>字典维护5</a>
            <a href=''>字典维护6</a>
						<a href=''>字典维护7</a>
            <a href=''>字典维护8</a>
            <a href=''>字典维护9</a>
          </div>
        </li>
				<li>
          <h4  class="M9"><span></span>内容管理</h4>
          <div class="list-item none">
            <a href=''>内容管理1</a>
            <a href=''>内容管理2</a>
            <a href=''>内容管理3</a>
          </div>
        </li>
				<li>
          <h4   class="M10"><span></span>系统管理</h4>
          <div class="list-item none">
            <a href=''>系统维护</a>
            <a href=''>系统管理2</a>
            <a href=''>系统管理3</a>
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
			<div class="word"><p>订单状态如下所示：</p></div>
			<div class="dadi">
		<c:forEach var="a" items="${sessionScope.allinfo}">
                   <div class="list">
                	<div class="num">订单：${a.o_id}</div> 	     			
					<div>${a.p_kid}</div> 	
					<div>${a.p_name}</div> 
					<div>${a.o_name}</div> 
					<div>${a.o_phone}</div> 
					<div>${a.o_price}</div> 
					<div>${a.o_number}</div> 
					<div>${a.o_datetime}</div> 
					<div>${a.o_address}</div> 
					</div>
</c:forEach>
</div>
		
			</div>
		</div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2016南京晓庄学院</p></div>
<script>navList(12);</script>
  </body>
</html>
