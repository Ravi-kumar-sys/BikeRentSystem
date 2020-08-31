package com.wst.model;

import com.wst.bean.BookingDetails;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class BookingDetailsImpl implements BookingdInterface
{
    public ResultSet rs = null;
    
     
    
    public int insertData(BookingDetails bd)
    {
        int result=0;
        try
        {
           
           String sql="INSERT INTO cb_booking_details(bookingd_name,bookingd_email,bookingd_phone,bookingd_dlno,bookingd_dob,bookingd_pickup_type,bookingd_terms) VALUES(?,?,?,?,?,?,?)";
           PreparedStatement pstmt=DbManager.instanceOfConnection().getConnection().prepareStatement(sql);
           
          
          pstmt.setString(1,bd.getBookingd_name());
          pstmt.setString(2,bd.getBookingd_email());
          pstmt.setString(3,bd.getBookingd_phone());
          pstmt.setString(4,bd.getBookingd_dlno());
          pstmt.setString(5,bd.getBookingd_dob());
          pstmt.setString(6,bd.getBookingd_pickup_type());
          pstmt.setString(7,bd.getBookingd_terms());
         
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
    
    public int getLastId()throws SQLException
    {
        int r=0;
        Statement stmt = DbManager.instanceOfConnection().getConnection().createStatement();
        String sql="Select bookingd_id From cb_booking_details order by bookingd_id desc";
        rs=stmt.executeQuery(sql);
        if(rs.next())
        {
            r=rs.getInt(1);
        }
        return r;
    }
    public BookingDetails getDataByBookingdId(int bdId)
    {
        BookingDetails bookd=new BookingDetails();
        try
        {
      
            String query="SELECT bookingd_id,bookingd_name,bookingd_email,bookingd_phone,bookingd_dlno,bookingd_dob,bookingd_pickup_type,bookingd_terms FROM cb_booking_details WHERE bookingd_id=?";
            PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
            pstmt.setInt(1,bdId);
            ResultSet rs=pstmt.executeQuery();
            while(rs.next())
            {
                bookd.setBookingd_id(rs.getInt("bookingd_id"));
                bookd.setBookingd_name(rs.getString("bookingd_name"));
                bookd.setBookingd_email(rs.getString("bookingd_email"));
                bookd.setBookingd_phone(rs.getString("bookingd_phone"));
                bookd.setBookingd_dlno(rs.getString("bookingd_dlno"));
                bookd.setBookingd_dob(rs.getString("bookingd_dob"));
                bookd.setBookingd_pickup_type(rs.getString("bookingd_pickup_type"));
                bookd.setBookingd_terms(rs.getString("bookingd_terms"));
                
            }
            
        }
            catch(SQLException se)
        {
            se.printStackTrace();
        }
        return bookd;
            }
            
        public ArrayList<BookingDetails> getAllBookingdData()
        {
            ArrayList<BookingDetails> al=new ArrayList<BookingDetails>();
            try
            {
                Statement stmt=DbManager.instanceOfConnection().getConnection().createStatement();
                String sqlSelect="SELECT * FROM cb_booking_details";
                ResultSet rs=stmt.executeQuery(sqlSelect);
                while(rs.next())
                {
                    BookingDetails bookd=new BookingDetails();
               
                bookd.setBookingd_id(rs.getInt("bookingd_id"));
                bookd.setBookingd_name(rs.getString("bookingd_name"));
                bookd.setBookingd_email(rs.getString("bookingd_email"));
                bookd.setBookingd_phone(rs.getString("bookingd_phone"));
                bookd.setBookingd_dlno(rs.getString("bookingd_dlno"));
                bookd.setBookingd_dob(rs.getString("bookingd_dob"));
                bookd.setBookingd_pickup_type(rs.getString("bookingd_pickup_type"));
                bookd.setBookingd_terms(rs.getString("bookingd_terms"));
                bookd.setQueryTime(rs.getString("queryTime"));
                
                al.add(bookd);
                
                }
            }
            catch(SQLException se)
            {
            se.printStackTrace();
            }
            return al;
            }
        
        
        public int deleteBookingdById(int bdId)
        {
            int result=0;
            try
            {
            Statement stmt=DbManager.instanceOfConnection().getConnection().createStatement();
            String query="DELETE FROM cb_booking_details where bookingd_id="+bdId;
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
                    String query="DELETE FROM cb_booking_details";
                    result=stmt.executeUpdate(query);
                    System.out.println(result+":  deleted all data");
                }
                catch(SQLException e)
                {
                    e.printStackTrace();
                }
            return result;
            }
            
            
        public int updateBookingdDataById(BookingDetails bd)
            {
                
                int result=0;
                try
                {
                    
                    String query="UPDATE cb_booking_details SET bookingd_id=?,bookingd_name=?,bookingd_email=?,bookingd_phone=?,bookingd_dlno=?,bookingd_dob=?,bookingd_pickup_type=?,bookingd_terms=? WHERE bookingd_id=?";
                    PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
                    pstmt.setInt(1,bd.getBookingd_id());
                    pstmt.setString(2,bd.getBookingd_name());
                    pstmt.setString(3,bd.getBookingd_email());
                    pstmt.setString(4,bd.getBookingd_phone());
                    pstmt.setString(5,bd.getBookingd_dlno());
                    pstmt.setString(6,bd.getBookingd_dob());
                    pstmt.setString(7,bd.getBookingd_pickup_type());
                    pstmt.setString(8,bd.getBookingd_terms());
                    
                    result=pstmt.executeUpdate();
              
                }
                catch(SQLException e)
                {
                    e.printStackTrace();
                }
            
            return result;
            } 
}
