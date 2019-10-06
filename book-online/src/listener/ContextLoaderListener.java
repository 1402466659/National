/**
 * FileName: ContextLoaderListener
 * Author:   hy
 * Date:     2019/10/1 17:12
 * Description: 监听器
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package listener;

import entity.Book;
import entity.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebListener
public class ContextLoaderListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("容器启动");
        List<User> userList = new ArrayList(3);
        User[] users = new User[]{
                new User(1, "aaa", "698d51a19d8a121ce581499d7b701668", "123","user1.jpg","江苏南京", LocalDate.of(2018,10,12)),
                new User(1, "bbb", "bcbe3365e6ac95ea2c0343a2395834dd", "234","user2.jpg","浙江杭州", LocalDate.of(2012,4,2)),
                new User(1, "ccc", "310dcbbf4cce62f762a2aaa148d556bd", "345","user3.jpg","湖南上海", LocalDate.of(2013,6,1))
        };
        userList =  Arrays.asList(users);
        //创建并生成图书数据列表
        List<Book> bookList = new ArrayList<>(10);
        Book[] books = {
                new Book(1,"漫长的婚约","book1,jpg","法国"),
                new Book(2,"漫长的婚约","book1,jpg","法国"),
                new Book(3,"漫长的婚约","book1,jpg","法国"),
                new Book(4,"漫长的婚约","book1,jpg","法国"),
                new Book(5,"漫长的婚约","book1,jpg","法国"),
                new Book(6,"漫长的婚约","book1,jpg","法国"),
                new Book(7,"漫长的婚约","book1,jpg","法国"),
                new Book(8,"漫长的婚约","book1,jpg","法国"),
                new Book(9,"漫长的婚约","book1,jpg","法国"),
                new Book(10,"漫长的婚约","book1,jpg","法国")
        };
        bookList = Arrays.asList(books);

        //获得全局变量
        ServletContext servletContext =sce.getServletContext();
        //设置全局变量属性，将用户和图书列表数据记入，整个应用可以共享
        servletContext.setAttribute("userList",userList);
        servletContext.setAttribute("bookList",bookList);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("容器关闭");
    }
}
