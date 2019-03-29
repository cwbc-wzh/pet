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

    <link href="${pageContext.request.contextPath}/css/alasijia.css" rel="stylesheet" type="text/css"/>
    <script src="${pageContext.request.contextPath}/js/slider.js" type="text/javascript"></script>


    <link href="${pageContext.request.contextPath}/css/news.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/css/sellerShow.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/css/comment.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript">

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
    <span class="d1">留言板:</span>
    <span class="d2" id="petName">${products.p_name}</span>
</div>

<!--首页主体 [-->
<div class="wrap">
    <!--导航面包屑 [-->

    <!--导航面包屑 ]-->
    <div class="mod les-one c" id="here">
        <div class="les-let">
            <!--新闻列表 [-->
            <div class="les-news js-les-tab">
                <div class="bd tab-cont">
                    <ul class="news-list">
                        <c:forEach items="${sessionScope.commentPageBean.lists}" var="commentInfo">
                            <li class="item">
                                <div style="float: left;width: 150px;height: 100px;">
                                    <a target="_blank" href="http://www.yc.cn/news/news-41244.html">

                                        <img style="width: 150px;height: 98px;"
                                             src="${pageContext.request.contextPath}/${commentInfo.u_image}"
                                             alt="公猫与母猫相比，哪种更与人亲近，为什么？">
                                        <h3><span style="margin-left: 60px;">${commentInfo.u_id}</span></h3>
                                    </a>
                                </div>
                                <div class="c"
                                     style="width: 800px;height: 100px;position: relative;overflow: hidden;padding-left: 5%;">
                                    <p style="margin-bottom: 20px;font-size: 14px;overflow: hidden;text-align: justify;color: #434343">
                                        ${commentInfo.comment_content}</p>
                                </div>

                            </li>
                        </c:forEach>

                        <div class="paging">
                            <ul class=" paging-wrap">
                                <li>
                                    <span>第${sessionScope.commentPageBean.currPage+1}/ ${sessionScope.commentPageBean.totalPage}页</span>
                                    <span>总记录数：${sessionScope.commentPageBean.totalCount }  每页显示:${sessionScope.commentPageBean.pageSize}</span>
                                </li>
                                <c:if test="${sessionScope.commentPageBean.currPage != 0}">
                                    <li class="paging-next">
                                        <a class="paging-next"
                                           href="${pageContext.request.contextPath }/loadMessageBoardJsp.do?currentPage=0">[首页]</a>
                                    </li>
                                    <li class="paging-next">
                                        <a class="paging-next"
                                           href="${pageContext.request.contextPath }/loadMessageBoardJsp.do?currentPage=${sessionScope.commentPageBean.currPage-1}">[上一页]</a>
                                    </li>

                                </c:if>

                                <c:if test="${sessionScope.commentPageBean.currPage+1!= sessionScope.commentPageBean.totalPage}">
                                    <li class="paging-next">
                                        <a class="paging-next"
                                           href="${pageContext.request.contextPath }/loadMessageBoardJsp.do?currentPage=${sessionScope.commentPageBean.currPage+1}">[下一页]</a>
                                    </li>
                                    <li class="paging-next">
                                        <a class="paging-next"
                                           href="${pageContext.request.contextPath }/loadMessageBoardJsp.do?currentPage=${sessionScope.commentPageBean.totalPage-1}">[尾页]</a>
                                    </li>
                                </c:if>
                            </ul>
                        </div>
                    </ul>
                </div>
            </div>
            <!--新闻列表 ]-->

        </div>
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
