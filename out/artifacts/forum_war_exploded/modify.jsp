<%--
  Created by IntelliJ IDEA.
  User: 偏执
  Date: 2019/10/6
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
</head>

<style type="text/css">

    *{
        margin: 0;
        padding: 0;
    }
    .big-top{
        width:100%;
        height: 60px;
        background: rgb(1, 207, 255);
        font-size: 18px;
    }
    .container{
        width: 100%;
        display: flex;
        margin: 0 auto;
        height: 532px;
    }
    .small-container{
        height: 100%;
        width: 10%;
        background: rgb(50, 67, 93);
    }
    .big-container{
        height: 100%;
        width: 90%;
        background: rgb(224, 224, 224);
    }
    .small-container-btn{
        width: 105%;
        height: 50px;
        margin-bottom: 5px;
    }
    .input-all{
        width: 60%;
        height: 50px;
        position: relative;
        left:200px;
        top:100px;
    }
    .input-one{
        width: 220px;
        height: 40px;
        border-radius: 10px;
        font-size: 22px;
        margin-bottom: 10px;
        margin-top: 10px;
    }
    .input-btn{
        width: 160px;
        height: 35px;
        border-radius: 10px;
        position: relative;
        left: 70px;
        top:15px;
    }

</style>

<body>
<div class="big-top">
    <jsp:include page="top.jsp"/>
</div>

<div class="container">
    <div class="small-container">
        <div class="small-container-bor">
            <button class="small-container-btn">个人信息</button>
            <button class="small-container-btn">我的钱包</button>
            <button class="small-container-btn">好友管理</button>
            <button class="small-container-btn">消息提示</button>
            <button class="small-container-btn">修改信息</button>
            <a href="${pageContext.request.contextPath}/exit">
                <button class="small-container-btn">注销用户</button>
            </a>

        </div>
    </div>

    <div class="big-container">
        <form action="/modify" method="get" class="input-all" >
            账号：
            <input type="text" name = "accout" class="input-one" >
            <br>
            密码：
            <input type="password" name="password" class="input-one">
            <br>
            姓名：
            <input type="text" name= "name" class="input-one">
            <br>
            性别：
            <input type="radio" name="gender" value="男"  />男
            <input type="radio" name="gender" value="女" />女
            <br>
            <input type="submit" class="input-btn" value="确认">
            <br>
            <br>
            <br>
        </form>
            </div>
</div>
<div>
    <jsp:include page="footer.jsp"/>
</div>


</body>
</html>

