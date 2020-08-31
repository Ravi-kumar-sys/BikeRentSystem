
package com.wst.model;

import com.wst.bean.Bike;
import com.wst.bean.Booking;
import com.wst.bean.BookingDetails;
import java.sql.SQLException;
import java.util.ArrayList;

public interface BookingdInterface
{
    public int getLastId()throws SQLException;
    public int insertData(BookingDetails bd)throws SQLException;
    public ArrayList<BookingDetails> getAllBookingdData()throws SQLException;
    public int updateBookingdDataById(BookingDetails bd)throws SQLException;
    public BookingDetails getDataByBookingdId(int bdId)throws SQLException;
    public int deleteBookingdById(int bdId)throws SQLException;
    public int deleteAllData()throws SQLException;
}
