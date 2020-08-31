
package com.wst.model;

import com.wst.bean.Tariff;
import java.sql.SQLException;
import java.util.ArrayList;

public interface TariffInterface 
{
    public int insertData(Tariff t)throws SQLException;
    public ArrayList<Tariff> getAllTariffData()throws SQLException;
    public int updateTariffDataById(Tariff t)throws SQLException;
    public Tariff getDataByTariffId(int tId)throws SQLException;
    public int deleteTariffById(int tId)throws SQLException;
    public int deleteAllData()throws SQLException;
}
