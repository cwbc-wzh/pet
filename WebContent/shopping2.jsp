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
 <span><a href="Pet">��Ϊ��ҳ&nbsp;&nbsp;&nbsp;</a></span> 
   <span><a href="">�ղر�վ</a></span>
   </div>
   <div class="head-lef">
  <c:choose>
   	<c:when test="${sessionScope.username } == null">
   		<span class="header"><a href="userlogin.jsp">��¼&nbsp;&nbsp;&nbsp;</a></span> 
   		<span><a href="Register.jsp">ע��</a></span>
   	</c:when>
   	<c:otherwise>
   		<span>Welcome!&nbsp;&nbsp;&nbsp;${sessionScope.username }</span>	
   	</c:otherwise>
   </c:choose>
   </div>
    
     <div class="header-Con"><img src="images/logo.jpg" alt="" class="logo"></div>
    <div class="word">��Ʒ����ѡ������</div>
   </div>
   <div class="search">
  <div class="inp"> <input type="text"></div>
<div class="sousuo"><input type="submit" class="searchbutton" value="����"></div> 
   </div>
 <div class="gouwuche">
  <div><img src="images/gouwuche.jpg" class="gowuim"></div>
  <div class="gowwuword"><a href="queryCart">���ﳵ</a></div>
  <div ><img src="images/j.jpg" class="jiangim"></div>
  <div class="jiangword">Ʒ��</div>
  </div>
  
  <div class="nave">
     <ul id="nav">
      <li id="show"><a href="Pet">������Ʒ</a>
           <ul>
         <li><a href="wuse.jsp"">��������</a></li> 
             <li><a href="my.jsp">ĥ�����</a></li> 
             <li><a href="wan.jsp">������</a></li>  
            </ul></li>
            <li><a href="shopping1.jsp">����ԤԼ</a>
           <ul>
         <li><a href="#">����ԤԼ</a></li> 
             <li><a href="#">����ԤԼ</a></li> 
            </ul></li>  
        <li><a href="test.jsp">����</a>
      </li>
           <li><a href="">�û�����</a>
              <ul>
         <li><a href="#">������</a></li> 
             <li><a href="#">���԰�</a></li> 
            </ul></li>
            <li><a href="">��������</a>
               <ul>
         <li><a href="#">�̵���</a></li> 
            </ul></li>
           
    </ul>
</div>
<div class="shangp">
     <span ><img src="images/dao.jpg" class="dao"></span>
      <span class="tiao">��ѡ����</span>
  </div> 
  
<div class="shangpxiala">
    
 <div class="mao">
    <span class="mengmao"><a href="">��è</a></span>
    <span class="memgmao1"><a href="buou1.jsp">��żèRagdoll</a></span> 
    <span class="memgmao2"><a href="lm.jsp">����˹��èRussian Blue</a></span> 
    <span class="memgmao3"><a href="ze.jsp">Ӣ�����۶�è:Scottsish Fold|Snooks</a></span>  
    <span class="memgmao4"><a href="">�����è munchkin</a></span>  
    <span class="memgmao5"><a href="bsm.jsp">��˹è persian cat</a></span> 
    <span class="memgmao6"><a href="meiduan.jsp">������ëèAmericanShorthair</a></span> 
 </div>
      
 <div class="gou">
    <span class="menggou"><a href="">�ȹ�</a></span>
    <span class="menggou1"><a href="hsq.jsp">��ʿ��Siberian Husky</a></span> 
    <span class="menggou2"><a href="alasijia.jsp">����˹��Alaskan Husky </a></span> 
    <span class="menggou3"><a href="jinmao.jsp">��ëȮGolden Retriever </a></span>  
    <span class="menggou4"><a href="caiquan.jsp">��ȮShiba Inu</a></span>  
    <span class="menggou5"><a href="guibin.jsp">̩�� Teddy Dog</a></span> 
    <span class="menggou6"><a href="bomei.jsp">����ȮPomeranian </a></span> 
 </div> 
</div>
   <div class="focus">
	<div class="images">
    	<div class="item"><img  src="images/bg1.jpg" class="img"/></div>
    	<div class="item"><img src="images/bg22.jpg" class="img"/></div>
    	<div class="item"><img src="images/bg3.jpg" class="img"/></div>
    </div>
    <div class="title">
    	<p>�����ĶԴ�ÿһ���������ĳ���</p>
        <p>��������ܳ������������ܶ�</p>
        <p>��������˵���������ǵ�����</p>
    </div>
    <div class="control">
    	<span>1</span>
        <span>2</span>
        <span>3</span>
    </div>
</div>
<!-- ȫ����Ʒ -->
<div class="shp">
 <div class="shpword">��Ʒչʾ</div>   
