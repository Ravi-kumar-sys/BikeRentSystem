package com.wst.model;

import com.wst.bean.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserImpl implements UserInterface {

    public ResultSet rs = null;
    
    public int getLastId()throws SQLException
    {
        int r=0;
        Statement stmt = DbManager.instanceOfConnection().getConnection().createStatement();
        String sql="Select id From cb_user order by id desc";
        rs=stmt.executeQuery(sql);
        if(rs.next())
        {
            r=rs.getInt(1);
        }
        return r;
    }
   
    public int regUser(User u) throws SQLException {
        int result = 0;
        String sql = "INSERT INTO cb_user(emailid,password,status,name,usertype,mobile_no) VALUES(?,?,?,?,?,?)";
        PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(sql);

       
        pstmt.setString(1, u.getEmailid());
        pstmt.setString(2, u.getPassword());
        pstmt.setInt(3,u.getStatus());
        pstmt.setString(4, u.getName());
        pstmt.setInt(5,u.getUsertype());
        pstmt.setString(6, u.getMobile_no());
        result = pstmt.executeUpdate();
         if(result>0)
        {
            result=new UserImpl().getLastId();
        }
        return result;
    }
        
         public int updateProfile(User u) throws SQLException {
        int result = 0;
        String sql = "UPDATE cb_user SET profile_pic=? WHERE emailid=?";
        PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(sql);
        pstmt.setString(1,u.getProfile_pic());
        pstmt.setString(2,u.getEmailid());
        System.out.println(pstmt);
        result = pstmt.executeUpdate();
        return result;
    }
         
    public User loginCheck(User u) throws SQLException
    {
        String sql="Select * From cb_user WHERE emailid=? AND password=?";
        PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(sql);
        pstmt.setString(1, u.getEmailid());
        pstmt.setString(2, u.getPassword());
        
        rs=pstmt.executeQuery();

        if(rs.next())
        {
            
                u.setId(rs.getInt("id"));
                u.setEmailid(rs.getString("emailid"));
                u.setPassword(rs.getString("password"));
                u.setStatus(rs.getInt("status"));
                u.setName(rs.getString("name"));
                u.setUsertype(rs.getInt("usertype"));
                u.setMobile_no(rs.getString("mobile_no"));
        }
        else{
            u=null;
        }
        return u;
    }

     public User forgotpassword(User u) throws SQLException
    {
        String sql="SELECT password From cb_user WHERE emailid=?";
        PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(sql);
        pstmt.setString(1, u.getEmailid());
        rs=pstmt.executeQuery();

        if(rs.next())
        {
                u.setPassword(rs.getString("password"));
        }
        return u;
    }
    
    
    public ArrayList<User> getAllUserData() {

        ArrayList<User> al = new ArrayList<User>();
        try {
            Statement stmt = DbManager.instanceOfConnection().getConnection().createStatement();
            String sqlSelect = "SELECT * FROM cb_user";
            rs = stmt.executeQuery(sqlSelect);
            while (rs.next()) {
                User user = new User();

                user.setId(rs.getInt("id"));
                user.setEmailid(rs.getString("emailid"));
                user.setPassword(rs.getString("password"));
                user.setStatus(rs.getInt("status"));
                user.setName(rs.getString("name"));
                user.setUsertype(rs.getInt("usertype"));
                user.setMobile_no(rs.getString("mobile_no"));
                user.setProfile_pic(rs.getString("profile_pic"));
                al.add(user);

            }
        } catch (SQLException se) {
            se.printStackTrace();
        }
        return al;
    }

    public int updateUserDataById(User u) {

        int result = 0;
        try {

            String query = "UPDATE cb_user SET password=?,name=?,mobile_no=? WHERE id=?";
            PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);

            pstmt.setString(1,u.getPassword());
            pstmt.setString(2, u.getName());
            pstmt.setString(3, u.getMobile_no());
            pstmt.setInt(4, u.getId());
            result = pstmt.executeUpdate();
            System.out.println(pstmt);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }

    public User getDataByUserId(int id) {
        User user = new User();
        try {

            String query = "SELECT id,emailid,password,status,name,usertype,mobile_no,profile_pic FROM cb_user WHERE id=?";
            PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
            pstmt.setInt(1, id);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmailid(rs.getString("emailid"));
                user.setMobile_no(rs.getString("mobile_no"));
                user.setProfile_pic(rs.getString("profile_pic"));
            }

        } catch (SQLException se) {
            se.printStackTrace();
        }
        return user;
    }
    
     public User getDataByEmailId(String email) {
        User user = new User();
        try {

            String query = "SELECT id,emailid,password,status,name,usertype,mobile_no,profile_pic FROM cb_user WHERE emailid=?";
            PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
            pstmt.setString(1, email);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmailid(rs.getString("emailid"));
                user.setPassword(rs.getString("password"));
                user.setMobile_no(rs.getString("mobile_no"));
                user.setProfile_pic(rs.getString("profile_pic"));
            }

        } catch (SQLException se) {
            se.printStackTrace();
        }
        return user;
    }

    public int deleteUserById(int id) {
        int result = 0;
        try {
            Statement stmt = DbManager.instanceOfConnection().getConnection().createStatement();
            String query = "DELETE FROM cb_user where id=" + id;
            result = stmt.executeUpdate(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
    
     public void login(User u)
     {
        try {
            
            Statement stmt=null;
            
            stmt = DbManager.instanceOfConnection().getConnection().createStatement();
            String query ="select name,password from cb_user";
            stmt.executeQuery(query);
        } catch (SQLException ex) {
            Logger.getLogger(UserImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
     }

    public boolean check(String email, String password) {
       return true;  
    }
   
     
}
