<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Document</title>
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/shopping.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/xiala.js"></script> 
<script type="text/javascript" src="js/lunbo.js"></script>
</head>
<body>
 <div class="header">
 <div class="head-rgh">
 <span><a href="Pet">设为首页&nbsp;&nbsp;&nbsp;</a></span> 
   <span><a href="">收藏本站</a></span>
   </div>
   <div class="head-lef">
  <c:choose>
   	<c:when test="${sessionScope.username } == null">
   		<span class="header"><a href="userlogin.jsp">登录&nbsp;&nbsp;&nbsp;</a></span> 
   		<span><a href="Register.jsp">注册</a></span>
   	</c:when>
   	<c:otherwise>
   		<span>Welcome!&nbsp;&nbsp;&nbsp;${sessionScope.username }</span>	
   	</c:otherwise>
   </c:choose>
   </div>
    
     <div class="header-Con"><img src="images/logo.jpg" alt="" class="logo"></div>
    <div class="word">正品·优选·用心</div>
   </div>
   <div class="search">
  <div class="inp"> <input type="text"></div>
<div class="sousuo"><input type="submit" class="searchbutton" value="搜索"></div> 
   </div>
 <div class="gouwuche">
  <div><img src="images/gouwuche.jpg" class="gowuim"></div>
  <div class="gowwuword"><a href="queryCart">购物车</a></div>
  <div ><img src="images/j.jpg" class="jiangim"></div>
  <div class="jiangword">品质</div>
  </div>
  
  <div class="nave">
     <ul id="nav">
        <li id="show"><a href="Pet">宠物商品</a>
           <ul>
         <li><a href="wuse.jsp">宠物屋舍</a></li> 
             <li><a href="my.jsp">磨牙玩具</a></li> 
             <li><a href="wan.jspz">宠物碗</a></li>  
            </ul></li>
            <li><a href="shopping1.jsp">在线预约</a>
           <ul>
         <li><a href="#">美容预约</a></li> 
             <li><a href="#">诊疗预约</a></li> 
            </ul></li>  
        <li><a href="test.jsp">订单</a>
      </li>
           <li><a href="">用户心声</a>
              <ul>
         <li><a href="#">卖家秀</a></li> 
             <li><a href="#">留言板</a></li> 
            </ul></li>
            <li><a href="">关于我们</a>
               <ul>
         <li><a href="#">商店简介</a></li> 
            </ul></li>
           
    </ul>
</div>
<div class="shangp">
     <span ><img src="images/dao.jpg" class="dao"></span>
      <span class="tiao">挑选爱宠</span>
  </div> 
  
<div class="shangpxiala">
    
 <div class="mao">
    <span class="mengmao"><a href="">萌猫</a></span>
    <span class="memgmao1"><a href="buou1.jsp">布偶猫Ragdoll</a></span> 
    <span class="memgmao2"><a href="lm.jsp">俄罗斯蓝猫Russian Blue</a></span> 
    <span class="memgmao3"><a href="ze.jsp">英格兰折耳猫:Scottsish Fold|Snooks</a></span>  
    <span class="memgmao4"><a href="">曼赤肯猫 munchkin</a></span>  
    <span class="memgmao5"><a href="bsm.jsp">波斯猫 persian cat</a></span> 
    <span class="memgmao6"><a href="meiduan.jsp">美国短毛猫AmericanShorthair</a></span> 
 </div>
      
 <div class="gou">
    <span class="menggou"><a href="">萌狗</a></span>
    <span class="menggou1"><a href="hsq.jsp">哈士奇Siberian Husky</a></span> 
    <span class="menggou2"><a href="alasijia.jsp">阿拉斯加Alaskan Husky </a></span> 
    <span class="menggou3"><a href="jinmao.jsp">金毛犬Golden Retriever </a></span>  
    <span class="menggou4"><a href="caiquan.jsp">柴犬Shiba Inu</a></span>  
    <span class="menggou5"><a href="guibin.jsp">泰迪 Teddy Dog</a></span> 
    <span class="menggou6"><a href="bomei.jsp">博美犬Pomeranian </a></span> 
 </div> 
</div>
   <div class="focus">
	<div class="images">
    	<div class="item"><img  src="images/bg1.jpg" class="img"/></div>
    	<div class="item"><img src="images/bg22.jpg" class="img"/></div>
    	<div class="item"><img src="images/bg3.jpg" class="img"/></div>
    </div>
    <div class="title">
    	<p>请用心对待每一个你领养的宠物</p>
        <p>你的人生很长，它的人生很短</p>
        <p>对它们来说，你是它们的所有</p>
    </div>
    <div class="control">
    	<span>1</span>
        <span>2</span>
        <span>3</span>
    </div>
</div>
<!-- 全部商品 -->
<div class="shp">
 <div class="shpword">商品展示</div>   
