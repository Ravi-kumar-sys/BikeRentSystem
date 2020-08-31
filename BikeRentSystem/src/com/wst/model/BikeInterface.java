package com.wst.model;

import com.wst.bean.Bike;
import com.wst.bean.User;
import java.sql.SQLException;
import java.util.ArrayList;

public interface BikeInterface 
{
    public int getLastId()throws SQLException;
    public int regBike(Bike b)throws SQLException;
    public ArrayList<Bike> getAllBikeData()throws SQLException;
    public int updateBikeDataById(Bike b)throws SQLException;
    public Bike getDataByBikeId(int bikeId)throws SQLException;
    public int deleteBikeById(int bikeId)throws SQLException;
    public int deleteAllData()throws SQLException;
    public ArrayList<Bike> getDataByBike_category(String bikec)throws SQLException;
    public ArrayList<Bike> searchBikeByBike_name(String biken)throws SQLException;
    public ArrayList<Bike> getPagination(int start,int total)throws SQLException;
}
