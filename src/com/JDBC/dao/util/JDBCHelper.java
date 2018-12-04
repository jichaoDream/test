package com.JDBC.dao.util;

import com.JDBC.ConfigUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.LinkedList;
//编译连接池,在多线程的情况下
//要求，只能创建一个连接池，也就是此类的对象从始至终只能被创建一次
//在多线程的情况下，尽可能优化


public class JDBCHelper {
    private static JDBCHelper instance = null ;
    private LinkedList<Connection> datasource = null ;
    private  JDBCHelper(){
        //在唯一一次构造的时候，创建连接池
        datasource = new LinkedList<>();
        for (int i=0 ; i<10 ; i++){
            try {
                Class.forName(ConfigUtil.getValue("mysql.driver"));
                //链接数据库
                Connection conn =DriverManager.getConnection(ConfigUtil.getValue("mysql.url"),
                        ConfigUtil.getValue("mysql.user"),
                        ConfigUtil.getValue("mysql.password"));
                datasource.add(conn);//添加到集合中
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public static JDBCHelper getInstance(){
        //为什么在开头还要加上if判断呢？性能问题,,将大部分线程拦截下来
        if (instance==null){
            synchronized (JDBCHelper.class) {
                if (instance==null) {
                    instance = new JDBCHelper();
                }
            }
        }
        return instance;
    }
    public Connection getCon(){
        //判断集合中是否有值
        if (datasource.size()>0){
          return   datasource.poll();//弹出集合中最后一个元素，并且size-1
        }else {
            while (datasource.size()==0){  //没有数据，就等到有数据为止
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
           return datasource.poll();
        }
    }

    public void  close(Connection conn){
        datasource.push(conn);//push将数据丢到集合里
    }

}
