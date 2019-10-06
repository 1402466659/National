<%@ page import="entity.User" %><%--
  Created by IntelliJ IDEA.
  User: 偏执
  Date: 2019/10/5
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user =(User)session.getAttribute("user");
    pageContext.setAttribute("user",user);
%>
<html>
<head>
    <title>用户</title>
</head>

<style type="text/css">
    @font-face {
        font-family: 'iconfont';  /* project id 1444690 */
        src: url('//at.alicdn.com/t/font_1444690_96fn0l22cvi.eot');
        src: url('//at.alicdn.com/t/font_1444690_96fn0l22cvi.eot?#iefix') format('embedded-opentype'),
        url('//at.alicdn.com/t/font_1444690_96fn0l22cvi.woff2') format('woff2'),
        url('//at.alicdn.com/t/font_1444690_96fn0l22cvi.woff') format('woff'),
        url('//at.alicdn.com/t/font_1444690_96fn0l22cvi.ttf') format('truetype'),
        url('//at.alicdn.com/t/font_1444690_96fn0l22cvi.svg#iconfont') format('svg');
    }
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
    .big-container-row{
        width: 60%;
        height: 80px;
        margin-bottom: 15px;
        margin-left: 100px;
        font-size: 20px;
        font-family: 华文宋体;
        display: flex;
        align-items: center;
    }
    .big-container-pic{
        width: 200px;
        height: 200px;
        position: relative;
        left:80px;
        border-radius: 50%;
    }
    .big-container-all-row{
        position: relative;
        left:250px;
        top:-200px;
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
                <a href="${pageContext.request.contextPath}/modify.jsp">
                    <button class="small-container-btn">修改信息</button>
                </a>
                <a href="${pageContext.request.contextPath}/exit">
                    <button class="small-container-btn">注销用户</button>
                </a>

            </div>
        </div>

        <div class="big-container">
            <img src="${pageContext.request.contextPath}/image/${user.getCover()}" alt="" class="big-container-pic">
            <div class="big-container-all-row">

                <div class="big-container-row">
                    账号:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    ${user.getAccout()}
                </div>

                <div class="big-container-row">
                    密码:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    ${user.getPassword()}
                </div>

                <div class="big-container-row">
                    姓名:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    ${user.getName()}
                </div>

                <div class="big-container-row">
                    性别:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    ${user.getGender()}
                </div>

                <div class="big-container-row">
                    注册日期:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    ${user.getJoindate()}
                </div>

            </div>

    </div>
    </div>
    <div>
        <jsp:include page="footer.jsp"/>
    </div>

</body>
</html>
