
package com.wst.model;

import com.wst.bean.Bike;
import com.wst.bean.Booking;
import java.sql.SQLException;
import java.util.ArrayList;

public interface BookingInterface 
{
    public int insertData(Booking b)throws SQLException;
    public ArrayList<Booking> getAllBookingData()throws SQLException;
    public int updateBookingDataById(Booking b)throws SQLException;
    public Booking getDataByBookingId(int bookId)throws SQLException;
    public int deleteBookingById(int bookId)throws SQLException;
    public int deleteAllData()throws SQLException;
    public int getLastId()throws SQLException;
}
