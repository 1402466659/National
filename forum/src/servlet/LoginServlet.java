/**
 * FileName: LoginServlet
 * Author:   hy
 * Date:     2019/10/4 15:17
 * Description: 获取后台用户数据，调用LoingService中的方法进行密码核实
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package servlet;

import entity.User;
import service.UserService;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String in_accout = req.getParameter("accout");
        String in_password = req.getParameter("password");
        ServletContext sc = this.getServletContext();
        List<User> userlist = (List<User>)sc.getAttribute("userlist");
        UserService userservice = new UserService();
        userservice.setUserlist(userlist);
        User user = userservice.login(in_accout,in_password);
        if(user!=null){
            HttpSession session = req.getSession();
            session.setAttribute("user",user);
            resp.sendRedirect("/index");
        }
        else{
            resp.setContentType("text/plain;charset=utf-8");
            resp.setCharacterEncoding("UTF-8");
            //获得response对象的字符输出流
            PrintWriter out = resp.getWriter();
            //输出js脚本，弹出登录失败的信息
            out.print("<script>alert('账号或密码错误'）;location.href='/';</script>");
    }
    }
}
