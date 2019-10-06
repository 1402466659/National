/**
 * FileName: ModifyServlet
 * Author:   hy
 * Date:     2019/10/6 15:37
 * Description:
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
import java.util.List;

@WebServlet(urlPatterns = "/modify")
public class ModifyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accout = req.getParameter("accout");
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String gender = req.getParameter("gender");
        ServletContext sc = this.getServletContext();
        List<User> olduserlist = (List<User>)sc.getAttribute("userlist");
        for(User one :olduserlist) {
            if(one.getAccout().equals(accout)){
                one.setPassword(password);
                one.setName(name);
                one.setGender(gender);
                resp.sendRedirect("/login");
            }

        }



    }
}
