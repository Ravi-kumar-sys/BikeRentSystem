package com.wst.model;

import com.wst.bean.TopUp;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class TopUpImpl implements TopUpInterface
{
     ResultSet rs=null;
     public int getLastId()throws SQLException
    {
        int r=0;
        Statement stmt = DbManager.instanceOfConnection().getConnection().createStatement();
        String sql="Select topup_id From cb_topup order by topup_id desc";
        rs=stmt.executeQuery(sql);
        if(rs.next())
        {
            r=rs.getInt(1);
        }
        return r;
    }
     
     public int insertData(TopUp tp)
    {
        int result=0;
        try
        {
           
           String sql="INSERT INTO cb_topup(topup_name,topup_Amount_50km,topup_Amount_100km,topup_Amount_150km,topup_Amount_200km,topup_Amount_250km,topup_Amount_300km,topup_status) VALUES(?,?,?,?,?,?,?,?)";
           PreparedStatement pstmt=DbManager.instanceOfConnection().getConnection().prepareStatement(sql);
           
          pstmt.setString(1,tp.getTopup_name());
          pstmt.setDouble(2,tp.getTopup_Amount_50km());
          pstmt.setDouble(3,tp.getTopup_Amount_100km());
          pstmt.setDouble(4,tp.getTopup_Amount_150km());
          pstmt.setDouble(5,tp.getTopup_Amount_200km());
          pstmt.setDouble(6,tp.getTopup_Amount_250km());
          pstmt.setDouble(7,tp.getTopup_Amount_300km());
          pstmt.setInt(8,tp.getTopup_status());
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
    public TopUp getDataByTopUpId(int tpId)
    {
        TopUp topup=new TopUp();
        try
        {
            
            String query="SELECT * FROM cb_topup WHERE topup_id=?";
            PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
            pstmt.setInt(1, tpId);
            ResultSet rs=pstmt.executeQuery();
            while(rs.next())
            {
                topup.setTopup_id(rs.getInt("topup_id"));
                topup.setTopup_name(rs.getString("topup_name"));
                topup.setTopup_Amount_50km(rs.getDouble("topup_Amount_50km"));
                topup.setTopup_Amount_100km(rs.getDouble("topup_Amount_100km"));
                topup.setTopup_Amount_150km(rs.getDouble("topup_Amount_150km"));
                topup.setTopup_Amount_200km(rs.getDouble("topup_Amount_200km"));
                topup.setTopup_Amount_250km(rs.getDouble("topup_Amount_250km"));
                topup.setTopup_Amount_300km(rs.getDouble("topup_Amount_300km"));
                topup.setTopup_status(rs.getInt("topup_status"));
                topup.setTopup_addtime(rs.getString("topup_addtime"));
            }
            
        }
            catch(SQLException se)
        {
            se.printStackTrace();
        }
        return topup;
            }
            
        public ArrayList<TopUp> getAllTopUpData()
        {
            ArrayList<TopUp> al=new ArrayList<TopUp>();
            try
            {
                Statement stmt=DbManager.instanceOfConnection().getConnection().createStatement();
                String sqlSelect="SELECT * FROM cb_topup";
                ResultSet rs=stmt.executeQuery(sqlSelect);
                while(rs.next())
                {
                    TopUp topup=new TopUp();
                
                topup.setTopup_id(rs.getInt("topup_id"));
                topup.setTopup_name(rs.getString("topup_name"));
                topup.setTopup_Amount_50km(rs.getDouble("topup_Amount_50km"));
                topup.setTopup_Amount_100km(rs.getDouble("topup_Amount_100km"));
                topup.setTopup_Amount_150km(rs.getDouble("topup_Amount_150km"));
                topup.setTopup_Amount_200km(rs.getDouble("topup_Amount_200km"));
                topup.setTopup_Amount_250km(rs.getDouble("topup_Amount_250km"));
                topup.setTopup_Amount_300km(rs.getDouble("topup_Amount_300km"));
                topup.setTopup_status(rs.getInt("topup_status"));
                topup.setTopup_addtime(rs.getString("topup_addtime"));
                al.add(topup);
                
                }
            }
            catch(SQLException se)
            {
            se.printStackTrace();
            }
            return al;
            }
        
        
        public int deleteTopUpById(int tpId)
        {
            int result=0;
            try
            {
            Statement stmt=DbManager.instanceOfConnection().getConnection().createStatement();
            String query="DELETE FROM cb_topup where topup_id="+tpId;
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
                    String query="DELETE FROM cb_topup";
                    result=stmt.executeUpdate(query);
                    System.out.println(result+":  deleted all data");
                }
                catch(SQLException e)
                {
                    e.printStackTrace();
                }
            return result;
            }
            
            
        public int updateTopUpDataById(TopUp tp)
            {
                
                int result=0;
                try
                {
                    
                   String query="UPDATE cb_topup SET topup_name=?,topup_Amount_50km=?,topup_Amount_100km=?,topup_Amount_150km=?,topup_Amount_200km=?,topup_Amount_250km=?,topup_Amount_300km=?,topup_status=? WHERE topup_id=?";
                   PreparedStatement pstmt = DbManager.instanceOfConnection().getConnection().prepareStatement(query);
                   pstmt.setString(1,tp.getTopup_name());
                   pstmt.setDouble(2,tp.getTopup_Amount_50km());
                   pstmt.setDouble(3,tp.getTopup_Amount_100km());
                   pstmt.setDouble(4,tp.getTopup_Amount_150km());
                   pstmt.setDouble(5,tp.getTopup_Amount_200km());
                   pstmt.setDouble(6,tp.getTopup_Amount_250km());
                   pstmt.setDouble(7,tp.getTopup_Amount_300km());
                   pstmt.setInt(8,tp.getTopup_status());
                   pstmt.setInt(9,tp.getTopup_id());
                   result=pstmt.executeUpdate();
                }
                catch(SQLException e)
                {
                    e.printStackTrace();
                }
            
            return result;
            }
}
