/**
 * FileName: Joke
 * Author:   hy
 * Date:     2019/10/6 11:26
 * Description: joke属性的描述
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package entity;

public class Joke {
    private String content;

    public Joke(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Joke{" +
                "content='" + content + '\'' +
                '}';
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
