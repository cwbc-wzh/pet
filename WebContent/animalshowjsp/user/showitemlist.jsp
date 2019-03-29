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
    <script src="${pageContext.request.contextPath}/js/round.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            showTotal();//计算总计

            /*
            给全选添加click事件
            */
            $("#selectAll").click(function () {
                /*
                1.获取全选的状态
                */
                var bool = $("#selectAll").attr("checked");
                /*
                2.让所有条目的复选框与全选的状态同步
                */
                //alert(bool);
                setItemCheckBox(bool);
                /*
                3.让结算按钮与全选同步
                */
                setJieSuan(bool);
                /*
                4.重新计算总计
                */
                showTotal();
            });

            /*
             * 给所有条目的复选框添加click事件  *******************************************
             */
            $(":checkbox[name=checkboxBtn]").click(function () {
                var all = $(":checkbox[name=checkboxBtn]").length;//所有条目的个数
                var select = $(":checkbox[name=checkboxBtn][checked=true]").length;//获取所有被选择条目的个数
                //alert(select);
                //alert(all);
                if (all == select)//全部被选中
                {
                    $("#selectAll").attr("checked", true);//勾选全选复选框
                    setJieSuan(true);//设置结算按钮有效
                } else if (select == 0)//全都没选中
                {
                    $("#selectAll").attr("checked", false);//取消全选复选框
                    //alert(select);
                    setJieSuan(false);//设置结算按钮失效
                } else //选中一部分
                {
                    $("#selectAll").attr("checked", false);//取消全选复选框
                    setJieSuan(true);//设置结算按钮失效
                }
                showTotal();//重新计算总计
            });

            /*
           给减号添加click事件
           */
            $(".jian").click(function () {//获取cartItemId
                var id = $(this).attr("id").substring(0, 32);
                //获取输入框中的数量
                var quantity = $("#" + id + "Quantity").val();
                //判读当前数量是否为1,如果为1,那就不是修改数量了，而是要删除了。
                if (quantity == 1) {
                    if (confirm("您是否真要删除该条目?")) {
                        location = "user/deleteShopCart.do?cartItemIds=" + id;
                    }
                } else {
                    sendUpdateQuantity(id, quantity - 1);
                }
                // alert(quantity);
            });

            /*
            给加号添加click事件
            */
            $(".jia").click(function () {//获取cartItemId
                var id = $(this).attr("id").substring(0, 32);
                //获取输入框中的数量
                var quantity = $("#" + id + "Quantity").val();
                sendUpdateQuantity(id, Number(quantity) + 1);
                //alert(quantity);
            });
        });

        //请求服务器，修改数量。
        function sendUpdateQuantity(id, quantity) {
            $.ajax(
                {
                    async: false,
                    cache: false,
                    url: 'user/lessShopCart.do',
                    data: {
                        cartItemId: id,
                        quantity: quantity
                    },
                    type: 'POST',
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=utf-8',
                    success: function (result) {//1.修改数量

                        //alert(result.subtotal);
                        $("#" + id + "Quantity").val(result.quantity);

                        //2.修改小计
                        $("#" + id + "Subtotal").text(result.quantity * result.products.p_price + "");
                        //3.重新计算总计
                        showTotal();
                    }
                });
        }

        /*
         * 计算总计
         */
        function showTotal() {
            var total = 0;
            /*
            *1.获取所有的被勾选的条目复选框!循环遍历之
            */
            $(":checkbox[name=checkboxBtn][checked=true]").each(function () {//2.获取复选框的值,即cartItemId，其他元素的前缀
                var id = $(this).val();
                //3.再通过cartItemId找到小计元素，获取其文本
                var text = $("#" + id + "Subtotal").text();
                //4.累加计算
                total += Number(text);
            });
            //5.把总计显示在总计元素上
            $("#total").text(round(total, 2));//round(函数的作用是把total保留几位小数)
        }

        /*
         *统一设置所有条目的复选按钮
         */
        function setItemCheckBox(bool) {
            $(":checkbox[name=checkboxBtn]").attr("checked", bool);
        }

        /*
         * 设置结算按钮样式
         */
        function setJieSuan(bool) {
            if (bool) {
                $("#jiesuan").removeClass("kill").addClass("jiesuan");
                $("#jiesuan").unbind("click");//撤销当前元素上所有的click事件
            } else {
                $("#jiesuan").removeClass("jiesuan").addClass("kill");
                $("#jiesuan").click(function () {
                    return false;
                });
            }
        }

        /*
         *批量删除
         */
        function batchDelete() {
            //1.获取所有被选中条目的复选框
            //2.创建一个数组,把所有被选中的复选框的值添加到数组中
            //3.制定location为CartItemServlet,参数method=batchDelete,参数cartItemIds=数组的toString()
            var cartItemIdArray = "";
            $(":checkbox[name=checkboxBtn][checked=true]").each(function () {
                //购物车id以分号隔开
                cartItemIdArray = cartItemIdArray + $(this).val() + ";";
                // cartItemIdArray.push($(this).val());//把复选框的值添加到数组中
                // cartItemIdArray.push($(this).val());
                //alert($(this).val());
            });
            if (cartItemIdArray != "") {
                alert("删除成功");
                location = "${pageContext.request.contextPath}/user/deleteShopCart.do?cartItemIds=" + cartItemIdArray;
            }
            else {
                alert("请选择删除的商品!");
            }

        }

        /*
         * 结算
         */
        function jiesuan() {
            //1.获取所有被选择的条目的id,放在数组中
            var cartItemIdArray = new Array();
            var cartItemIds = "";
            $(":checkbox[name=checkboxBtn][checked=true]").each(function () {
                // cartItemIdArray.push($(this).val());//把复选框的值添加到数组中

                cartItemIds = cartItemIds + $(this).val() + ";";
            });
            //2.把数组的值toString(),然后赋给表单的cartItemIds这个hidden
            $("#cartItemIds").val(cartItemIds);
            // alert($("#cartItemIds").val());
            //把总计的值，也保存到表单中
            $("#hiddenTotal").val($("#total").text());
            //3.提交这个表单
            $("#jieSuanForm").submit();
        }

    </script>
