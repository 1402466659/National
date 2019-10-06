/**
 * FileName: IndexServlet
 * Author:   hy
 * Date:     2019/10/4 14:46
 * Description: 首页数据传递
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package servlet;

import entity.Joke;
import entity.Post;
import entity.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext sc =this.getServletContext();
        List<Post> postlist = (List<Post>)sc.getAttribute("postlist");
        List<User> userlist =(List<User>)sc.getAttribute("userlist");
        List<Joke> jokelist = (List<Joke>)sc.getAttribute("jokelist");
        req.setAttribute("postlist",postlist);
        req.setAttribute("userlist",userlist);
        req.setAttribute("jokelist",jokelist);
        resp.setContentType("text/plain;charset=utf-8");
        //resp.getWriter().print(postlist);
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}
