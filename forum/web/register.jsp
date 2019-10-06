<%--
  Created by IntelliJ IDEA.
  User: 偏执
  Date: 2019/10/6
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<style type="text/css">
    body {
        background-image: url("image/1.jpg");
        background-size: cover;
    }
    .container{
        width: 100%;
        height: 100%;
    }
    .txt-sty{
        position: relative;
        left:315px;
        top:270px;
        font-size: 26px;
        color: rgb(1, 167, 213);
    }
    .input-all{
        width: 60%;
        height: 50px;
        position: relative;
        left:630px;
        top:100px;
    }
    .input-one{
        width: 220px;
        height: 30px;
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
<div class="container">
    <label class="txt-sty">
        Nova BBS
    </label>
    <form action="/register" class="input-all" method="get">
        账号：
        <input type="text" name = "accout" class="input-one">
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
        <input type="submit" class="input-btn" value="注册">
    </form>
</div>

</body>
</html>
