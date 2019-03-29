<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Insert title here</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="copyright" content=""/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/lunbo.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/common.js"></script>


    <script src="${pageContext.request.contextPath}/js/jquery-1.5.1.js"></script>
    <script src="${pageContext.request.contextPath}/js/round.js" type="text/javascript"></script>

    <link href="${pageContext.request.contextPath}/css/alasijia.css" rel="stylesheet" type="text/css"/>
    <script src="${pageContext.request.contextPath}/js/slider.js" type="text/javascript"></script>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/showitem.css">

    <script type="text/javascript">
        //计算合计
        $(function () {
            var total = 0;
            $(".subtotal").each(function () {
                total += Number($(this).text());
            });
            $("#total").text(round(total, 2));
        });

        
        function createOrder(){

            var cartItemIds=$("#cartItemIds").val();
            var address=$("#address").val();
            var receiveName=$("#receiveName").val();
            var receivePhone=$("#receivePhone").val();
            $.ajax(
                {
                    async:false,
                    cache:false,
                    url:'${pageContext.request.contextPath}/user/createOrderInfo.do',
                    data:{cartItemIds:cartItemIds,
                        address:quantity,
                        receiveName:receiveName,
                        receivePhone:receivePhone
                    },
                    type:'POST',
                    dataType:'json',
                    contentType: 'application/json',
                    success:function(result)
                    {
                        if(result.code=='SUCCESS'){
                            window.location.href="${pageContext.request.contextPath}/user/orderSuccess.do" ;
                        }
                        else{
                            alert("创建订单失败，请重新提交订单!");
                        }
                    },
                    error:function (result) {
                        alert("发生未知错误，请登录之后再试")
                        window.location.href="${pageContext.request.contextPath}/userlogin.jsp";
                    }
                });
        }
        
    </script>
</head>

<body>
<%


%>
<div class="header">
    <div class="head-rgh">
        <span><a href="${pageContext.request.contextPath}/Pet.do">首页&nbsp;&nbsp;&nbsp;</a></span>
        <span><a href="${pageContext.request.contextPath}/logOut.do">注销</a></span>
    </div>
    <div class="head-lef">
        <c:choose>
            <c:when test="${sessionScope.username==null}">
                <span class="header"><a href="${pageContext.request.contextPath}/userlogin.jsp">登录&nbsp;&nbsp;&nbsp;</a></span>
                <span><a href="${pageContext.request.contextPath}/Register.jsp">注册</a></span>
                <span class="header"><a href="${pageContext.request.contextPath}/Rootlogin.jsp">后台登录&nbsp;&nbsp;&nbsp;</a></span>
            </c:when>
            <c:otherwise>
                <span>Welcome!&nbsp;&nbsp;&nbsp;${sessionScope.username }</span>
            </c:otherwise>
        </c:choose>
    </div>
    <div class="header-Con"></div>
    <div class="word">正品·优选·用心</div>
</div>
<div class="search">
    <div class="inp"><input type=text placeholder="Search"></div>
    <div class="sousuo"><input type="submit" class="searchbutton" value="搜索"></div>
</div>
<div class="gouwuche">
    <div><img src="${pageContext.request.contextPath}/images/gouwuche.jpg" class="gowuim"></div>
    <div class="gowwuword"><a href="${pageContext.request.contextPath}/user/showitem.do">购物车</a></div>
    <div><img src="${pageContext.request.contextPath}/images/j.jpg" class="jiangim"></div>
    <div class="jiangword">品质</div>
</div>

<div class="nave">
    <ul id="nav">
        <li id="show"><a href="${pageContext.request.contextPath}/Pet.do">宠物商品</a>
            <ul>
                <li><a href="${pageContext.request.contextPath}/commodityJsp.do?p_kind=3">宠物屋舍</a></li>
                <li><a href="${pageContext.request.contextPath}/commodityJsp.do?p_kind=4">磨牙玩具</a></li>
                <li><a href="${pageContext.request.contextPath}/commodityJsp.do?p_kind=5">宠物碗</a></li>
            </ul>
        </li>
        <li><a href="shopping1.jsp">在线预约</a>
            <ul>
                <li><a href="#">美容预约</a></li>
                <li><a href="#">诊疗预约</a></li>
            </ul>
        </li>
        <li><a href="${pageContext.request.contextPath }/user/loadOrderListJsp.do">订单</a>
        </li>
        <li><a href="">用户心声</a>
            <ul>
                <li><a href="#">卖家秀</a></li>
                <li><a href="#">留言板</a></li>
            </ul>
        </li>
        <li><a href="">关于我们</a>
            <ul>
                <li><a href="#">商店简介</a></li>
            </ul>
        </li>

    </ul>
