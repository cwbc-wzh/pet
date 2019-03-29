<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Userlogin.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript">
        //计算合计
        function registered() {
            window.location.href = "${pageContext.request.contextPath}/Register.jsp";
        }

        function login() {
            var name = $("#username").val();
            var password = $("#password").val();
            if (name == null || password == null) {
                alert("输入账户和密码!");
                return;
            }

            $.ajax({
                type: "post",
                dataType: "text",
                url: "${pageContext.request.contextPath}/checkLogin.do",
                data: {
                    "username": name,
                    "password": password,
                },
                async: true,
                contentType: "application/x-www-form-urlencoded; charset=utf-8",
                success: function (data) {
                    if (data == "SUCCESS") {
                        alert("登录成功，请继续操作");
                        window.location.href = "${pageContext.request.contextPath}/Pet.do";
                    }
                    else {
                        alert("账号密码错误!请重新输入");
                        $('#RegisterForm')[0].reset();

                    }

                },
                error: function (data) {
                    alert("发生未知错误，请登录之后再试")
                    $('#loginForm')[0].reset();
                }

            });
        }
    </script>
</head>
<body>
<form action="${pageContext.request.contextPath}/login.do" id="loginForm" method="post">
    <div class="container">
        <div class="head">登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录</div>
        <div class="zhanghao">
            <input type="text" placeholder="账号" class="text" id="username" name="username">
        </div>
        <div class="mima">
            <input type="password" placeholder="密码" class="text" id="password" name="password">
        </div>
        <div class="reme">
            <input type="checkbox" class="fuxuan">
            <span>两分钟内记住密码</span>
        </div>
        <div class="denglu">
            <input type="button" onclick="login()" value="点此登录" class="check">
            <input type="button" value="注册" class="check" onclick="registered()">
        </div>
        <div class="info"><a href="${pageContext.request.contextPath}/Pet.do">更多</a></div>
        <div class="logo">
            <div class="img1"><img src="${pageContext.request.contextPath}/images/use1.png"></div>
            <div class="img2"><img src="${pageContext.request.contextPath}/images/use2.png"></div>
            <div class="img3"><img src="${pageContext.request.contextPath}/images/use3.png"></div>
        </div>
    </div>
</form>
</body>
</html>