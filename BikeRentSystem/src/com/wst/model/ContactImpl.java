
package com.wst.model;

import com.wst.bean.Contact;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ContactImpl implements ContactInterface
{
    public int insertData(Contact c)
    {
        int result=0;
        try
        {
           
           String sql="INSERT INTO cb_contact(contact_name,contact_email,contact_phone,contact_message,contact_isread) VALUES(?,?,?,?,?)";
           PreparedStatement pstmt=DbManager.instanceOfConnection().getConnection().prepareStatement(sql);
           
          pstmt.setString(1,c.getContact_name());
          pstmt.setString(2,c.getContact_email());
          pstmt.setString(3,c.getContact_phone());
          pstmt.setString(4,c.getContact_message());
          pstmt.setInt(5,c.getContact_isread());
          
          result=pstmt.executeUpdate();
        }
        catch(SQLException se)
        {
            se.printStackTrace();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return result;
    }
    public Contact getDataByContactId(int cId)
    {
        Contact contact=new Contact();
        try
        {
           
            String query="SELECT * FROM cb_contact WHERE contact_id=?";
            PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
            pstmt.setInt(1, cId);
            ResultSet rs=pstmt.executeQuery();
            while(rs.next())
            {
                contact.setContact_id(rs.getInt("contact_id"));
                contact.setContact_name(rs.getString("contact_name"));
                contact.setContact_email(rs.getString("contact_email"));
                contact.setContact_phone(rs.getString("contact_phone"));
                contact.setContact_message(rs.getString("contact_message"));
                contact.setContact_isread(rs.getInt("contact_isread"));
                contact.setContact_time(rs.getString("contact_time"));
            }
            
        }
            catch(SQLException se)
        {
            se.printStackTrace();
        }
        return contact;
            }
            
        public ArrayList<Contact> getAllContactData()
        {
            ArrayList<Contact> al=new ArrayList<Contact>();
            try
            {
                Statement stmt=DbManager.instanceOfConnection().getConnection().createStatement();
                String sqlSelect="SELECT * FROM cb_contact";
                ResultSet rs=stmt.executeQuery(sqlSelect);
                while(rs.next())
                {
                    Contact contact=new Contact();
                
                contact.setContact_id(rs.getInt("contact_id"));
                contact.setContact_name(rs.getString("contact_name"));
                contact.setContact_email(rs.getString("contact_email"));
                contact.setContact_phone(rs.getString("contact_phone"));
                contact.setContact_message(rs.getString("contact_message"));
                contact.setContact_isread(rs.getInt("contact_isread"));
                contact.setContact_time(rs.getString("contact_time"));
                al.add(contact);
                
                }
            }
            catch(SQLException se)
            {
            se.printStackTrace();
            }
            return al;
            }
        
        
        public int deleteContactById(int cId)
        {
            int result=0;
            try
            {
            Statement stmt=DbManager.instanceOfConnection().getConnection().createStatement();
            String query="DELETE FROM cb_contact WHERE contact_id="+cId;
            result=stmt.executeUpdate(query);
            }
            catch(SQLException e)
                    {
                        e.printStackTrace();
                    }
            return result;
        }
            
            
         public int deleteAllData()
            {
                int result=0;
                
                try
                {
                    Statement stmt=DbManager.instanceOfConnection().getConnection().createStatement();
                    String query="DELETE FROM cb_contact";
                    result=stmt.executeUpdate(query);
                    System.out.println(result+":  deleted all data");
                }
                catch(SQLException e)
                {
                    e.printStackTrace();
                }
            return result;
            }
            
            
        public int updateContactDataById(Contact c)
            {
                
                int result=0;
                try
                {
                    
                    String query="UPDATE cb_contact SET contact_name=?,contact_email=?,contact_phone=?,contact_message=?,contact_isread=? WHERE contact_id=?";
                    PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
                    pstmt.setString(1,c.getContact_name());
                    pstmt.setString(2,c.getContact_email());
                    pstmt.setString(3,c.getContact_phone());
                    pstmt.setString(4,c.getContact_message());
                    pstmt.setInt(5,c.getContact_isread());
                    pstmt.setInt(6,c.getContact_id());
                    result=pstmt.executeUpdate();
                }
                catch(SQLException e)
                {
                    e.printStackTrace();
                }
            
            return result;
            }
        public int updateContactStatusById(Contact c)
            {
                
                int result=0;
                try
                {
                    
                    String query="UPDATE cb_contact SET contact_isread=1 WHERE contact_id=?";
                    PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
                    
                    pstmt.setInt(1,c.getContact_id());
                    result=pstmt.executeUpdate();
                }
                catch(SQLException e)
                {
                    e.printStackTrace();
                }
            
            return result;
            }
}
