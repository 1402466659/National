/**
 * FileName: RegisterServlet
 * Author:   hy
 * Date:     2019/10/6 14:37
 * Description: 注册用户
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
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet(urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accout = req.getParameter("accout");
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String gender = req.getParameter("gender");
        UserService num = new UserService();
        User user = num.addmore(accout,password,name,gender);
        if (user!=null){
            ServletContext sc = this.getServletContext();
            List<User> olduserlist = (List<User>)sc.getAttribute("userlist");
            List newuserlist = new ArrayList(olduserlist);
            newuserlist.add(user);
            sc.setAttribute("userlist",newuserlist);
            resp.sendRedirect("/login");
        }else{

        }
    }
}
