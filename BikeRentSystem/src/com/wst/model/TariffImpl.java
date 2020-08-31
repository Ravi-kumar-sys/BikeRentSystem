
package com.wst.model;

import com.wst.bean.Tariff;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class TariffImpl implements TariffInterface
{
    ResultSet rs=null;
     public int getLastId()throws SQLException
    {
        int r=0;
        Statement stmt = DbManager.instanceOfConnection().getConnection().createStatement();
        String sql="Select tariff_id From cb_tariff order by tariff_id desc";
        rs=stmt.executeQuery(sql);
        if(rs.next())
        {
            r=rs.getInt(1);
        }
        return r;
    }
    
    public int insertData(Tariff t)
    {
        int result=0;
        try
        {
           
           String sql="INSERT INTO cb_tariff(tariff_name,tariff_Details,tariff_status) VALUES(?,?,?)";
           PreparedStatement pstmt=DbManager.instanceOfConnection().getConnection().prepareStatement(sql);
           
          pstmt.setString(1,t.getTariff_name());
          pstmt.setString(2,t.getTariff_Details());
          pstmt.setInt(3,t.getTariff_status());
          
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
    public Tariff getDataByTariffId(int tId)
    {
        Tariff tariff=new Tariff();
        try
        {
            
            String query="SELECT tariff_id,tariff_name,tariff_Details,tariff_status,tariff_CreateTime FROM cb_tariff WHERE tariff_id=?";
            PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
            pstmt.setInt(1,tId);
            ResultSet rs=pstmt.executeQuery();
            while(rs.next())
            {
                tariff.setTariff_id(rs.getInt("tariff_id"));
                tariff.setTariff_name(rs.getString("tariff_name"));
                tariff.setTariff_Details(rs.getString("tariff_Details"));
                tariff.setTariff_status(rs.getInt("tariff_status"));
                tariff.setTariff_CreateTime(rs.getString("tariff_CreateTime"));
                
            }
            
        }
            catch(SQLException se)
        {
            se.printStackTrace();
        }
        return tariff;
            }
            
        public ArrayList<Tariff> getAllTariffData()
        {
            ArrayList<Tariff> al=new ArrayList<Tariff>();
            try
            {
                Statement stmt=DbManager.instanceOfConnection().getConnection().createStatement();
                String sqlSelect="SELECT * FROM cb_tariff";
                ResultSet rs=stmt.executeQuery(sqlSelect);
                while(rs.next())
                {
                    Tariff tariff=new Tariff();
                
                tariff.setTariff_id(rs.getInt("tariff_id"));
                tariff.setTariff_name(rs.getString("tariff_name"));
                tariff.setTariff_Details(rs.getString("tariff_Details"));
                tariff.setTariff_status(rs.getInt("tariff_status"));
                tariff.setTariff_CreateTime(rs.getString("tariff_CreateTime"));
                al.add(tariff);
                
                }
            }
            catch(SQLException se)
            {
            se.printStackTrace();
            }
            return al;
            }
        
        
        public int deleteTariffById(int tId)
        {
            int result=0;
            try
            {
            Statement stmt=DbManager.instanceOfConnection().getConnection().createStatement();
            String query="DELETE FROM cb_tariff where tariff_id="+tId;
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
                    String query="DELETE FROM cb_tariff";
                    result=stmt.executeUpdate(query);
                    System.out.println(result+":  deleted all data");
                }
                catch(SQLException e)
                {
                    e.printStackTrace();
                }
            return result;
            }
            
            
        public int updateTariffDataById(Tariff t)
            {
                
                int result=0;
                try
                {
                    
                    String query="UPDATE cb_tariff SET tariff_name=?,tariff_Details=?,tariff_status=? where tariff_id=?";
                    PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
                    pstmt.setString(1,t.getTariff_name());
                    pstmt.setString(2,t.getTariff_Details());
                    pstmt.setInt(3,t.getTariff_status());
                    pstmt.setInt(4,t.getTariff_id());
                    result=pstmt.executeUpdate();
                }
                catch(SQLException e)
                {
                    e.printStackTrace();
                }
            
            return result;
            } 
}
