/**
 * FileName: Post
 * Author:   hy
 * Date:     2019/10/4 12:50
 * Description: 对帖子属性的基本定义
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package entity;

public class Post {
    private Integer id;
    private String content;
    private String author;
    private String title;
    private String authorpic;
    private String smallcon ;

    @Override
    public String toString() {
        return "Post{" +
                "id=" + id +
                ", content='" + content + '\'' +
                ", author='" + author + '\'' +
                ", title='" + title + '\'' +
                ", authorpic='" + authorpic + '\'' +
                ", smallcon='" + smallcon + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthorpic() {
        return authorpic;
    }

    public void setAuthorpic(String authorpic) {
        this.authorpic = authorpic;
    }

    public String getSmallcon() {
        return smallcon;
    }

    public void setSmallcon(String smallcon) {
        this.smallcon = smallcon;
    }

    public Post(Integer id, String content, String author, String title, String authorpic, String smallcon) {
        this.id = id;
        this.content = content;
        this.author = author;
        this.title = title;
        this.authorpic = authorpic;
        this.smallcon = smallcon;
    }
}

