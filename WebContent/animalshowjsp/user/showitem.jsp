<%@ page language="java" contentType="text/html; charset=gbk"
         pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk">
    <title>Insert title here</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="copyright" content="" />
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/lunbo.js"></script>
    <script src="/js/jquery-1.8.2.min.js"></script>
    <script src="/js/common.js"></script>

    <link href="/css/alasijia.css" rel="stylesheet" type="text/css" />
    <script src="/js/slider.js" type="text/javascript"></script>
    <!--<script type="text/javascript">
    $(document).ready(function() {
    $('#slider').slider({ speed: 500 });
    });
    </script>-->
    <%--<script type="text/javascript">--%>
    <%--$(document).ready(function(){--%>
    <%--var showproduct = {--%>
    <%--"boxid":"showbox",--%>
    <%--"sumid":"showsum",--%>
    <%--"boxw":400,//���,�ð汾����ѿ����д��һ��--%>
    <%--"boxh":400,//�߶�,�ð汾����ѿ����д��һ��--%>
    <%--"sumw":60,//�б�ÿ�����,�ð汾����ѿ����д��һ��--%>
    <%--"sumh":60,//�б�ÿ���߶�,�ð汾����ѿ����д��һ��--%>
    <%--"sumi":7,//�б���--%>
    <%--"sums":5,//�б���ʾ����--%>
    <%--"sumsel":"sel",--%>
    <%--"sumborder":1,//�б�߿�û�б߿���д0���߿���css���޸�--%>
    <%--"lastid":"showlast",--%>
    <%--"nextid":"shownext"--%>
    <%--};//��������--%>
    <%--$.ljsGlasses.pcGlasses(showproduct);//�������ã�����ڼ������ִ��--%>
    <%--});--%>
    <%--$(document).ready(function() {--%>
    <%--$('#slider').slider({ speed: 500 });--%>
    <%--});--%>
    <%--function buyCart(){--%>
    <%--var petName--%>
    <%--alert("")--%>
    <%--document.form1.action="buycart.jsp";//��ַ��Ϣҳ��--%>
    <%--document.form1.submit();--%>
    <%--}--%>
    <%--function addCart(){--%>
    <%--document.form1.action="addCart";--%>
    <%--document.form1.submit();--%>
    <%--}--%>
    <%--</script>--%>
</head>

<body>
<div class="header">
    <div class="head-rgh">
        <span><a href="Pet">��Ϊ��ҳ&nbsp;&nbsp;&nbsp;</a></span>
        <span><a href="">�ղر�վ</a></span>
    </div>
    <div class="head-lef">
        <c:choose>
            <c:when test="${sessionScope.username == null} ">
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
    <div class="inp"> <input type=text  placeholder="Search"></div>
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
    <span class="tiao"><a href="">��ѡ����</a></span>
</div>

<div style="  font-size: 19px;background-color:beige;margin-top: 1%;"><span style="font-family: ���Ĳ���;font-size: 20px;color: #ffc001;margin-left: 3%;line-height: 35px;">���ɶ���</span></div>
<div style=" margin:0 auto;">
    <form id="form1" action="" method="post">
        <%--<input type="hidden" name="cartItemIds" value="${cartItemIds }"/>--%>
        <input type="hidden" name="cartItemIds" value=""/>
        <input type="hidden" name="method" value="createOrder"/>
        <table width="100%"style="height: 100%" align="center" cellpadding="0" cellspacing="0" >
            <tr align="center" style="height: 40px;background-color: #c9ceb4">
                <td width="8%">&nbsp;</td>
                <td width="50%">��Ʒ����</td>
                <td>����</td>
                <td>����</td>
                <td>С��</td>
            </tr>


            <%--<c:forEach items="${cartItemList }" var="cartItem"><!--ʹ��el���ʽ"${cartItemList }"�Ȼ��������治�ܼӿո� ������������Լӿո�-->--%>
            <%--<tr align="center">--%>
            <%--<td align="right">--%>
            <%--<a class="linkImage" href="<c:url value=''/>"><img border="0" width="54" align="top" src="<c:rl value='/${cartItem.drug.image_b }'/>"/></a>--%>
            <%--</td>--%>
            <%--<td align="left">--%>
            <%--<a href="<c:url value=''/>"><span>${cartItem.drug.mname }</span></a>--%>
            <%--</td>--%>
            <%--<td>&yen;${cartItem.drug.currPrice }</td>--%>
            <%--<td>${cartItem.quantity }</td>--%>
            <%--<td>--%>
            <%--<span class="price_n">&yen;<span class="subtotal">${cartItem.subtotal }</span></span>--%>
            <%--</td>--%>
            <%--</tr>--%>
            <%--</c:forEach>--%>



            <%--<tr>--%>
            <%--<td colspan="6" align="right">--%>
            <%--<span>�ܼƣ�</span><span class="price_t">&yen;<span id="total">${total }</span></span>--%>
            <%--</td>--%>
            <%--</tr>--%>
            <tr style="height: 40px;">
                <td colspan="5" bgcolor=""><span style="font-weight: 900">�ջ���ַ</span></td>
            </tr>
            <tr style="height: 40px;">
                <td colspan="6">
                    <input id="addr" type="text" name="address" value=""/>
                </td>
            </tr>
            <tr style="height: 40px;">
                <td style="border-top-width: 4px;" colspan="5" align="right">
                    <a id="linkSubmit" href="javascript:$('#form1').submit();">�ύ����</a>
                </td>
            </tr>
        </table>
    </form>