</div>
<div class="bar"><img src="images/bar.jpg" ></div>
<div class="shopping">
	    <div class="s1">
	      <div class="s1-1"><img src="images/jinmao/jm1.jpg"/></div>  
	        <div class="s1-2">
	        <div class="s1a">��ëȮLord tweedmouth </div>
	        <div class="s1b">����Ȯ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������12��20��</div>
	        <p>��ëѰ��Ȯ������ļ�Ȯ֮һ�������������������Ĳ��Ҷ�����Ҫ�󲻶ֻ࣬Ҫ�����˶���ʳ�����ҽ���Ϳ����ˡ��������ȳơ����������õ�һ��Ȯ�֣��������ȹ̡��������λ��Ϻ����ȼȲ�̫��Ҳ����׾���������ƣ��������顢���������Ŷ��Ҳ��������Ը�����ϲ������ëȮ������һ��Ѱ����Ȯ�����ڴ����Ϊ��äȮ����ﹷ��
</p>
	        <a href="jinmao.jsp">����</a>
	        </div>
	    </div>
		 
       <div class="s2">
	   <div class="s2-1"><img src="images/lm/lm1.jpg"/></div>
	        <div class="s2-2">
	            <div class="s1a">����˹��è Russian Blue</div>
	        <div class="s1b">��ëè&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������12��15��</div>
	        <p>����èȷʵԭ���ڶ���˹����Ϊ���ڶ���˹��������������ͬ�ֵ�è������˹��è����ϸ�������ֱ���ļ���䣬����С��Բ����·�����ýż����ߡ�������������ɫ����Ķ̱�ë�������޳����������ͺ���ӯ�Ĳ�̬������һ��è�еĹ����ȡ�</p>
	        <a href="lm.jsp">����</a>
	            
	        </div>
	    </div>
	    
	    <div class="s3">
	    <div class="s3-1"> <img src="images/ze/ze1.jpg"/></div>
	        <div class="s3-2">
	            <div class="s1a">Ӣ�����۶�èScottishFold </div>
	        <div class="s1b">�۶�è&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������15��20��</div>
	        <p>�̰�ɫ��ɫ����ɫ���ߡ��è����ͬëɫ֮��ķֽ������β�͵�ë���糾ɨһ���Ҿ��е��ԡ������Ը񰲾������˺����ơ��ո���ߡ��è�����ʮ�������Ϳɰ���è�֣����塢ͷ������֫��Բ�����ģ�β�ֶ̣���������ͷ�ǣ��۴��Բ���ո����۶�è����è��Լ�ڳ���2�ܺ����ſ�ʼ�����ۡ�
�ո���ߡ��è�Ը񰲾������������̣�������˳�������ܺͰ��������ڵ�������������ദ��
</p>
	        <a href="ze.jsp">����</a>
	        </div>
	    </div>
		  
		  <div class="s4">
	        <div class="s4-1"> <img src="images/cq/cq1.jpg"/></div>  
	        <div class="s2-2">
	            <div class="s1a">��Ȯ </div>
	        <div class="s1b">����Ȯ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������13��20��</div>
	        <p>��Ȯ�������еȲ���������ϵ�Ȯ����Ȯ�ܹ�Ӧ�����͵������ɽ����б�£�ӵ�������ĸй٣�ʹ�ò�Ȯ�Ŵγ�Ϊ�ϳ˵�����Ȯ����Ȯ�Ը���á��ö������Լ�ϲ������ߡ���һ�쵽��İ��档������м�ǿ�����ԣ���Ϊ�������һ�Ժ�����ر��ǶԴ���ͬ�࣬���Ҳ����䡣�ݴ��еĺ��ӡ��񶼻����������Ｐ��ߡ�</p>
	        <a href="caiquan.jsp">����</a>
	        </div>
	    </div>
		
		 </div>
	
	<!-- ��ҳ��д��ʽ -->
	<div class="page">
	<ul>
	<li><a href='shopping1.jsp'>1</a></li>
	<li><a href='shopping2.jsp'>2</a></li>
	<li><a href='shopping3.jsp'>3</a></li>
	</ul>
	<div class="pages">����ҳ</div>
	</div>
	
<div class="center">
      <div class="centerword">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���ǵķ����������ģ������۳�����ʳס��ҽ�ƽ��б���</div>
      <div class="centerword">Our service is the heart, after the sale of basic necessities of life are pet medical insurance </div>
  </div>
<div class="footer">
   <div class="wen">���˽������Ϣ����������</div> 
   
   <div class="sos">
   <div class="sinp"><input type="text"></div> 
    <div class="sod"><input type="button" class="sub" value="����Ѱ��"></div>
   </div>
   
   <div class="guanjian">��˳Сè&nbsp;&nbsp;&nbsp;&nbsp;��Ц����&nbsp;&nbsp;&nbsp;&nbsp;���õ�è&nbsp;&nbsp;&nbsp;&nbsp;
   �����Ĺ�</div>
   
  <!-- <div class="sant">
      ��Ʒ����&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;��ʮСʱ���˻�&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;��ʮСʱ����
  </div>-->
  <div class="santu">
  <div class="santu1">
  <div class=""><img src="images/zhen.jpg" ></div>
  <div>��Ʒ����</div>
  </div>
  <div class="santu2">
  <div class=""><img src="images/zhen2.jpg" ></div>
  <div>30��������b���˻�</div>
  </div>
  <div class="santu3">
  <div class=""><img src="images/zhen3.jpg" ></div>
  <div>48Сʱ���緢��</div>
  </div>
  </div>
  
  
  <br>
</div> 
</body>
</html>