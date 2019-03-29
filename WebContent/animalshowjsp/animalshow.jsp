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
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/lunbo.js"></script>
    <script src="js/jquery-1.8.2.min.js"></script>
    <script src="js/common.js"></script>

    <link href="css/alasijia.css" rel="stylesheet" type="text/css"/>
    <script src="js/slider.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var showproduct = {
                "boxid": "showbox",
                "sumid": "showsum",
                "boxw": 400,//宽度,该版本中请把宽高填写成一样
                "boxh": 400,//高度,该版本中请把宽高填写成一样
                "sumw": 60,//列表每个宽度,该版本中请把宽高填写成一样
                "sumh": 60,//列表每个高度,该版本中请把宽高填写成一样
                "sumi": 7,//列表间隔
                "sums": 5,//列表显示个数
                "sumsel": "sel",
                "sumborder": 1,//列表边框，没有边框填写0，边框在css中修改
                "lastid": "showlast",
                "nextid": "shownext"
            };//参数定义
            $.ljsGlasses.pcGlasses(showproduct);//方法调用，务必在加载完后执行
        });
        $(document).ready(function () {
            $('#slider').slider({speed: 500});
        });

        function buyCart() {
            //获取商品的id
            var p_kid = $('#p_kid').val();
            var quantity = $('#quantity').val();
            $.ajax({
                type: "post",
                dataType: "text",
                url: "${pageContext.request.contextPath}/user/addShopCart.do",
                data: {
                    "p_kid": p_kid,
                    "quantity": quantity
                },
                async: true,
                contentType: 'application/x-www-form-urlencoded; charset=utf-8',
                success: function (data) {
                    if (data == "SUCCESS") {
                        document.form1.action = "${pageContext.request.contextPath}/user/showitem.do";
                        document.form1.submit();
                    }
                    else {
                        alert("请登录后，再购买!")
                        window.location.href = "${pageContext.request.contextPath}/userlogin.jsp";
                    }
                },
                error: function (data) {
                    alert("发生未知错误，请登录之后再试")
                    window.location.href = "${pageContext.request.contextPath}/userlogin.jsp";
                }
            });

        }

        function addCart() {
            //获取商品的id
            var p_kid = $('#p_kid').val();
            var quantity = $('#quantity').val();
            $.ajax({
                type: "post",
                dataType: "text",
                url: "${pageContext.request.contextPath}/user/addShopCart.do",
                data: {
                    "p_kid": p_kid,
                    "quantity": quantity
                },
                async: true,
                contentType: 'application/x-www-form-urlencoded; charset=utf-8',
                success: function (data) {
                    if (data == "SUCCESS") {
                        alert("已成功添加到购物车中");
                    }
                    else {
                        alert("请登录后，再购买!")
                        window.location.href = "${pageContext.request.contextPath}/userlogin.jsp";
                    }
                },
                error: function (data) {
                    alert("发生未知错误，请登录之后再试")
                    window.location.href = "${pageContext.request.contextPath}/userlogin.jsp";
                }
            });

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

<div class="di">
    <span class="d1">当前宠物名称:</span>
    <span class="d2" id="petName">${products.p_name}</span>
</div>

<div style="width:600px; margin:0 auto;">
    <!--<p>欢迎使用常用商品详情页商品放大镜效果，兼容IE6及以上版本</p>
    <p style="padding-bottom:50px;">图片标签上请务必注意width和height的值，这是必要的值，图片随意形状，随意大小，但必须填写该两个值，图片个数大于1就行，数量不固定</p>-->
    <!--页面必要代码,img标签上请务必带上图片真实尺寸px-->
    <div id="showbox">

        <c:forEach items="${products.imagesList}" var="imager">
            <img src="${pageContext.request.contextPath}//${imager.image_path}" width="300" height="300"/>
        </c:forEach>

    </div><!--展示图片盒子-->
    <div id="showsum"></div><!--展示图片里边-->
    <p class="showpage">
        <a href="javascript:void(0);" id="showlast"> < </a>
        <a href="javascript:void(0);" id="shownext"> > </a>
    </p>
</div>
<div class="miaoshu">
    <div class="m1">${products.p_title}</div>
    <div class="m2">【欢迎到店选购】</div>
    <div class="m3">
        <span class="m3-1">宠物之家价格：</span>
        <!-- <img src="images/doller.jpg">-->
        <span class="m3-2">￥${products.p_price}元 </span>
        <div class="m31">市场价：￥${products.market_price}</div>
    </div>

    <!--加一个form表单-->
    <form name="form1" action="" method="get">

        <c:if test="${products.p_kind==1||products.p_kind==2}">
            <div class="time">年龄：
                &nbsp;&nbsp;&nbsp;&nbsp;
                    ${products.p_age}
            </div>
        </c:if>
        <c:if test="${products.p_kind!=1&&products.p_kind!=2}">
            <div class="time">颜色：
                &nbsp;&nbsp;&nbsp;&nbsp;
                <select>
                    <option value="1">橙色</option>
                    <option value="2">黄色</option>
                    <option value="3">绿色</option>
                    <option value="4">蓝色</option>
                </select>
            </div>
        </c:if>

        <div class="m4">购买数量: <input type="button" onclick="numDec()" value="-" id="sus">
            <input type="text" id="quantity" placeholder="1" value="1" name="count"/>
            <input type="button" onclick="numAdd()" value="+" id="add">
        </div>
        <div class="sdsd">金额总计: <span id="totalPrice">${products.p_price}</span></div>
        <input type="hidden" value="${products.p_price}" id="price"/>
        <input type="hidden" value="${products.p_kid}" id="p_kid" name="p_kid">
        <div class="buy">
            <div class="m6">
                <a href="javascript:buyCart();"><input type="button" value="立即购买"></a>
            </div>
            <div class="m7">
                <a href="javascript:addCart();"><img src="${pageContext.request.contextPath}/images/gouwuche.jpg">
                    <input type="button" value="加入购物车">
                </a>
            </div>
        </div>
    </form>
    <div class="m8">☆收藏商品</div>
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
<script type="text/javascript">
    /*或者不用jquery*/
    /*商品数量框输入*/
    function keyup() {
        var quantity = document.getElementById("quantity").value;
        if (isNaN(quantity) || parseInt(quantity) != quantity || parseInt(quantity) < 1) {
            quantity = 1;
            return;
        }
        if (quantity >= 10) {
            document.getElementById("quantity").value = quantity.substring(0, quantity.length - 1);
            alert("商品数量不能大于10");
        }
    }

    /*商品数量+1*/
    function numAdd() {
        var quantity = document.getElementById("quantity").value;
        var num_add = parseInt(quantity) + 1;
        var price = document.getElementById("price").value;
        if (quantity == "") {
            num_add = 1;
        }
        if (num_add >= 10) {
            document.getElementById("quantity").value = num_add - 1;
            alert("商品数量不能大于10");
        } else {
            document.getElementById("quantity").value = num_add;
            var Num = price * num_add;
            document.getElementById("totalPrice").innerHTML = Num.toFixed(2);
        }
    }

    /*商品数量-1*/
    function numDec() {
        var quantity = document.getElementById("quantity").value;
        var price = document.getElementById("price").value;
        var num_dec = parseInt(quantity) - 1;
        if (num_dec > 0) {
            document.getElementById("quantity").value = num_dec;
            var Num = price * num_dec;
            document.getElementById("totalPrice").innerHTML = Num.toFixed(2);
        }
    }

</script>
</body>
</html>
