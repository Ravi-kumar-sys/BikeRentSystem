
package com.wst.model;

import com.wst.bean.Bike;
import com.wst.bean.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class BikeImpl implements BikeInterface
{
     public ResultSet rs = null;
    
      public int getLastId()throws SQLException
    {
        int r=0;
        Statement stmt = DbManager.instanceOfConnection().getConnection().createStatement();
        String sql="Select bike_id From cb_bike order by bike_id desc";
        rs=stmt.executeQuery(sql);
        if(rs.next())
        {
            r=rs.getInt(1);
        }
        return r;
    }
    @Override
    public int regBike(Bike b) throws SQLException
    {   
             int result = 0;
             String sql = "INSERT INTO cb_bike(bike_name,bike_description,bike_category,bike_company,bike_Model,bike_RC_No,bike_RC_Name,bike_RC_RegDate,bike_RC_ExpDate,bike_RC_CHNO,bike_RC_EnginNo,bike_YearMfg, bike_NoOfGear,bike_img,bike_color,selfstart,bike_Engin_CC,tariff_id,topup_id,priority,status) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
             PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(sql);
             
             
             pstmt.setString(1,b.getBike_name());
             pstmt.setString(2,b.getBike_description());
             pstmt.setString(3,b.getBike_category());
             pstmt.setString(4,b.getBike_company());
             pstmt.setString(5,b.getBike_Model());
             pstmt.setString(6,b.getBike_RC_No());
             pstmt.setString(7,b.getBike_RC_Name());
             pstmt.setString(8,b.getBike_RC_RegDate());
             pstmt.setString(9,b.getBike_RC_ExpDate());
             pstmt.setString(10,b.getBike_RC_CHNO());
             pstmt.setString(11,b.getBike_RC_EnginNo());
             pstmt.setString(12,b.getBike_YearMfg());
             pstmt.setInt(13,b.getBike_NoOfGear());
             pstmt.setString(14,b.getBike_img());
             pstmt.setString(15,b.getBike_color());
             pstmt.setInt(16,b.getSelfstart());
             pstmt.setInt(17,b.getBike_Engin_CC());
             pstmt.setInt(18,b.getTariff_id());
             pstmt.setInt(19,b.getTopup_id());
             pstmt.setInt(20,b.getPriority());
             pstmt.setInt(21,b.getStatus());
             
             result=pstmt.executeUpdate();
             return result;
         }

    public ArrayList<Bike> getAllBikeData()
        {
            ArrayList<Bike> al=new ArrayList<Bike>();
            try
            {
                Statement stmt=DbManager.instanceOfConnection().getConnection().createStatement();
                String sqlSelect="SELECT * FROM cb_bike";
                rs=stmt.executeQuery(sqlSelect);
                while(rs.next())
                {
                    Bike bike=new Bike();
                
                bike.setBike_id(rs.getInt("bike_id"));
                bike.setBike_name(rs.getString("bike_name"));
                bike.setBike_description(rs.getString("bike_description"));
                bike.setBike_category(rs.getString("bike_category"));
                bike.setBike_company(rs.getString("bike_company"));
                bike.setBike_Model(rs.getString("bike_Model"));
                bike.setBike_RC_No(rs.getString("bike_RC_No"));
                bike.setBike_RC_Name(rs.getString("bike_RC_Name"));
                bike.setBike_RC_RegDate(rs.getString("bike_RC_RegDate"));
                bike.setBike_RC_ExpDate(rs.getString("bike_RC_ExpDate"));
                bike.setBike_RC_CHNO(rs.getString("bike_RC_CHNO"));
                bike.setBike_RC_EnginNo(rs.getString("bike_RC_EnginNo"));
                bike.setBike_YearMfg(rs.getString("bike_YearMfg"));
                bike.setBike_NoOfGear(rs.getInt("bike_NoOfGear"));
                bike.setBike_img(rs.getString("bike_img"));
                bike.setBike_color(rs.getString("bike_color"));
                bike.setSelfstart(rs.getInt("selfstart"));
                bike.setBike_Engin_CC(rs.getInt("bike_Engin_CC"));
                bike.setTariff_id(rs.getInt("tariff_id"));
                bike.setTopup_id(rs.getInt("topup_id"));
                bike.setPriority(rs.getInt("priority"));
                bike.setStatus(rs.getInt("status"));
                bike.setTimestamp(rs.getString("timestamp"));
                al.add(bike);
                
                }
            }
            catch(SQLException se)
            {
            se.printStackTrace();
            }
            return al;
            }
      public ArrayList<Bike> getAllBikeData( int page)
        {
            ArrayList<Bike> al=new ArrayList<Bike>();
            int pagestart=page*6-6;
            try
            {
                Statement stmt=DbManager.instanceOfConnection().getConnection().createStatement();
                String sqlSelect="SELECT * FROM `cb_bike` Limit "+pagestart+",6";
                rs=stmt.executeQuery(sqlSelect);
                while(rs.next())
                {
                    Bike bike=new Bike();
                
                bike.setBike_id(rs.getInt("bike_id"));
                bike.setBike_name(rs.getString("bike_name"));
                bike.setBike_description(rs.getString("bike_description"));
                bike.setBike_category(rs.getString("bike_category"));
                bike.setBike_company(rs.getString("bike_company"));
                bike.setBike_Model(rs.getString("bike_Model"));
                bike.setBike_RC_No(rs.getString("bike_RC_No"));
                bike.setBike_RC_Name(rs.getString("bike_RC_Name"));
                bike.setBike_RC_RegDate(rs.getString("bike_RC_RegDate"));
                bike.setBike_RC_ExpDate(rs.getString("bike_RC_ExpDate"));
                bike.setBike_RC_CHNO(rs.getString("bike_RC_CHNO"));
                bike.setBike_RC_EnginNo(rs.getString("bike_RC_EnginNo"));
                bike.setBike_YearMfg(rs.getString("bike_YearMfg"));
                bike.setBike_NoOfGear(rs.getInt("bike_NoOfGear"));
                bike.setBike_img(rs.getString("bike_img"));
                bike.setBike_color(rs.getString("bike_color"));
                bike.setSelfstart(rs.getInt("selfstart"));
                bike.setBike_Engin_CC(rs.getInt("bike_Engin_CC"));
                bike.setTariff_id(rs.getInt("tariff_id"));
                bike.setTopup_id(rs.getInt("topup_id"));
                bike.setPriority(rs.getInt("priority"));
                bike.setStatus(rs.getInt("status"));
                bike.setTimestamp(rs.getString("timestamp"));
                al.add(bike);
                
                }
            }
            catch(SQLException se)
            {
            se.printStackTrace();
            }
            return al;
            }
        
     public int updateBikeDataById(Bike b)
            {
                
                int result=0;
                try
                {
                    
                    String query="UPDATE cb_bike SET bike_name=?,bike_description=?,bike_category=?,bike_company=?,bike_Model=?,bike_RC_No=?,bike_RC_Name=?,bike_RC_RegDate=?,bike_RC_ExpDate=?, bike_RC_CHNO=?,bike_RC_EnginNo=?,bike_YearMfg=?, bike_NoOfGear=?, bike_img=?,bike_color=?,selfstart=?, bike_Engin_CC=?,priority=?,status=? WHERE bike_id=?";
                    PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
                    
             pstmt.setString(1,b.getBike_name());
             pstmt.setString(2,b.getBike_description());
             pstmt.setString(3,b.getBike_category());
             pstmt.setString(4,b.getBike_company());
             pstmt.setString(5,b.getBike_Model());
             pstmt.setString(6,b.getBike_RC_No());
             pstmt.setString(7,b.getBike_RC_Name());
             pstmt.setString(8,b.getBike_RC_RegDate());
             pstmt.setString(9,b.getBike_RC_ExpDate());
             pstmt.setString(10,b.getBike_RC_CHNO());
             pstmt.setString(11,b.getBike_RC_EnginNo());
             pstmt.setString(12,b.getBike_YearMfg());
             pstmt.setInt(13,b.getBike_NoOfGear());
             pstmt.setString(14,b.getBike_img());
             pstmt.setString(15,b.getBike_color());
             pstmt.setInt(16,b.getSelfstart());
             pstmt.setInt(17,b.getBike_Engin_CC());
             pstmt.setInt(18,b.getPriority());
             pstmt.setInt(19,b.getStatus());
             pstmt.setInt(20,b.getBike_id());
             
             result = pstmt.executeUpdate();
                }
                catch(SQLException e)
                {
                    e.printStackTrace();
                }
            
            return result;
            }
     
     public int updateBikeStatus(Bike b) throws SQLException {
        int result = 0;
        String sql = "UPDATE cb_bike SET status=? WHERE bike_id=?";
        PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(sql);
        pstmt.setInt(1,b.getStatus());
        pstmt.setInt(2,b.getBike_id());
        System.out.println(pstmt);
        result = pstmt.executeUpdate();
        return result;
    }   

    public Bike getDataByBikeId(int bikeId)
    {
        Bike bike=new Bike();
        try
        {
           
            String query="SELECT bike_id,bike_name,bike_description,bike_category,bike_company,bike_Model,bike_RC_No,bike_RC_Name,bike_RC_RegDate,bike_RC_ExpDate,bike_RC_CHNO,bike_RC_EnginNo,bike_YearMfg, bike_NoOfGear,bike_img,bike_color,selfstart,bike_Engin_CC,tariff_id,topup_id,priority,status,timestamp FROM cb_bike where bike_id=?";
            PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
            pstmt.setInt(1,bikeId);
            rs=pstmt.executeQuery();
            while(rs.next())
            {
                bike.setBike_id(rs.getInt("bike_id"));
                bike.setBike_name(rs.getString("bike_name"));
                bike.setBike_description(rs.getString("bike_description"));
                bike.setBike_category(rs.getString("bike_category"));
                bike.setBike_company(rs.getString("bike_company"));
                bike.setBike_Model(rs.getString("bike_Model"));
                bike.setBike_RC_No(rs.getString("bike_RC_No"));
                bike.setBike_RC_Name(rs.getString("bike_RC_Name"));
                bike.setBike_RC_RegDate(rs.getString("bike_RC_RegDate"));
                bike.setBike_RC_ExpDate(rs.getString("bike_RC_ExpDate"));
                bike.setBike_RC_CHNO(rs.getString("bike_RC_CHNO"));
                bike.setBike_RC_EnginNo(rs.getString("bike_RC_EnginNo"));
                bike.setBike_YearMfg(rs.getString("bike_YearMfg"));
                bike.setBike_NoOfGear(rs.getInt("bike_NoOfGear"));
                bike.setBike_img(rs.getString("bike_img"));
                bike.setBike_color(rs.getString("bike_color"));
                bike.setSelfstart(rs.getInt("selfstart"));
                bike.setBike_Engin_CC(rs.getInt("bike_Engin_CC"));
                bike.setTariff_id(rs.getInt("tariff_id"));
                bike.setTopup_id(rs.getInt("topup_id"));
                bike.setPriority(rs.getInt("priority"));
                bike.setStatus(rs.getInt("status"));
                bike.setTimestamp(rs.getString("timestamp"));
            }
            
        }
            catch(SQLException se)
        {
            se.printStackTrace();
        }
        return bike;
            }
    
            
        
        
        public int  deleteBikeById(int bikeId)
        {
            int result=0;
            try
            {
            Statement stmt=DbManager.instanceOfConnection().getConnection().createStatement();
            String query="DELETE FROM cb_bike where bike_id="+bikeId;
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
                    String query="DELETE FROM cb_bike";
                    result=stmt.executeUpdate(query);
                    System.out.println(result+":  deleted all data");
                }
                catch(SQLException e)
                {
                    e.printStackTrace();
                }
            return result;
            }
            
         public ArrayList<Bike> getDataByBike_category(String bikec)
           {
                ArrayList<Bike> al=new ArrayList<Bike>();
         
        try
        {
           
            String query="SELECT bike_id,bike_name,bike_img FROM cb_bike where bike_category=?";
            PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
            pstmt.setString(1,bikec);
            rs=pstmt.executeQuery();
            while(rs.next())
            {
                Bike bike=new Bike();
                        
                bike.setBike_id(rs.getInt("bike_id"));
                bike.setBike_name(rs.getString("bike_name"));  
                bike.setBike_img(rs.getString("bike_img"));
               al.add(bike);
               System.out.println(bike.getBike_id());
            }
            
        }
            catch(SQLException se)
        {
            se.printStackTrace();
        }
        return al;
            } 
       
          public ArrayList<Bike> searchBikeByBike_name(String biken)
           {
                ArrayList<Bike> al=new ArrayList<Bike>();
           try
             {
            String query="SELECT bike_id,bike_name,bike_img FROM cb_bike where bike_name=?";
            PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
            pstmt.setString(1,biken);
            rs=pstmt.executeQuery();
            while(rs.next())
            {
                Bike bike=new Bike();
                        
                bike.setBike_id(rs.getInt("bike_id"));
                bike.setBike_name(rs.getString("bike_name"));  
                bike.setBike_img(rs.getString("bike_img"));
               al.add(bike);
               System.out.println(bike.getBike_id());
            }         
        }
            catch(SQLException se)
        {
            se.printStackTrace();
        }
        return al;
            } 
       
          public ArrayList<Bike> getPagination(int start,int total)
        {
            ArrayList<Bike> al=new ArrayList<Bike>();
            try
            {  
                String sqlSelect="select * from cb_bike limit "+(start-1)+","+total; 
                PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(sqlSelect);
                rs=pstmt.executeQuery();
                while(rs.next())
                {
                    Bike bike=new Bike();
                
                bike.setBike_id(rs.getInt("bike_id"));
                bike.setBike_name(rs.getString("bike_name"));
                bike.setBike_description(rs.getString("bike_description"));
                bike.setBike_category(rs.getString("bike_category"));
                bike.setBike_company(rs.getString("bike_company"));
                bike.setBike_Model(rs.getString("bike_Model"));
                bike.setBike_RC_No(rs.getString("bike_RC_No"));
                bike.setBike_RC_Name(rs.getString("bike_RC_Name"));
                bike.setBike_RC_RegDate(rs.getString("bike_RC_RegDate"));
                bike.setBike_RC_ExpDate(rs.getString("bike_RC_ExpDate"));
                bike.setBike_RC_CHNO(rs.getString("bike_RC_CHNO"));
                bike.setBike_RC_EnginNo(rs.getString("bike_RC_EnginNo"));
                bike.setBike_YearMfg(rs.getString("bike_YearMfg"));
                bike.setBike_NoOfGear(rs.getInt("bike_NoOfGear"));
                bike.setBike_img(rs.getString("bike_img"));
                bike.setBike_color(rs.getString("bike_color"));
                bike.setSelfstart(rs.getInt("selfstart"));
                bike.setBike_Engin_CC(rs.getInt("bike_Engin_CC"));
                bike.setTariff_id(rs.getInt("tariff_id"));
                bike.setTopup_id(rs.getInt("topup_id"));
                bike.setPriority(rs.getInt("priority"));
                bike.setStatus(rs.getInt("status"));
                bike.setTimestamp(rs.getString("timestamp"));
                al.add(bike);
                
                }
            }
            catch(SQLException se)
            {
            se.printStackTrace();
            }
            return al;
            }
          
}

