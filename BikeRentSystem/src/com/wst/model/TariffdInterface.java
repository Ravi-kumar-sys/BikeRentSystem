package com.wst.model;

import com.wst.bean.TariffDetails;
import java.sql.SQLException;
import java.util.ArrayList;

public interface TariffdInterface
{
    public int insertData(TariffDetails td)throws SQLException;
    public ArrayList<TariffDetails> getAllTariffdData()throws SQLException;
    public int updateTariffdDataById(TariffDetails td)throws SQLException;
    public TariffDetails getDataByTariffdId(int tdId)throws SQLException;
    public int deleteTariffdById(int tdId)throws SQLException;
    public int deleteAllData()throws SQLException;
}
