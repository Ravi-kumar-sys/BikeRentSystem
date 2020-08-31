
package com.wst.model;

import com.wst.bean.Booking;
import com.wst.bean.Contact;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class BookingImpl implements BookingInterface
{
     ResultSet rs=null;
    
     public int getLastId()throws SQLException
    {
        int r=0;
        Statement stmt = DbManager.instanceOfConnection().getConnection().createStatement();
        String sql="Select booking_id From cb_booking order by booking_id desc";
        rs=stmt.executeQuery(sql);
        if(rs.next())
        {
            r=rs.getInt(1);
        }
        return r;
    }
    
     public int insertData(Booking b)
    {
        int result=0;
        try
        {
           
           String sql="INSERT INTO cb_booking(booking_details_id,booking_pickup_date,booking_pickup_time,booking_drop_date,booking_drop_time,booking_bike_id,booking_status) VALUES(?,?,?,?,?,?,?)";
           PreparedStatement pstmt=DbManager.instanceOfConnection().getConnection().prepareStatement(sql);
          
          pstmt.setInt(1,b.getBooking_details_id());
          pstmt.setString(2,b.getBooking_pickup_date());
          pstmt.setString(3,b.getBooking_pickup_time());
          pstmt.setString(4,b.getBooking_drop_date());
          pstmt.setString(5,b.getBooking_drop_time());
          pstmt.setInt(6,b.getBooking_bike_id());
          pstmt.setString(7,b.getBooking_status());
         
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
    public Booking getDataByBookingId(int bookId)
    {
        Booking book=new Booking();
        try
        {
            String query="SELECT * FROM cb_booking WHERE booking_id=?";
            PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
            pstmt.setInt(1,bookId);
            ResultSet rs=pstmt.executeQuery();
            while(rs.next())
            {
                book.setBooking_id(rs.getInt("booking_id"));
                book.setBooking_details_id(rs.getInt("booking_details_id"));
                book.setBooking_pickup_date(rs.getString("booking_pickup_date"));
                book.setBooking_pickup_time(rs.getString("booking_pickup_time"));
                book.setBooking_drop_date(rs.getString("booking_drop_date"));
                book.setBooking_drop_time(rs.getString("booking_drop_time"));
                book.setBooking_bike_id(rs.getInt("booking_bike_id"));
                book.setBooking_status(rs.getString("booking_status"));
                book.setBookingTime(rs.getString("bookingTime"));
            }
            
        }
            catch(SQLException se)
        {
            se.printStackTrace();
        }
        return book;
            }
            
        public ArrayList<Booking> getAllBookingData()
        {
            ArrayList<Booking> al=new ArrayList<Booking>();
            try
            {
                Statement stmt=DbManager.instanceOfConnection().getConnection().createStatement();
                String sqlSelect="SELECT * FROM cb_booking";
                ResultSet rs=stmt.executeQuery(sqlSelect);
                while(rs.next())
                {
                    Booking book=new Booking();
                
                book.setBooking_id(rs.getInt("booking_id"));
                book.setBooking_details_id(rs.getInt("booking_details_id"));
                book.setBooking_pickup_date(rs.getString("booking_pickup_date"));
                book.setBooking_pickup_time(rs.getString("booking_pickup_time"));
                book.setBooking_drop_date(rs.getString("booking_drop_date"));
                book.setBooking_drop_time(rs.getString("booking_drop_time"));
                book.setBooking_bike_id(rs.getInt("booking_bike_id"));
                book.setBooking_status(rs.getString("booking_status"));
                book.setBookingTime(rs.getString("bookingTime"));
                al.add(book);
                
                }
            }
            catch(SQLException se)
            {
            se.printStackTrace();
            }
            return al;
            }
        
        
        public int deleteBookingById(int bookId)
        {
            int result=0;
            try
            {
            Statement stmt=DbManager.instanceOfConnection().getConnection().createStatement();
            String query="DELETE FROM cb_booking where booking_id="+bookId;
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
                    String query="DELETE FROM cb_booking";
                    result=stmt.executeUpdate(query);
                    System.out.println(result+":  deleted all data");
                }
                catch(SQLException e)
                {
                    e.printStackTrace();
                }
            return result;
            }
            
            
        public int  updateBookingDataById(Booking b)
            {
                
                int result=0;
                try
                {
                    
                    String query="UPDATE cb_booking SET booking_details_id=?,booking_pickup_date=?,booking_pickup_time=?,booking_drop_date=?,booking_drop_time=?,booking_bike_id=?,booking_status=? WHERE booking_id=?";
                    PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
                  
                    pstmt.setInt(1,b.getBooking_details_id());
                    pstmt.setString(2,b.getBooking_pickup_date());
                    pstmt.setString(3,b.getBooking_pickup_time());
                    pstmt.setString(4,b.getBooking_drop_date());
                    pstmt.setString(5,b.getBooking_drop_time());
                    pstmt.setInt(6,b.getBooking_bike_id());
                    pstmt.setString(7,b.getBooking_status());
                   
                    
                    result=pstmt.executeUpdate();
                }
                catch(SQLException e)
                {
                    e.printStackTrace();
                }
            
            return result;
            }
        
         public int  updateBookingCanceledStatusById(Booking b)
            {
                int result=0;
                try
                {
                    String query="UPDATE cb_booking SET booking_status='Canceled' WHERE booking_id=?";
                    PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
                    pstmt.setInt(1,b.getBooking_id());
                    result=pstmt.executeUpdate();
                }
                catch(SQLException e)
                {
                    e.printStackTrace();
                }
            return result;
            }
         public int  updateBookingCompletedStatusById(Booking b)
            {
                int result=0;
                try
                {
                    String query="UPDATE cb_booking SET booking_status='Completed & Picked' WHERE booking_id=?";
                    PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
                    pstmt.setInt(1,b.getBooking_id());
                    result=pstmt.executeUpdate();
                }
                catch(SQLException e)
                {
                    e.printStackTrace();
                }
            return result;
            }
         public int  updateBookingBreakedStatusById(Booking b)
            {
                int result=0;
                try
                {
                    String query="UPDATE cb_booking SET booking_status='Breaked' WHERE booking_id=?";
                    PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
                    pstmt.setInt(1,b.getBooking_id());
                    result=pstmt.executeUpdate();
                }
                catch(SQLException e)
                {
                    e.printStackTrace();
                }
            return result;
            }
         
         public Booking getcurrentBooking(String email)
    {
       
        Booking book=new Booking();
        try
        {
            String query="SELECT * FROM cb_booking_details bd, cb_booking b WHERE bookingd_email=? AND bd.bookingd_id=b.booking_details_id";
            PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
            pstmt.setString(1,email);
            ResultSet rs=pstmt.executeQuery();
            while(rs.next())
            {
                book.setBooking_id(rs.getInt("booking_id"));
                book.setBooking_details_id(rs.getInt("booking_details_id"));
                book.setBooking_pickup_date(rs.getString("booking_pickup_date"));
                book.setBooking_pickup_time(rs.getString("booking_pickup_time"));
                book.setBooking_drop_date(rs.getString("booking_drop_date"));
                book.setBooking_drop_time(rs.getString("booking_drop_time"));
                book.setBooking_bike_id(rs.getInt("booking_bike_id"));
                book.setBooking_status(rs.getString("booking_status"));
                book.setBookingTime(rs.getString("bookingTime"));
            }
            
        }
            catch(SQLException se)
        {
            se.printStackTrace();
        }
        return book;
            }
     
       public ArrayList<Booking> getAllcurrentBooking(String email)
    {
        ArrayList<Booking> alb=new ArrayList<Booking>();
        
        try
        {
            String query="SELECT * FROM cb_booking_details bd, cb_booking b WHERE bookingd_email=? AND bd.bookingd_id=b.booking_details_id";
            PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
            pstmt.setString(1,email);
            ResultSet rs=pstmt.executeQuery();
            while(rs.next())
            {
                Booking book=new Booking();
                book.setBooking_id(rs.getInt("booking_id"));
                book.setBooking_details_id(rs.getInt("booking_details_id"));
                book.setBooking_pickup_date(rs.getString("booking_pickup_date"));
                book.setBooking_pickup_time(rs.getString("booking_pickup_time"));
                book.setBooking_drop_date(rs.getString("booking_drop_date"));
                book.setBooking_drop_time(rs.getString("booking_drop_time"));
                book.setBooking_bike_id(rs.getInt("booking_bike_id"));
                book.setBooking_status(rs.getString("booking_status"));
                book.setBookingTime(rs.getString("bookingTime"));
                alb.add(book);
            }
            
        }
            catch(SQLException se)
        {
            se.printStackTrace();
        }
        return alb;
            }
     
   public ArrayList<Booking> getAllBooked(String email)
    {
        ArrayList<Booking> alb=new ArrayList<Booking>();
        
        try
        {
            String query="SELECT * FROM cb_booking_details bd, cb_booking b WHERE bookingd_email=? AND bd.bookingd_id=b.booking_details_id AND b.booking_status='Booked'";
            PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
            pstmt.setString(1,email);
            ResultSet rs=pstmt.executeQuery();
            while(rs.next())
            {
                Booking book=new Booking();
                book.setBooking_id(rs.getInt("booking_id"));
                book.setBooking_details_id(rs.getInt("booking_details_id"));
                book.setBooking_pickup_date(rs.getString("booking_pickup_date"));
                book.setBooking_pickup_time(rs.getString("booking_pickup_time"));
                book.setBooking_drop_date(rs.getString("booking_drop_date"));
                book.setBooking_drop_time(rs.getString("booking_drop_time"));
                book.setBooking_bike_id(rs.getInt("booking_bike_id"));
                book.setBooking_status(rs.getString("booking_status"));
                book.setBookingTime(rs.getString("bookingTime"));
                book.setTopupselected(rs.getString("topupselected"));
                alb.add(book);
            }
            
        }
            catch(SQLException se)
        {
            se.printStackTrace();
        }
        return alb;
            }
         
   public ArrayList<Booking> getAllBookedHistory(String email)
    {
        ArrayList<Booking> alb=new ArrayList<Booking>();
        
        try
        {
            String query="SELECT * FROM cb_booking_details bd, cb_booking b WHERE bookingd_email=? AND bd.bookingd_id=b.booking_details_id AND b.booking_status!='Booked'";
            PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
            pstmt.setString(1,email);
            ResultSet rs=pstmt.executeQuery();
            while(rs.next())
            {
                Booking book=new Booking();
                book.setBooking_id(rs.getInt("booking_id"));
                book.setBooking_details_id(rs.getInt("booking_details_id"));
                book.setBooking_pickup_date(rs.getString("booking_pickup_date"));
                book.setBooking_pickup_time(rs.getString("booking_pickup_time"));
                book.setBooking_drop_date(rs.getString("booking_drop_date"));
                book.setBooking_drop_time(rs.getString("booking_drop_time"));
                book.setBooking_bike_id(rs.getInt("booking_bike_id"));
                book.setBooking_status(rs.getString("booking_status"));
                book.setBookingTime(rs.getString("bookingTime"));
                alb.add(book);
            }
            
        }
            catch(SQLException se)
        {
            se.printStackTrace();
        }
        return alb;
            }
         
        public int updateTopUp(Booking b) throws SQLException {
        int result = 0;
        String sql = "UPDATE cb_Booking SET topupselected=? WHERE booking_id=?";
        PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(sql);
        pstmt.setString(1,b.getTopupselected());
        pstmt.setInt(2,b.getBooking_id());
        System.out.println(pstmt);
        result = pstmt.executeUpdate();
        return result;
    }   
}
