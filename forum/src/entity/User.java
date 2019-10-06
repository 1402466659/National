/**
 * FileName: User
 * Author:   hy
 * Date:     2019/10/4 12:49
 * Description: 对用户属性的基本定义
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package entity;

import java.time.LocalDate;

public class User {
    private  String accout;
    private String password;
    private String cover;
    private String name;
    private String gender;
    private LocalDate joindate;

    @Override
    public String toString() {
        return "User{" +
                "accout='" + accout + '\'' +
                ", password='" + password + '\'' +
                ", cover='" + cover + '\'' +
                ", name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", joindate=" + joindate +
                '}';
    }

    public String getAccout() {
        return accout;
    }

    public void setAccout(String accout) {
        this.accout = accout;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public LocalDate getJoindate() {
        return joindate;
    }

    public void setJoindate(LocalDate joindate) {
        this.joindate = joindate;
    }

    public User(String accout, String password, String cover, String name, String gender, LocalDate joindate) {
        this.accout = accout;
        this.password = password;
        this.cover = cover;
        this.name = name;
        this.gender = gender;
        this.joindate = joindate;
    }
}
