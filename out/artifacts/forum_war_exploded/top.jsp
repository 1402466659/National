<%@ page import="entity.User" %><%--
  Created by IntelliJ IDEA.
  User: 偏执
  Date: 2019/10/4
  Time: 19:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user =(User)session.getAttribute("user");
    pageContext.setAttribute("user",user);
%>
<style>
    .box {
        height: 100%;
        display: flex;
        align-items: center;
        padding-left: 120px;
    }
    button,input {
        height: 35px;
        border: 1px solid #ddd;
        border-radius: 6px;
        overflow: hidden;
        font-size: 18px;

    }
    button{
        position: relative;
        left:-10px;
        width: 3%;
    }

    .big-top-left-txt {
        margin-right: 30px;
    }
    a {
        text-decoration: none;
    }
    a:hover {
        color: darkgrey;
    }
    .avatar{
        position: relative;
        left: 1190px;
        top:-58px;
        border-radius: 100%;
        width: 55px;
        height: 55px;
    }
    .btn-login{
        position: relative;
        left:1120px;
        top:-40px;
    }
</style>
<div class="box">
    <div class="big-top-left">
        <a href="/" class="big-top-left-txt">首页</a>
        <span class="big-top-left-txt">论坛</span>
        <span class="big-top-left-txt">聚焦</span>
        <span class="big-top-left-txt">榜单</span>
    </div>
        <input type="text" style="width: 300px">
        <button>
            <i class="iconfont">&#xe611;</i>
        </button>

</div>
<% if(user!=null)
{
%>
<a href="${pageContext.request.contextPath}/user">
<img src="${pageContext.request.contextPath}/image/${user.getCover()}" alt="" class="avatar">
</a>
<%}else{

%>
<div class="btn-login">
    <a href="${pageContext.request.contextPath}/register.jsp">注册</a>

    &nbsp;&nbsp;
    <a href="${pageContext.request.contextPath}/login">登录</a>
</div>
<%}%>
