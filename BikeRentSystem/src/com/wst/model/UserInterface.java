
package com.wst.model;

import com.wst.bean.User;
import java.sql.SQLException;
import java.util.ArrayList;

public interface UserInterface 
{
    public int getLastId()throws SQLException;
    public int regUser(User u)throws SQLException;
    public User loginCheck(User u) throws SQLException;
    public ArrayList<User> getAllUserData()throws SQLException;
    public int updateUserDataById(User u)throws SQLException;
    public User getDataByUserId(int id);
    public int deleteUserById(int id);
    public void login(User u)throws SQLException;
    public User getDataByEmailId(String email)throws SQLException;
}
