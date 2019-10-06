/**
 * FileName: PostDetaileServlet
 * Author:   hy
 * Date:     2019/10/6 10:01
 * Description: 接收detail请求，获取postlist，筛选中用户需要的，传递到detail.jsp
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package servlet;

import entity.Post;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/detail/*")
public class PostDetaileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String lasturl = req.getRequestURI().trim();
        int num = lasturl.lastIndexOf("/");
        String id = lasturl.substring(num + 1);
        ServletContext sc = this.getServletContext();
        List<Post> postlist = (List<Post>)sc.getAttribute("postlist");
        for(Post post: postlist){
            if(Integer.parseInt(id)==post.getId()){
                req.setAttribute("post",post);
                req.getRequestDispatcher("/detail.jsp").forward(req,resp);
            }
        }
    }
}
