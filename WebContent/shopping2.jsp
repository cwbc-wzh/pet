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
         <li><a href="wuse.jsp"">宠物屋舍</a></li> 
             <li><a href="my.jsp">磨牙玩具</a></li> 
             <li><a href="wan.jsp">宠物碗</a></li>  
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
	      <div class="s1-1"><img src="images/jinmao/jm1.jpg"/></div>  
	        <div class="s1-2">
	        <div class="s1a">金毛犬Lord tweedmouth </div>
	        <div class="s1b">大型犬&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;寿命：12～20年</div>
	        <p>金毛寻回犬是最常见的家犬之一，它很容易养，有耐心并且对主人要求不多，只要定期运动，食物和兽医体检就可以了。它属于匀称、有力、活泼的一个犬种，特征是稳固、身体各部位配合合理，腿既不太长也不笨拙，表情友善，个性热情、机警、自信而且不怕生，性格讨人喜欢。金毛犬最早是一种寻回猎犬，现在大多作为导盲犬与宠物狗。
</p>
	        <a href="jinmao.jsp">更多</a>
	        </div>
	    </div>
		 
       <div class="s2">
	   <div class="s2-1"><img src="images/lm/lm1.jpg"/></div>
	        <div class="s2-2">
	            <div class="s1a">俄罗斯蓝猫 Russian Blue</div>
	        <div class="s1b">长毛猫&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;寿命：12～15年</div>
	        <p>这种猫确实原产于俄罗斯，因为已在俄罗斯寒带地区发现了同种的猫。俄罗斯蓝猫体型细长，大而直立的尖耳朵，脚掌小而圆，走路像是用脚尖在走。身上披着银蓝色光泽的短被毛，配上修长苗条的体型和轻盈的步态，尽显一派猫中的贵族风度。</p>
	        <a href="lm.jsp">更多</a>
	            
	        </div>
	    </div>
	    
	    <div class="s3">
	    <div class="s3-1"> <img src="images/ze/ze1.jpg"/></div>
	        <div class="s3-2">
	            <div class="s1a">英格兰折耳猫ScottishFold </div>
	        <div class="s1b">折耳猫&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;寿命：15～20年</div>
	        <p>奶白色白色这种色泽的摺耳猫，不同毛色之间的分界分明，尾巴的毛犹如尘扫一样且具有弹性。它们性格安静，对人很友善。苏格兰摺耳猫是外表十分美丽和可爱的猫种，身体、头部和四肢都圆乎乎的，尾粗短，耳塌紧贴头盖，眼大而圆。苏格兰折耳猫的仔猫大约在出生2周后耳朵才开始往下折。
苏格兰摺耳猫性格安静，聪明和容忍，个性温顺，往往能和包括狗在内的其它宠物和睦相处。
</p>
	        <a href="ze.jsp">更多</a>
	        </div>
	    </div>
		  
		  <div class="s4">
	        <div class="s4-1"> <img src="images/cq/cq1.jpg"/></div>  
	        <div class="s2-2">
	            <div class="s1a">柴犬 </div>
	        <div class="s1b">中型犬&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;寿命：13～20年</div>
	        <p>柴犬是体型中等并且又最古老的犬。柴犬能够应付陡峭的丘陵和山脉的斜坡，拥有灵敏的感官，使得柴犬屡次成为上乘的狩猎犬。柴犬性格活泼、好动。对自己喜欢的玩具、会一天到晚的把玩。其对外有极强警惕性，能为户主看家护院。其特别是对大型同类，并且不服输。草丛中的耗子、鸟都会是它的猎物及玩具。</p>
	        <a href="caiquan.jsp">更多</a>
	        </div>
	    </div>
		
		 </div>
	
	<!-- 分页需写样式 -->
	<div class="page">
	<ul>
	<li><a href='shopping1.jsp'>1</a></li>
	<li><a href='shopping2.jsp'>2</a></li>
	<li><a href='shopping3.jsp'>3</a></li>
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