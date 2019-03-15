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
    <%--"boxw":400,//宽度,该版本中请把宽高填写成一样--%>
    <%--"boxh":400,//高度,该版本中请把宽高填写成一样--%>
    <%--"sumw":60,//列表每个宽度,该版本中请把宽高填写成一样--%>
    <%--"sumh":60,//列表每个高度,该版本中请把宽高填写成一样--%>
    <%--"sumi":7,//列表间隔--%>
    <%--"sums":5,//列表显示个数--%>
    <%--"sumsel":"sel",--%>
    <%--"sumborder":1,//列表边框，没有边框填写0，边框在css中修改--%>
    <%--"lastid":"showlast",--%>
    <%--"nextid":"shownext"--%>
    <%--};//参数定义--%>
    <%--$.ljsGlasses.pcGlasses(showproduct);//方法调用，务必在加载完后执行--%>
    <%--});--%>
    <%--$(document).ready(function() {--%>
    <%--$('#slider').slider({ speed: 500 });--%>
    <%--});--%>
    <%--function buyCart(){--%>
    <%--var petName--%>
    <%--alert("")--%>
    <%--document.form1.action="buycart.jsp";//地址信息页面--%>
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
        <span><a href="Pet">设为首页&nbsp;&nbsp;&nbsp;</a></span>
        <span><a href="">收藏本站</a></span>
    </div>
    <div class="head-lef">
        <c:choose>
            <c:when test="${sessionScope.username == null} ">
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
    <div class="inp"> <input type=text  placeholder="Search"></div>
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
    <span class="tiao"><a href="">挑选爱宠</a></span>
</div>

<div style="  font-size: 19px;background-color:beige;margin-top: 1%;"><span style="font-family: 华文彩云;font-size: 20px;color: #ffc001;margin-left: 3%;line-height: 35px;">生成订单</span></div>
<div style=" margin:0 auto;">
    <form id="form1" action="" method="post">
        <%--<input type="hidden" name="cartItemIds" value="${cartItemIds }"/>--%>
        <input type="hidden" name="cartItemIds" value=""/>
        <input type="hidden" name="method" value="createOrder"/>
        <table width="100%"style="height: 100%" align="center" cellpadding="0" cellspacing="0" >
            <tr align="center" style="height: 40px;background-color: #c9ceb4">
                <td width="8%">&nbsp;</td>
                <td width="50%">物品名称</td>
                <td>单价</td>
                <td>数量</td>
                <td>小计</td>
            </tr>


            <%--<c:forEach items="${cartItemList }" var="cartItem"><!--使用el表达式"${cartItemList }"等花括号外面不能加空格 花括号里面可以加空格-->--%>
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
            <%--<span>总计：</span><span class="price_t">&yen;<span id="total">${total }</span></span>--%>
            <%--</td>--%>
            <%--</tr>--%>
            <tr style="height: 40px;">
                <td colspan="5" bgcolor=""><span style="font-weight: 900">收货地址</span></td>
            </tr>
            <tr style="height: 40px;">
                <td colspan="6">
                    <input id="addr" type="text" name="address" value=""/>
                </td>
            </tr>
            <tr style="height: 40px;">
                <td style="border-top-width: 4px;" colspan="5" align="right">
                    <a id="linkSubmit" href="javascript:$('#form1').submit();">提交订单</a>
                </td>
            </tr>
        </table>
    </form>
</div>

<div class="tuijian"><span class="tword">热销推荐</span></div>
<div id="slider">
    <div class="spic">
        <img src="images/buou1.jpg" />
        <a href="boou.jsp">布偶猫</a>
    </div>
    <div class="spic">
        <img src="images/bosi.jpg" />
        <a href="#">波斯猫</a>
    </div>
    <div class="spic">
        <img src="images/eluo.jpg" />
        <a href="lm.jsp">俄罗斯蓝猫</a>
    </div>
    <div class="spic">
        <img src="images/5.jpg" />
        <a href="jm.jsp">金毛</a>
    </div>
    <div class="spic">
        <img src="images/buou2.jpg" />
        <a href="buou1.jsp">布偶猫</a>
    </div>
    <div class="spic">
        <img src="images/photos/img02.jpg" />
        <a href="alasijia.jsp">阿拉斯加</a>
    </div>
</div>
<div class="footer">
    <div class="wen">想了解更多信息欢迎致电</div>

    <div class="sos">
        <div class="sinp"><input type="text"></div>
        <div class="sod">电话：8888888</div>
    </div>

    <div class="guanjian">温顺小猫&nbsp;&nbsp;&nbsp;&nbsp;搞笑狗狗&nbsp;&nbsp;&nbsp;&nbsp;活泼的猫&nbsp;&nbsp;&nbsp;&nbsp;
        聪明的狗</div>


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
<script type="text/javascript">
    /*或者不用jquery*/
    /*商品数量框输入*/
    function keyup(){
        var quantity = document.getElementById("quantity").value;
        if(isNaN(quantity) ||  parseInt(quantity)!=quantity || parseInt(quantity)<1){
            quantity = 1;
            return;
        }
        if(quantity>=10){
            document.getElementById("quantity").value=quantity.substring(0,quantity.length-1);
            alert("商品数量不能大于10");
        }
    }

    /*商品数量+1*/
    function numAdd(){
        var quantity = document.getElementById("quantity").value;
        var num_add = parseInt(quantity)+1;
        var price=document.getElementById("price").value;
        if(quantity==""){
            num_add = 1;
        }
        if(num_add>=10){
            document.getElementById("quantity").value=num_add-1;
            alert("商品数量不能大于10");
        }else{
            document.getElementById("quantity").value=num_add;
            var Num=price*num_add;
            document.getElementById("totalPrice").innerHTML=Num.toFixed(2);
        }
    }
    /*商品数量-1*/
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