</div>

<div class="tuijian"><span class="tword">�����Ƽ�</span></div>
<div id="slider">
    <div class="spic">
        <img src="images/buou1.jpg" />
        <a href="boou.jsp">��żè</a>
    </div>
    <div class="spic">
        <img src="images/bosi.jpg" />
        <a href="#">��˹è</a>
    </div>
    <div class="spic">
        <img src="images/eluo.jpg" />
        <a href="lm.jsp">����˹��è</a>
    </div>
    <div class="spic">
        <img src="images/5.jpg" />
        <a href="jm.jsp">��ë</a>
    </div>
    <div class="spic">
        <img src="images/buou2.jpg" />
        <a href="buou1.jsp">��żè</a>
    </div>
    <div class="spic">
        <img src="images/photos/img02.jpg" />
        <a href="alasijia.jsp">����˹��</a>
    </div>
</div>
<div class="footer">
    <div class="wen">���˽������Ϣ��ӭ�µ�</div>

    <div class="sos">
        <div class="sinp"><input type="text"></div>
        <div class="sod">�绰��8888888</div>
    </div>

    <div class="guanjian">��˳Сè&nbsp;&nbsp;&nbsp;&nbsp;��Ц����&nbsp;&nbsp;&nbsp;&nbsp;���õ�è&nbsp;&nbsp;&nbsp;&nbsp;
        �����Ĺ�</div>


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
<script type="text/javascript">
    /*���߲���jquery*/
    /*��Ʒ����������*/
    function keyup(){
        var quantity = document.getElementById("quantity").value;
        if(isNaN(quantity) ||  parseInt(quantity)!=quantity || parseInt(quantity)<1){
            quantity = 1;
            return;
        }
        if(quantity>=10){
            document.getElementById("quantity").value=quantity.substring(0,quantity.length-1);
            alert("��Ʒ�������ܴ���10");
        }
    }

    /*��Ʒ����+1*/
    function numAdd(){
        var quantity = document.getElementById("quantity").value;
        var num_add = parseInt(quantity)+1;
        var price=document.getElementById("price").value;
        if(quantity==""){
            num_add = 1;
        }
        if(num_add>=10){
            document.getElementById("quantity").value=num_add-1;
            alert("��Ʒ�������ܴ���10");
        }else{
            document.getElementById("quantity").value=num_add;
            var Num=price*num_add;
            document.getElementById("totalPrice").innerHTML=Num.toFixed(2);
        }
    }
    /*��Ʒ����-1*/
    function numDec(){
        var quantity = document.getElementById("quantity").value;
        var price=document.getElementById("price").value;
        var num_dec = parseInt(quantity)-1;
        if(num_dec>0){
            document.getElementById("quantity").value=num_dec;
            var Num=price*num_dec;
            document.getElementById("totalPrice").innerHTML=Num.toFixed(2);
        }
    }
    /*function show()
    {
        document.getElementById("totalPrice").innerHTML=3.25*3;
    } */
</script>
</body>
</html>
