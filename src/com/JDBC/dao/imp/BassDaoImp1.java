package com.JDBC.dao.imp;

import com.JDBC.ConfigUtil;
import com.sun.xml.internal.bind.CycleRecoverable;
import org.apache.commons.dbcp.BasicDataSourceFactory;


import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.*;
import java.util.Properties;

public class BassDaoImp1 {
    Connection conn = null ;
    ResultSet rs = null ;
    PreparedStatement ps =null ;

    public  Connection getConn2() throws Exception {
        Properties pros = new Properties();
        InputStream stream = BassDaoImp1.class.getClassLoader().getResourceAsStream("dbcp.properties");
        pros.load(stream);

        DataSource dataSource = BasicDataSourceFactory.createDataSource(pros);
        Connection connection = dataSource.getConnection();
        return connection ;
    }



    //对加载驱动链接数据库进行封装
    public Connection getCon(){
        try {
            Context initCtx =  new InitialContext();
            Context envCtx = (Context) initCtx.lookup("java:comp/env");
//Look  up  our  data  source
            DataSource ds = (DataSource) envCtx.lookup("jdbc/EmployeeDB");
//Alloca
             conn = ds.getConnection();

        } catch (NamingException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;

        //加载驱动
//        try {
//            Class.forName(ConfigUtil.getValue("mysql.driver"));
//            //链接数据库
//            conn = DriverManager.getConnection(ConfigUtil.getValue("mysql.url"),
//                    ConfigUtil.getValue("mysql.user"),
//                    ConfigUtil.getValue("mysql.password"));
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return conn ;
    }

    //对conn 、ps 、 rs 的关闭进行封装 ，不要等待其自动销毁
    public void close(){

        if (conn!=null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (ps!=null) {
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (rs!=null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

//对查询进行封装
    public ResultSet excuQuery(String sql , Object[] objects) {
        conn = this.getCon();
        try {
            ps = conn.prepareStatement(sql);
            for (int i = 0; i < objects.length; i++) {
                ps.setObject(i+1,objects[i]);
            }
            rs = ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs ;
    }
//对增删改进行封装
    public int execupdate(String sql , Object[] objects) throws SQLException {
        this.getCon() ;
         ps = conn.prepareStatement(sql);
         for (int i=0 ; i<objects.length ; i++){
             ps.setObject(i+1 ,objects[i]);
         }
        int i = ps.executeUpdate();
         if (i>0){
             System.out.println("成功！");
         }
         this.close();
         return i ;
    }
    public static void main(String[] args) throws Exception {
        System.out.println(new BassDaoImp1().getConn2());
       // System.out.println(new BassDaoImp1().getCon());
    }
}
