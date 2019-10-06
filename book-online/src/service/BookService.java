/**
 * FileName: BookService
 * Author:   hy
 * Date:     2019/10/1 17:15
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package service;

import entity.Book;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class BookService {
    public static List<Book> init(){
        List<Book> booklist = new ArrayList<>(10);
        Book[] books = {
                new Book(1,"漫长的婚约","book1.jpg","[法]塞巴斯蒂安"),
                new Book(2,"庸人自扰","book2.jpg","[法]塞巴斯蒂安"),
                new Book(3,"绿山墙的安妮","book3.jpg","[法]塞巴斯蒂安"),
                new Book(4,"绿山墙的安妮","book4.jpg","[法]塞巴斯蒂安"),
                new Book(5,"绿山墙的安妮","book5.jpg","[法]塞巴斯蒂安"),
                new Book(6,"绿山墙的安妮","book6.jpg","[法]塞巴斯蒂安"),
                new Book(7,"绿山墙的安妮","book7.jpg","[法]塞巴斯蒂安"),
                new Book(8,"绿山墙的安妮","book8.jpg","[法]塞巴斯蒂安"),
                new Book(9,"绿山墙的安妮","book9.jpg","[法]塞巴斯蒂安"),
                new Book(10,"绿山墙的安妮","book10.jpg","[法]塞巴斯蒂安")
        };
        booklist = Arrays.asList(books);
        return booklist;
    }

}
