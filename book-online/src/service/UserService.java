/**
 * FileName: UserService
 * Author:   hy
 * Date:     2019/10/1 17:15
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package service;

import entity.User;

import java.util.List;

public class UserService {
    private List<User> userList;
    public void setUserList(List<User> userlist){
        this.userList =userList;
    }

    public User signIn(String account,String password){
        for(User user :userList){
            if(user.getAccount().equals(account)&&user.getPassword().equals(password)) {
                return user;
            }
        }
        return null;
    }
}
