<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

    <script src="${pageContext.request.contextPath}/js/jquery-1.5.1.js"></script>
    <script src="${pageContext.request.contextPath}/js/common.js"></script>

    <link href="${pageContext.request.contextPath}/css/alasijia.css" rel="stylesheet" type="text/css"/>
    <script src="${pageContext.request.contextPath}/js/slider.js" type="text/javascript"></script>
    <link href="${pageContext.request.contextPath}/css/showitemlist.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/orderdesc.css">

</head>

<body>
<script type="text/javascript">

    function cancelOrder(o_id, status) {

        if (status == 5) {
            if (!confirm("你确定删除该订单吗？")) {
                return;
            }
        }
        else{
            if (!confirm("你确定收货吗？")) {
                return;
            }
        }
        $.ajax({
            type: "post",
            dataType: "text",
            url: "${pageContext.request.contextPath}/user/cancelOrder.do",
            data: {
                "o_id": o_id,
                "status": status
            },
            async: true,
            contentType: 'application/x-www-form-urlencoded; charset=utf-8',
            success: function (data) {
                if (data == "SUCCESS") {
                    alert("修改订单状态成功，请继续操作");
                }
                else {
                    alert("修改订单状态发生错误请重新操作");
                }
                window.location.href = "${pageContext.request.contextPath}/user/loadOrderListJsp.do";
            },
            error: function (data) {
                alert("发生未知错误，请登录之后再试")
                window.location.href = "${pageContext.request.contextPath}/userlogin.jsp";
            }
        });
    }
</script>
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
                <span class="header"><a
                        href="${pageContext.request.contextPath}/Rootlogin.jsp">后台登录&nbsp;&nbsp;&nbsp;</a></span>
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

<div style="font-size: 19px;background-color:beige;margin-top: 1%;"><span
        style="font-family: 华文彩云;font-size: 20px;color: #ffc001;margin-left: 3%;line-height: 35px;">订单详情
</span></div>
<div class="divOrder">
		<span>订单号：${order.o_id }
<c:choose>
    <c:when test="${order.status eq 1 }">(等待付款)</c:when>
    <c:when test="${order.status eq 2 }">(准备发货)</c:when>
    <c:when test="${order.status eq 3 }">(等待确认)</c:when>
    <c:when test="${order.status eq 4 }">(交易成功)</c:when>
    <c:when test="${order.status eq 5 }">(已取消)</c:when>
</c:choose>

		　　　下单时间：${order.ordertime}</span>
</div>
<div class="divContent">
    <div class="div2">
        <dl>
            <dt>收货人名称</dt>
            <dd>${order.realname}</dd>
        </dl>
    </div>
    <div class="div2">
        <dl>
            <dt>收货人手机号</dt>
            <dd>${order.orders[0].u_phone }</dd>
        </dl>
    </div>
    <div class="div2">
        <dl>
            <dt>收货人地址</dt>
            <dd>${order.address }</dd>
        </dl>
    </div>
    <div class="div2">
        <dl>
            <dt>商品清单</dt>
            <dd>
                <table cellpadding="0" cellspacing="0">
                    <tr>
                        <th class="tt">商品名称</th>
                        <th class="tt" align="left">单价</th>
                        <th class="tt" align="left">数量</th>
                        <th class="tt" align="left">小计</th>
                    </tr>

                    <c:forEach items="${order.orders}" var="item">
                        <tr style="padding-top: 20px; padding-bottom: 20px;">
                            <td class="td" width="400px">
                                <div class="bookname">
                                    <img align="middle" width="70" src="<c:url value='/${item.imagePath }'/>"/>
                                    <span style="margin-left: 260px;"><a href="">${item.p_name}</a></span>
                                </div>
                            </td>
                            <td class="td">
                                <span>&yen;${item.o_price }</span>
                            </td>
                            <td class="td">
                                <span>${item.o_number }</span>
                            </td>
                            <td class="td">
                                <span>&yen;${item.o_price*item.o_number}</span>
                            </td>
                        </tr>
                    </c:forEach>


                </table>
            </dd>
        </dl>
    </div>
    <div style="margin: 10px 10px 10px 550px;">
        <span style="font-weight: 900; font-size: 15px;">合计金额：</span>
        <span class="price_t">&yen;${order.total }</span><br/>
        <c:if test="${order.status eq 1}">
            <a href="${pageContext.request.contextPath}/user/paymentPre.do?oid=${order.o_id}&totalPrice=${order.total}"
               class="pay"></a><br/>
        </c:if>
        <c:if test="${order.status eq 1 and btn eq 'cancel'}">
            <a id="cancel" href="javascript:void(0);"
               onclick="cancelOrder('${order.o_id}',5)">取消订单</a><br/>
        </c:if>
        <c:if test="${order.status eq 3 and btn eq 'confirm'}">
            <a id="confirm" href="javascript:void(0);"
               onclick="cancelOrder('${order.o_id}',4)">确认收货</a><br/>
        </c:if>
    </div>
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
