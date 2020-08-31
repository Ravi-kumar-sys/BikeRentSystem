
package com.wst.model;

import com.wst.bean.BookingDetails;
import com.wst.bean.Contact;
import java.sql.SQLException;
import java.util.ArrayList;

public interface ContactInterface 
{
    public int insertData(Contact c)throws SQLException;
    public ArrayList<Contact> getAllContactData()throws SQLException;
    public int updateContactDataById(Contact c)throws SQLException;
    public Contact getDataByContactId(int cId)throws SQLException;
    public int deleteContactById(int cId)throws SQLException;
    public int deleteAllData()throws SQLException;
    public int updateContactStatusById(Contact c)throws SQLException;
}
