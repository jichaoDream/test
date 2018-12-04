package com.JDBC;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class ConfigUtil {
    public static Properties pros = new Properties();
        static {
            //通过java.long.Class的 getResourceAsStream(String name)方法来读取properties文件
            InputStream is = ConfigUtil.class.getClassLoader().getResourceAsStream("my.properties");
            try {
                //输入流中读取属性列表（键和元素对）
                pros.load(is);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        public static String getValue(String key){
            //从指定的键在此属性列表中搜索属性
            return pros.getProperty(key) ;
        }

    public static void main(String[] args) {
            //测试
        System.out.println(getValue("mysql.user"));
    }

}
