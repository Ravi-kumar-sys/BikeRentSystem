package com.wst.model;

import com.wst.bean.Tariff;
import com.wst.bean.TariffDetails;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class TariffdImpl implements TariffdInterface 
{
     public int insertData(TariffDetails td)
    {
        int result=0;
        try
        {
           
           String sql="INSERT INTO cb_tariff_details(tariff_id,td_duration,td_tariff_amount,td_rideLimit,td_afterLimit_amount,td_afterLimit_km,td_afterLimit_unit_charge) VALUES(?,?,?,?,?,?,?)";
           PreparedStatement pstmt=DbManager.instanceOfConnection().getConnection().prepareStatement(sql);
           
          pstmt.setInt(1,td.getTariff_id());
          pstmt.setInt(2,td.getTd_duration());
          pstmt.setDouble(3,td.getTd_tariff_amount());
          pstmt.setInt(4,td.getTd_rideLimit());
          pstmt.setDouble(5,td.getTd_afterLimit_amount());
          pstmt.setInt(6,td.getTd_afterLimit_km());
          pstmt.setDouble(7,td.getTd_afterLimit_unit_charge());
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
    public TariffDetails getDataByTariffdId(int tdId)
    {
        TariffDetails tariffDetails=new TariffDetails();
        try
        {
            String query="SELECT * FROM cb_tariff_details WHERE td_id=?";
            PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
            pstmt.setInt(1,tdId);
            ResultSet rs=pstmt.executeQuery();
            while(rs.next())
            {
                tariffDetails.setTd_id(rs.getInt("td_id"));
                tariffDetails.setTariff_id(rs.getInt("tariff_id"));
                tariffDetails.setTd_duration(rs.getInt("td_duration"));
                tariffDetails.setTd_tariff_amount(rs.getDouble("td_tariff_amount"));
                tariffDetails.setTd_rideLimit(rs.getInt("td_rideLimit"));
                tariffDetails.setTd_afterLimit_amount(rs.getDouble("td_afterLimit_amount"));
                tariffDetails.setTd_afterLimit_km(rs.getInt("td_afterLimit_km"));
                tariffDetails.setTd_afterLimit_unit_charge(rs.getDouble("td_afterLimit_unit_charge"));
            }
            
        }
            catch(SQLException se)
        {
            se.printStackTrace();
        }
        return tariffDetails;
            }
            
        public ArrayList<TariffDetails> getAllTariffdData()
        {
            ArrayList<TariffDetails> al=new ArrayList<TariffDetails>();
            try
            {
                Statement stmt=DbManager.instanceOfConnection().getConnection().createStatement();
                String sqlSelect="SELECT * from cb_tariff_details";
                ResultSet rs=stmt.executeQuery(sqlSelect);
                while(rs.next())
                {
                   TariffDetails td=new TariffDetails();
                
                td.setTd_id(rs.getInt("td_id"));
                td.setTariff_id(rs.getInt("tariff_id"));
                td.setTd_duration(rs.getInt("td_duration"));
                td.setTd_tariff_amount(rs.getDouble("td_tariff_amount"));
                td.setTd_rideLimit(rs.getInt("td_rideLimit"));
                td.setTd_afterLimit_amount(rs.getDouble("td_afterLimit_amount"));
                td.setTd_afterLimit_km(rs.getInt("td_afterLimit_km"));
                td.setTd_afterLimit_unit_charge(rs.getDouble("td_afterLimit_unit_charge"));
                al.add(td);
                }
            }
            catch(SQLException se)
            {
            se.printStackTrace();
            }
            return al;
            }
        
 public ArrayList<TariffDetails> getAllTariffdDataByTarrifId(int tarrifId)
        {
            ArrayList<TariffDetails> al=new ArrayList<TariffDetails>();
            try
            {
                Statement stmt=DbManager.instanceOfConnection().getConnection().createStatement();
                String sqlSelect="SELECT * from cb_tariff_details WHERE tariff_id="+tarrifId;
                ResultSet rs=stmt.executeQuery(sqlSelect);
                while(rs.next())
                {
                   TariffDetails td=new TariffDetails();
                
                td.setTd_id(rs.getInt("td_id"));
                td.setTariff_id(rs.getInt("tariff_id"));
                td.setTd_duration(rs.getInt("td_duration"));
                td.setTd_tariff_amount(rs.getDouble("td_tariff_amount"));
                td.setTd_rideLimit(rs.getInt("td_rideLimit"));
                td.setTd_afterLimit_amount(rs.getDouble("td_afterLimit_amount"));
                td.setTd_afterLimit_km(rs.getInt("td_afterLimit_km"));
                td.setTd_afterLimit_unit_charge(rs.getDouble("td_afterLimit_unit_charge"));
                al.add(td);
                }
            }
            catch(SQLException se)
            {
            se.printStackTrace();
            }
            return al;
            }        
        
        
        
        
        public int deleteTariffdById(int tdId)
        {
            int result=0;
            try
            {
            Statement stmt=DbManager.instanceOfConnection().getConnection().createStatement();
            String query="DELETE FROM cb_tariff_details where td_id="+tdId;
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
                    String query="DELETE FROM cb_tariff-details";
                    result=stmt.executeUpdate(query);
                    System.out.println(result+":  deleted all data");
                }
                catch(SQLException e)
                {
                    e.printStackTrace();
                }
            return result;
            }
            
            
        public int updateTariffdDataById(TariffDetails td)
            {
                
                int result=0;
                try
                {
                    
                    String query="UPDATE cb_tariff_details SET tariff_id=?,td_duration=?,td_tariff_amount=?,td_rideLimit=?,td_afterLimit_amount=?,td_afterLimit_km=?,td_afterLimit_unit_charge=? WHERE td_id=?";
                    PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query); 
                    pstmt.setInt(1,td.getTariff_id());
                    pstmt.setInt(2,td.getTd_duration());
                    pstmt.setDouble(3,td.getTd_tariff_amount());
                    pstmt.setInt(4,td.getTd_rideLimit());
                    pstmt.setDouble(5,td.getTd_afterLimit_amount());
                    pstmt.setInt(6,td.getTd_afterLimit_km());
                    pstmt.setDouble(7,td.getTd_afterLimit_unit_charge());
                    pstmt.setInt(8,td.getTd_id());
                    result=pstmt.executeUpdate();
                }
                catch(SQLException e)
                {
                    e.printStackTrace();
                }
            
            return result;
            }
}