</div>

<div class="shangp">
    <span><img src="${pageContext.request.contextPath}/images/dao.jpg" class="dao"></span>
    <span class="tiao"><a href="${pageContext.request.contextPath}/Pet.do">挑选爱宠</a></span>
</div>

<div style="  font-size: 19px;background-color:beige;margin-top: 1%;"><span
        style="font-family: 华文彩云;font-size: 20px;color: #ffc001;margin-left: 3%;line-height: 35px;">生成订单</span></div>
<div style=" margin:0 auto;">
    <form id="form1" action="${pageContext.request.contextPath}/user/createOrderInfo.do" method="post">
        <%--<input type="hidden" name="cartItemIds" value="${cartItemIds }"/>--%>
        <input type="hidden" name="cartItemIds" value="${cartItemIds}"/>

        <table width="100%" style="height: 100%" align="center" cellpadding="0" cellspacing="0">
            <tr align="center" style="height: 40px;background-color: #c9ceb4">
                <td width="8%">&nbsp;</td>
                <td width="50%">物品名称</td>
                <td>单价</td>
                <td>数量</td>
                <td>小计</td>
            </tr>


            <c:forEach items="${cartItemList}" var="cartItem"><!--使用el表达式""等花括号外面不能加空格 花括号里面可以加空格-->
            <tr align="center">
                <td align="right">
                    <a class="linkImage" href="<c:url value=''/>"><img border="0" width="54" align="top"
                                                                       src="<c:url value='/${cartItem.products.p_path}'/>"/></a>
                </td>
                <td align="left">
                    <a href="<c:url value=''/>"><span>${cartItem.products.p_name }</span></a>
                </td>
                <td>&yen;${cartItem.products.p_price }</td>
                <td>${cartItem.quantity }</td>
                <td>
                    <span class="price_n">&yen;<span
                            class="subtotal">${cartItem.quantity*cartItem.products.p_price}</span></span>
                </td>
            </tr>
            </c:forEach>
            <tr>
                <td colspan="6" align="right">
                    <span>总计：</span><span class="price_t">&yen;<span id="total"></span></span>
                </td>
            </tr>
            <tr style="height: 40px;">
                <td  bgcolor="" ><span style="font-weight: 900">收货地址</span></td>
                <td  bgcolor="" colspan="4"><input id="address" type="text" name="address" value=""/></td>
            </tr>
            <tr style="height: 40px;">
                <td  bgcolor="" ><span style="font-weight: 900">收件人</span></td>
                <td  bgcolor="" colspan="4"><input id="receiveName" type="text" name="receiveName" value=""/></td>
            </tr>
            <tr style="height: 40px;">
                <td  bgcolor="" ><span style="font-weight: 900">收件人手机号</span></td>
                <td  bgcolor=""  colspan="4"><input id="receivePhone" type="text" name="receivePhone" value=""/></td>
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
        <img src="${pageContext.request.contextPath}/images/buou1.jpg"/>
        <a href="boou.jsp">布偶猫</a>
    </div>
    <div class="spic">
        <img src="${pageContext.request.contextPath}/images/bosi.jpg"/>
        <a href="#">波斯猫</a>
    </div>
    <div class="spic">
        <img src="${pageContext.request.contextPath}/images/eluo.jpg"/>
        <a href="lm.jsp">俄罗斯蓝猫</a>
    </div>
    <div class="spic">
        <img src="${pageContext.request.contextPath}/images/5.jpg"/>
        <a href="jm.jsp">金毛</a>
    </div>
    <div class="spic">
        <img src="${pageContext.request.contextPath}/images/buou2.jpg"/>
        <a href="buou1.jsp">布偶猫</a>
    </div>
    <div class="spic">
        <img src="${pageContext.request.contextPath}/images/photos/img02.jpg"/>
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
        聪明的狗
    </div>


    <div class="santu">
        <div class="santu1">
            <div class=""><img src="${pageContext.request.contextPath}/images/zhen.jpg"></div>
            <div>正品保障</div>
        </div>
        <div class="santu2">
            <div class=""><img src="${pageContext.request.contextPath}/images/zhen2.jpg"></div>
            <div>30天无理由b包退换</div>
        </div>
        <div class="santu3">
            <div class=""><img src="${pageContext.request.contextPath}/images/zhen3.jpg"></div>
            <div>48小时闪电发货</div>
        </div>
    </div>


    <br>

</div>
</body>
</html>
