<%@ page import="entity.Post" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.User" %>
<%@ page import="entity.Joke" %>
<%--
  Created by IntelliJ IDEA.
  User: 偏执
  Date: 2019/10/4
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Nova BBS</title>
      <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" type="text/css">
</head>
<%
    List<Post> postlist = (List<Post>)request.getAttribute("postlist");
    List<User> userlist =(List<User>)request.getAttribute("userlist");
    List<Joke> jokelist =(List<Joke>)request.getAttribute("jokelist");
 %>
<body>
<div class="big-top">
  <jsp:include page="top.jsp"/>
</div>
    <div class="small-top">
        Nova BBS——————实时聚焦国内新闻，精心打造视听盛宴
    </div>
    <div class="container">
        <div class="left-con">
            <div class="left-con-top">
                <div class="left-con-top-left">
                    <marquee behavior="scroll" direction="right" class="mar-sty" scrollamount:100 loop="2">
                        <img src="image/2.jpg" alt="" width="100%" height="100%">
                        <img src="image/3.jpg" alt="" width="100%" height="100%">
                        <img src="image/4.jpg" alt="" width="100%" height="100%">
                        <img src="image/5.jpg" alt="" width="100%" height="100%">
                        <img src="image/7.jpg" alt="" width="100%" height="100%">
                        <img src="image/8.jpg" alt="" width="100%" height="100%">
                        <img src="image/9.jpg" alt="" width="100%" height="100%">
                        <img src="image/10.jpg" alt="" width="100%" height="100%">
                        <img src="image/11.jpg" alt="" width="100%" height="100%">
                        <img src="image/12.jpg" alt="" width="100%" height="100%">
                        <img src="image/13.jpg" alt="" width="100%" height="100%">
                        <img src="image/14.jpg" alt="" width="100%" height="100%">
                        <img src="image/15.jpg" alt="" width="100%" height="100%">
                        <img src="image/16.jpg" alt="" width="100%" height="100%">
                        <img src="image/17.jpg" alt="" width="100%" height="100%">
                        <img src="image/18.jpg" alt="" width="100%" height="100%">
                        <img src="image/19.jpg" alt="" width="100%" height="100%">
                        <img src="image/20.jpg" alt="" width="100%" height="100%">
                        <img src="image/21.jpg" alt="" width="100%" height="100%">
                        <img src="image/22.jpg" alt="" width="100%" height="100%">
                        <img src="image/23.jpg" alt="" width="100%" height="100%">
                        <img src="image/24.jpg" alt="" width="100%" height="100%">
                        <img src="image/25.jpg" alt="" width="100%" height="100%">
                        <img src="image/26.jpg" alt="" width="100%" height="100%">
                        <img src="image/27.jpg" alt="" width="100%" height="100%">
                        <img src="image/28.jpg" alt="" width="100%" height="100%">
                        <img src="image/29.jpg" alt="" width="100%" height="100%">
                        <img src="image/30.jpg" alt="" width="100%" height="100%">
                        <img src="image/31.jpg" alt="" width="100%" height="100%">
                        <img src="image/32.jpg" alt="" width="100%" height="100%">
                        <img src="image/33.jpg" alt="" width="100%" height="100%">
                        <img src="image/34.jpg" alt="" width="100%" height="100%">
                        <img src="image/35.jpg" alt="" width="100%" height="100%">
                        <img src="image/36.jpg" alt="" width="100%" height="100%">
                        <img src="image/37.jpg" alt="" width="100%" height="100%">
                        <img src="image/38.jpg" alt="" width="100%" height="100%">
                        <img src="image/39.jpg" alt="" width="100%" height="100%">
                        <img src="image/40.jpg" alt="" width="100%" height="100%">
                        <img src="image/41.jpg" alt="" width="100%" height="100%">
                        <img src="image/42.jpg" alt="" width="100%" height="100%">

                    </marquee>
                </div>
                <div class="left-con-top-right">
                    <%
                        for(Joke joke :jokelist){

                            pageContext.setAttribute("joke",joke);
                    %>
                    <div class="left-con-right-row">
                        ${joke.content}
                    </div>
                    <%}%>
                </div>
            </div>

            <div class="left-con-con-top">
                热门内容
                <div class="small-txt">
                    <a href="">全部显示</a>
                    <a href="">实施财经</a>
                    <a href="">文化历史</a>
                    <a href="">娱乐体育</a>
                    <a href="">情感生活</a>
                </div>
            </div>

            <div class="left-con-con">
                <%
                    for(Post post:postlist){
                        pageContext.setAttribute("post",post);
                %>
                <div class="left-con-con-row">
                    <div class="left-con-con-row-allpic">
                        <img src="${pageContext.request.contextPath}/image/${post.authorpic}" alt="" class="left-con-con-row-pic">
                    </div>
                    <div class="left-con-con-row-txt">
                        <a href="${pageContext.request.contextPath}/detail/${post.id}" style="text-decoration: underline">
                            <h2>${post.title}</h2>
                        </a>
                        <br>
                        ${post.smallcon}
                    </div>
                </div>
                <%}%>
            </div>

            <div class="left-con-con-foot">
                <input type="submit" value="加载更多" class="left-con-con-foot-btn">
            </div>
        </div>

        <div class="right-con">
            <div class="right-con-top">
                <span>Nova BBS</span>
                <br>
                <span>———高分排名榜:</span>
            </div>
            <div class="right-con-con">
                <%for(User user:userlist){
                    pageContext.setAttribute("user",user);%>
                <div class="right-con-row">
                    <div class="right-con-con-allpic">
                        <img src="${pageContext.request.contextPath}/image/${user.cover}" alt="" class="right-con-con-pic">
                    </div>
                    <div class="right-con-con-txt">
                        <span>用户名:${user.name}</span>
                        <br>
                        <span>账号:${user.accout}</span>
                    </div>
                </div>
                <%}%>
            </div>

        </div>


    </div>

</div>
<div>
    <jsp:include page="footer.jsp"/>
</div>



</body>
</html>