</div>
<div class="bar"><img src="images/bar.jpg" ></div>
<div class="shopping">
	    <div class="s1">
	      <div class="s1-1"><img src="images/bm/bm1.jpg"/></div>  
	        <div class="s1-2">
	        <div class="s1a">博美犬 </div>
	        <div class="s1b">小型犬&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;寿命：12～20年</div>
	        <p>博美是一种紧凑、短背、活跃的玩赏犬，学名哈多利系博美犬（俗称英系博美犬），是德国狐狸犬的一种，原产德国。它拥有柔软、浓密的底毛和粗硬的皮毛。尾根位置很高，长有浓密饰毛的尾巴卷放在背上。它具有警惕的性格、聪明的表情、轻快的举止和好奇的天性。体型小巧可爱，适合当伴侣犬，白色和棕色的居多。德国狐狸犬，包括荷兰毛狮犬，大型狐狸犬，中型狐狸犬，小型狐狸犬和松鼠犬（也就是博美犬），同时也是很有竞争力的比赛犬。其毛色有白、偏黄奶油、花色、黑、红、棕等。

</p>
	        <a href="bomei.jsp">更多</a>
	        </div>
	    </div>
		 
       <div class="s2">
	   <div class="s2-1"><img src="images/hsq/hsq1.jpg"/></div>
	        <div class="s2-2">
	            <div class="s1a">西伯利亚雪橇犬（学名：Siberian husky）又叫二哈</div>
	        <div class="s1b">哈士奇&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;寿命：12～15年</div>
	        <p>西伯利亚雪撬犬是和狼的血统非常近的犬种，所以外形非常的像狼，有着比大多数犬种都要厚的毛发，毛发颜色大致分为黑色、灰色、棕色（浅棕色又被称为梦幻色）、纯白色（极少）四种，当然这些颜色通常都是夹杂着白色毛发同时存在。哈士奇眼睛有纯棕、纯蓝、和一只眼睛棕一只眼睛蓝（即阴阳眼）三种颜色。哈士奇的头版，俗称脸型，通常有十字脸型、桃脸型、三把火、地中海四种。
</p>
	        <a href="hsq.jsp">更多</a>
	            
	        </div>
	    </div>
	    
	    <div class="s3">
	    <div class="s3-1"> <img src="images/bsm/bsm4.jpg"/></div>
	        <div class="s3-2">
	            <div class="s1a">波斯猫</div>
	        <div class="s1b">波斯猫&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;寿命：15～20年</div>
	        <p>波斯猫是世界上最出名的品种了，其举止优雅，相貌迷人，从维多利亚时代起便受人欢迎，经繁殖培育，颜色品种越来越多。但与早期相比，外貌已发生了相当大的变化。长毛波斯猫脸更扁、更圆（俗称“京叭”脸），耳朵更小，被毛更加茂密。波斯猫是在16世纪左右，由喜马拉雅猫和安哥拉猫杂交，经过多年的提纯繁殖而培育出来的。波斯猫体形较大，被毛长而且厚密，头圆大，脸扁平，额宽耳小，圆眼塌鼻口吻短宽，躯体因毛长而感觉浑圆，四肢粗短柔软，尾蓬松粗大，给人一种雍容华贵的感觉。

</p>
	        <a href="bsm.jsp">更多</a>
	        </div>
	    </div>
		 
		
		 </div>
	
	<!-- 分页需写样式 -->
	<div class="page">
	<ul>
	<li><a href='shopping1.jsp'>1</a></li>
	<li><a href='shopping2.jsp'>2</a></li>
	<li><a href='shopping3.jsp'>3</a>
	</li>
	</ul>
	<div class="pages">共三页</div>
	</div>
	
<div class="center">
      <div class="centerword">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们的服务在于用心，宠物售出后衣食住行医疗皆有保障</div>
      <div class="centerword">Our service is the heart, after the sale of basic necessities of life are pet medical insurance </div>
  </div>
<div class="footer">
   <div class="wen">想了解更多信息，请点击搜索</div> 
   
   <div class="sos">
   <div class="sinp"><input type="text"></div> 
    <div class="sod"><input type="button" class="sub" value="点我寻找"></div>
   </div>
   
   <div class="guanjian">温顺小猫&nbsp;&nbsp;&nbsp;&nbsp;搞笑狗狗&nbsp;&nbsp;&nbsp;&nbsp;活泼的猫&nbsp;&nbsp;&nbsp;&nbsp;
   聪明的狗</div>
   
  <!-- <div class="sant">
      正品保障&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;三十小时包退换&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;四十小时发货
  </div>-->
  <div class="santu">
  <div class="santu1">
  <div class=""><img src="images/zhen.jpg" ></div>
  <div>正品保障</div>
  </div>
  <div class="santu2">
  <div class=""><img src="images/zhen2.jpg" ></div>
  <div>30天无理由b包退换</div>
  </div>
  <div class="santu3">
  <div class=""><img src="images/zhen3.jpg" ></div>
  <div>48小时闪电发货</div>
  </div>
  </div>
  
  
  <br>
</div> 
</body>
</html>