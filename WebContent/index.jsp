<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Document</title>
<link rel="stylesheet" href="css/index.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/xiala.js"></script> 
<script type="text/javascript" src="js/lunbo.js"></script>
</head>
<body>
 <div class="header">
 <div class="head-rgh">
 <span><a href="Pet.do">��ҳ&nbsp;&nbsp;&nbsp;</a></span>
   <span><a href="logOut.do">ע��</a></span>
   </div>
   <div class="head-lef">
       <c:choose>
           <c:when test="${sessionScope.username==null}">
               <span class="header"><a href="userlogin.jsp">��¼&nbsp;&nbsp;&nbsp;</a></span>
               <span><a href="Register.jsp">ע��</a></span>
               <span class="header"><a href="Rootlogin.jsp">��̨��¼&nbsp;&nbsp;&nbsp;</a></span>
           </c:when>
           <c:otherwise>
               <span>Welcome!&nbsp;&nbsp;&nbsp;${sessionScope.username }</span>
           </c:otherwise>
       </c:choose>
   </div>
     <div class="header-Con"></div>
    <div class="word">��Ʒ����ѡ������</div>
   </div>
   <!--  <div class="search">
  <div class="inp"> <input type=text  placeholder="Search"></div>
<div class="sousuo"><input type="submit" class="searchbutton" value="����"></div> 
   </div>-->
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
         <li><a href="wuse.jsp">��������</a></li> 
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
      <span class="tiao"><a href="shopping1.jsp">��ѡ����</span>
  </div> 
  
<!--<div class="shangpxiala">
    
   <div class="mao">
    <span class="mengmao"><a href="">��è</a></span>
    <span class="memgmao1"><a href="buou1.jsp">��żèRagdoll</a></span> 
    <span class="memgmao2"><a href="lm.jsp">����˹��èRussian Blue</a></span> 
    <span class="memgmao3"><a href="ze.jsp">Ӣ�����۶�è:Scottsish Fold|Snooks</a></span>  
    <span class="memgmao4"><a href="">�����è munchkin</a></span>  
    <span class="memgmao5"><a href="">��˹è persian cat</a></span> 
    <span class="memgmao6"><a href="">������ëèAmericanShorthair</a></span> 
 </div>
      
 <div class="gou">
    <span class="menggou"><a href="">�ȹ�</a></span>
    <span class="menggou1"><a href="hsq.jsp">��ʿ��Siberian Husky</a></span> 
    <span class="menggou2"><a href="alasijia.jsp">����˹��Alaskan Husky </a></span> 
    <span class="menggou3"><a href="jinmao.jsp">��ëȮGolden Retriever </a></span>  
    <span class="menggou4"><a href="caiquan.jsp">��ȮShiba Inu</a></span>  
    <span class="menggou5"><a href="guibin.jsp">̩�� Teddy Dog</a></span> 
    <span class="menggou6"><a href="bomei.jsp">����ȮPomeranian </a></span> 
 </div> -->
<!-- </div> -->
   <div class="focus">
	<div class="images">
    	<div class="item"><img  src="images/bg1.jpg" class="img"/></div>
    	<div class="item"><img src="images/4.jpg" class="img"/></div>
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
<div class="remen">
    <div class="liwu"><img src="images/liwu.jpg" class="liwuimage"></div>
    <div class="liwuword">�����Ƽ�</div>
    <div><hr></div>  
</div>

 
<div style="width: auto;height: 60%;font-size: 16px; margin-top: 20px;">
   <div style=" font-family: ���Ĳ���;font-size: 18px;background-color: antiquewhite;margin-left: 2%;line-height: 39px;" ><span style="color: #ffc001">�ȹ���</span></div>
    <table width="100%" style="margin-left: 5%"  >
        <tr>
            <td style="width: 25%"></td>
            <td style="width: 25%"></td>
            <td style="width: 25%"></td>
            <td style="width: 25%"></td>
        </tr>
        <tr style="width: 100%">
            <c:forEach items="${sessionScope.dog.lists}" var="dog">
                <td>
                    <div style="width: 25%; display:inline;line-height: 100%;"><a href="loadAnimalJsp.do?p_kid=${dog.p_kid}">${dog.p_name} <br/>���ͣ�${dog.p_bodytype} <br/>���̣�${dog.p_purchase} <br/>�۸�${dog.p_price} <br/><img
                            type="image" src="${dog.p_path}" width="220" height="220" alt=""></a></div>
                </td>
            </c:forEach>
        </tr>
        <tr>
            <td colspan="4">
                <span>��${sessionScope.dog.currPage+1}/ ${sessionScope.dog.totalPage}ҳ</span>
                <span>�ܼ�¼����${sessionScope.dog.totalCount }  ÿҳ��ʾ:${sessionScope.dog.pageSize}</span>
                <span>
               <c:if test="${sessionScope.dog.currPage != 0}">
                   <a href="${pageContext.request.contextPath }/loadDogInfo.do?currentPage=0">[��ҳ]</a>
                   <a href="${pageContext.request.contextPath }/loadDogInfo.do?currentPage=${sessionScope.dog.currPage-1}">[��һҳ]</a>
               </c:if>

               <c:if test="${sessionScope.dog.currPage+1!= sessionScope.dog.totalPage}">
                   <a href="${pageContext.request.contextPath }/loadDogInfo.do?currentPage=${sessionScope.dog.currPage+1}">[��һҳ]</a>
                   <a href="${pageContext.request.contextPath }/loadDogInfo.do?currentPage=${sessionScope.dog.totalPage-1}">[βҳ]</a>
               </c:if>
            </td>

        </tr>
   </span>
    </table>
    <%--<div style="margin-left: 50px;font-size: 18px;width: 100%;line-height: 95%;">--%>

        <%--<div style="width: 25%; display:inline;line-height: 100%;"><a href="alasijia.jsp">����˹�� ���ͣ�����Ȯ ���̣���50�� �۸�1000-10000<img--%>
                <%--type="image" src="images/photos/img01.jpg" width="220" height="220" alt=""></a></div>--%>
        <%--<div style="width: 25%; display:inline;line-height: 100%;"><a href="jinmao.jsp">��ë   ���ͣ�����Ȯ ���̣���4�� �۸�1300-7500<img--%>
                <%--type="image" src="images/photos/img01.jpg" width="220" height="220" alt=""></a></div>--%>
        <%--<div style="width: 25%; display:inline;line-height: 100%;"><a href="caiquan.jsp">��Ȯ  ���ͣ�����Ȯ  ���̣���8�� �۸�6000-9000<img--%>
                <%--type="image" src="images/photos/img01.jpg" width="220" height="220" alt=""></a></div>--%>
        <%--<div style="width: 25%; display:inline;line-height: 100%;"><a href="bomei.jsp">����  ���ͣ���С��Ȯ  ���̣���23�� �۸�12000-20000<img--%>
                <%--type="image" src="images/photos/img01.jpg" width="220" height="220" alt=""></a></div>--%>
    <%--</div>--%>
