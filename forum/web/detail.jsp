<%@ page import="entity.Post" %><%--
  Created by IntelliJ IDEA.
  User: 偏执
  Date: 2019/10/5
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>详情页面</title>
</head>
<style type="text/css">

    *{
        margin: 0;
        padding: 0;
    }
    .container{
        width:100%;
        display:flex;
        flex:1 1 auto;
    }
    .left-container{
        width: 30%;
    }
    .right-container{
        width: 50%;
        background: rgb(246, 246, 246);
        border-radius: 5%;
        font-size: 20px;
        font-family: 仿宋;
        position: relative;
        left:80px;
    }
    .right-container-btn{
        position: relative;
        width: 8%;
        height: 35px;
        left:960px;
        bottom: -20px;
        border: 1px solid #ddd;
        border-radius: 6px;
        overflow: hidden;
    }
    .container-top{
        width: 100%;
        height: 80px;

    }
    .right-title{
        width: 100%;
        height: 50px;
        margin-bottom: 15px;
        margin-left: 30px;
        position: relative;
        top:20px;
    }
    .right-content{
        width:90%;
        margin-left: 30px;
        margin-bottom: 25px;
    }
    .left-container-pic{
        width: 100px;
        height: 100px;
        border-radius: 50%;
        position: relative;
        left:190px;
        top: 30px;
    }
    .left-container-pos{
        position: relative;
        left:90px;
        width: 80%;
        top:30px;

    }
    .left-container-allbtn{
        display: flex;
    }
    .left-container-btn{
        width: 30%;
        height: 40px;
        margin-right: 5px;
        border: 1px solid #ddd;
        border-radius: 6px;
        overflow: hidden;
    }
</style>

<body>
<%
    Post post = (Post) request.getAttribute("post");
    pageContext.setAttribute("post",post);
%>
<div class="container-top">
    <a href="/">
        <button  class="right-container-btn">返回首页</button>
    </a>
</div>
<div class="container">
    <div class="left-container">
        <img src="${pageContext.request.contextPath}/image/${post.authorpic}" alt="" class="left-container-pic">
        <div class="left-container-pos">
            <div class="left-container-txt">
                <h2 align="center">${post.author}</h2>
                <br>
               <span style="text-align: center;display: block">媒体人、专美作家</span>
                <br>
            </div>
            <div class="left-container-allbtn">
                <button class="left-container-btn">关注</button>
                <button class="left-container-btn">站内短信</button>
                <button class="left-container-btn">个人主页</button>
                <button class="left-container-btn">RSS</button>
            </div>
        </div>

    </div>

    <div class="right-container">
        <div class="right-title">
            <h2>${post.title}</h2>
        </div>
        <div class="right-content">
        ${post.content}
        </div>
    </div>
</div>
<div>
    <jsp:include page="footer.jsp"/>
</div>


<div>

</div>
</body>
</html>
