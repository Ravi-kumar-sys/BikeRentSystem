package com.wst.model;

import com.wst.bean.TopUp;
import java.sql.SQLException;
import java.util.ArrayList;

public interface TopUpInterface 
{
    public int insertData(TopUp tp)throws SQLException;
    public ArrayList<TopUp> getAllTopUpData()throws SQLException;
    public int updateTopUpDataById(TopUp tp)throws SQLException;
    public TopUp getDataByTopUpId(int tpId)throws SQLException;
    public int deleteTopUpById(int tpId)throws SQLException;
    public int deleteAllData()throws SQLException;
}