</div>
<%--<div class="remaoimg">--%>
	<%--<div class="gouimg">--%>
	  <%--<ul>--%>
       <%--<c:forEach var="h" items="${sessionScope.Hot_goods}" begin="0" end="3">--%>
					<%--<li><img src="${h.p_path}" /></li>--%>
       <%--</c:forEach>--%>
      <%--</ul>--%>
    <%--</div>--%>
<%--</div>--%>


 <div style="width: auto;height: 60%;font-size: 16px;">
     <div style=" font-family: ���Ĳ���;font-size: 18px;background-color: antiquewhite;margin-left: 2%;line-height: 39px;" ><span style="color: #ffc001">��è��</span></div>
     <table width="100%" style="margin-left: 5%">
         <tr >
             <c:forEach items="${sessionScope.cat.lists}" var="cat">
                 <td>
                     <div style="width: 25%; display:inline;line-height: 100%;"><a href="loadAnimalJsp.do?p_kid=${cat.p_kid}">${cat.p_name} <br/>���ͣ�${cat.p_bodytype} <br/>���̣�${cat.p_purchase} <br/>�۸�${cat.p_price} <br/><img
                             type="image" src="${cat.p_path}" width="220" height="220" alt=""></a></div>
                 </td>
             </c:forEach>
         <tr>
             <td colspan="4">
                 <span>��${sessionScope.cat.currPage+1}/ ${sessionScope.cat.totalPage}ҳ</span>
                 <span>�ܼ�¼����${sessionScope.cat.totalCount }  ÿҳ��ʾ:${sessionScope.cat.pageSize}</span>
                 <span>
               <c:if test="${sessionScope.cat.currPage != 0}">
                   <a href="${pageContext.request.contextPath }/loadCatInfo.do?currentPage=0">[��ҳ]</a>
                   <a href="${pageContext.request.contextPath }/loadCatInfo.do?currentPage=${sessionScope.cat.currPage-1}">[��һҳ]</a>
               </c:if>

               <c:if test="${sessionScope.cat.currPage+1!= sessionScope.cat.totalPage}">
                   <a href="${pageContext.request.contextPath }/loadCatInfo.do?currentPage=${sessionScope.cat.currPage+1}">[��һҳ]</a>
                   <a href="${pageContext.request.contextPath }/loadCatInfo.do?currentPage=${sessionScope.cat.totalPage-1}">[βҳ]</a>
               </c:if>
             </td>

         </tr>

         </tr>
     </table>
 </div>
   
<div class="meng">
   <div class="biaoti">���������ȳ���Ѷ��������
   </div>
   <div class="pp">��������������ѣ��ܾ��˺�</div>
   </div> 
<div class="about">
   <div class="dog">
     <span class="dog1"><img src="images/7.jpg"></span>
     <span class="dog2"><h3>���������ܻ���</h3><br>
     <p>�ź�����Ŀǰ��û��ȷ�еĻش�������⣬������Ϊ������ʵ������ȡ����Ʒ�ֺʹ�С��</p>
     
     </span> 
   </div> 
    <div class="cat">
     <span class="cat1"> <img src="images/buou2.jpg"></span>
     <span class="cat2"><h3>��żè������</h3><br>
     <p>��żè��ʵ��һ�ַǳ����۵�è�䣬���ǲ�ϲ���¶���į�����������˻������֡���ˣ��������Ĺ����У���Ҫ���˾�����ȡһ����ʱ�䣬����è�以���������˴˽��й�ͨ�������顣</p>
     </span> 
   </div> 
</div>

<div class="center">
      <div class="centerword">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���ǵķ����������ģ������۳�����ʳס��ҽ�ƽ��б���</div>
      <div class="centerword">Our service is the heart, after the sale of basic necessities of life are pet medical insurance </div>
  </div>
<div class="footer">
   <div class="wen">���˽������Ϣ����ӭ�µ羫������</div> 
   
   <div class="sos">
   
    <div class="sod">�绰��8888888</div>
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