</head>

<body>
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
        style="font-family: 华文彩云;font-size: 20px;color: #ffc001;margin-left: 3%;line-height: 35px;">购物车订单</span></div>
<div style=" margin:0 auto;">
    <c:choose>
        <c:when test="${empty cartItemList }">
            <table width="95%" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td align="right">
                        <img align="top" src="<c:url value='/images/icon_empty.png'/>"/>
                    </td>
                    <td>
                        <span class="spanEmpty">您的购物车中暂时没有商品</span>
                    </td>
                </tr>
            </table>
        </c:when>
        <c:otherwise>
            <table width="95%" align="center" cellpadding="0" cellspacing="0">
                <tr align="center" bgcolor="#efeae5">
                    <td align="left" width="50px">
                        <input type="checkbox" id="selectAll" checked="checked"/><label for="selectAll">全选</label>
                    </td>
                    <td colspan="2">物品名称</td>
                    <td>单价</td>
                    <td>数量</td>
                    <td>小计</td>
                    <td>操作</td>
                </tr>

                <c:forEach items="${cartItemList}" var="cartItem">
                    <tr align="center">
                        <td align="left">
                            <input value="${cartItem.cartItemId }" type="checkbox" name="checkboxBtn"
                                   checked="checked"/>
                        </td>
                        <td align="left" width="70px">
                            <a class="linkImage" href="<c:url value=''/>"><img border="0" width="54" align="top"
                                                                               src="<c:url value='/${cartItem.products.p_path}'/>"/></a>
                        </td>
                        <td align="left" width="400px">
                            <a href="<c:url value=''/>"><span>${cartItem.products.p_name }</span></a>
                        </td>
                        <td><span>&yen;<span class="currPrice">${cartItem.products.p_price }</span></span></td>
                        <td>
                            <a class="jian" id="${cartItem.cartItemId}Jian"></a><input class="quantity"
                                                                                       readonly="readonly"
                                                                                       id="${cartItem.cartItemId}Quantity"
                                                                                       type="text"
                                                                                       value="${cartItem.quantity }"/><a
                                class="jia" id="${cartItem.cartItemId }Jia"></a>
                        </td>
                        <td width="100px">
                            <span class="price_n">&yen;<span class="subTotal"
                                                             id="${cartItem.cartItemId }Subtotal">${cartItem.quantity*cartItem.products.p_price}</span></span>
                        </td>
                        <td>
                            <a href="<c:url value='/user/deleteShopCart.do?cartItemIds=${cartItem.cartItemId }'/>">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                <tr>
                    <td colspan="4" class="tdBatchDelete">
                        <a href="javascript:batchDelete();">批量删除</a>
                    </td>
                    <td colspan="3" align="right" class="tdTotal">
                        <span>总计：</span><span class="price_t">&yen;<span id="total"></span></span>
                    </td>
                </tr>
                <tr>
                    <td colspan="7" align="right">
                        <a href="javascript:jiesuan();" id="jiesuan" class="jiesuan"></a>
                    </td>
                </tr>
            </table>
            <form id="jieSuanForm" action="${pageContext.request.contextPath}/user/jumpShowJsp.do" method="post">
                <input type="hidden" name="cartItemIds" id="cartItemIds"/>
                <input type="hidden" name="total" id="hiddenTotal"/>
                <input type="hidden" name="method" value="loadCartItems"/>
            </form>

        </c:otherwise>
    </c:choose>
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
