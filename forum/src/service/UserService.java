/**
 * FileName: UserService
 * Author:   hy
 * Date:     2019/10/4 15:36
 * Description: 后台登录功能的实现
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package service;

import entity.User;

import java.time.LocalDate;
import java.util.List;

public class UserService {
    private List<User> userlist;

    public void setUserlist(List<User> userlist) {
        this.userlist = userlist;
    }

    public User login(String in_accout,String in_password){
        for(User user:userlist){
            if(in_accout.equals(user.getAccout())&&in_password.equals(user.getPassword())){
                return user;
            }
        }
        return null;
    }
    public User addmore(String accout,String password,String name,String gender){
        String cover ="21.jpg";
        User user = new User(accout,password,cover,name,gender,LocalDate.of(2017,10,19));
        return user;
    }
}
