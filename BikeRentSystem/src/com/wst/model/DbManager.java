package com.wst.model;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbManager
{
    static DbManager db;
    private DbManager(){}

   
    
    public static DbManager instanceOfConnection()
    {
        if(db==null)
        {
            db=new DbManager();
        }
        return db;
    }

    public Connection getConnection()
    {
        Connection con=null;
         String driver="com.mysql.cj.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/bikeonrent";
        String username="root";
        String pass="root";
        try
        {   
        Class.forName(driver);
        con=DriverManager.getConnection(url,username,pass);
        }
        catch(Exception e)
        {
           e.printStackTrace();
        }
        
        return con;
    }
}
