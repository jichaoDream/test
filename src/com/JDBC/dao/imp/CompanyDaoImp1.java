package com.JDBC.dao.imp;

import com.JDBC.dao.CompanyDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

public class CompanyDaoImp1  extends BassDaoImp1 implements CompanyDao {
    public Connection conn = null ;
    public PreparedStatement ps = null ;
    public ResultSet rs = null ;


    @Override
    public void add() {
        String sql = "insert into company values(?,?,?,?,?,?,?,?,?)" ;
        Object[] objects= new Object[9] ;
        objects[0]=1986 ;
        objects[1]="大数据开发工程师" ;
        objects[2]="徐州大学丰县工程技术研究院";
        objects[3]="徐州";
        objects[4]="国企";
        objects[5]="50-100人";
        objects[6]="专业服务（咨询，人力资源，财会）";
        objects[7]="0.8" ;
        objects[8]=10 ;
        try {
            this.execupdate(sql , objects);
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            this.close();
        }
    }

    //    public void add(){
//
//        conn = this.getCon();
//        String sql = "insert into company values(?,?,?,?,?,?,?,?,?)" ;
//
////        String sql ="insert into course values(?,?,?)" ;
//        try {
//            ps = conn.prepareStatement(sql) ;
//            ps.setInt(1,1680);
//            ps.setString(2,"大数据开发工程师");
//            ps.setString(3,"徐州大学丰县工程技术研究院");
//            ps.setString(4,"徐州");
//            ps.setString(5,"国企");
//            ps.setString(6,"50-100人");
//            ps.setString(7,"专业服务（咨询，人力资源，财会）");
//            ps.setDouble(8,0.8);
//            ps.setDouble(9,10);
//
////            ps.setString(1,"05");
////            ps.setString(2,"javaweb");
////            ps.setString(3,"20");
//
//            int i = ps.executeUpdate() ;
//            if(i>0){
//                System.out.println("插入成功");
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }finally {
//            this.close(conn,ps,rs);
//        }
//    }
    @Override
    public void delete() throws SQLException {

        String sql="delete from company1 where  c_id=?";
        Object[] objects = new Object[1] ;
        objects[0]=1628 ;
        this.execupdate(sql , objects);
    }

    @Override
    public void update() {

        String sql ="update company set 工作地点=? where c_id=?";
        Object[] objects = new Object[2] ;
        objects[0]=1627 ;
        objects[1]="徐州工程学院" ;
        try {
            this.execupdate(sql , objects);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Company> getCompanys() {

        String sql ="select * from company";
        Object[] objects =new Object[]{};
        rs = this.excuQuery(sql , objects);
        List<Company> list = new LinkedList<>();
        try {

            while(rs.next()){
                Company  company = new Company();
                company.setCid(rs.getInt(1));
                company.setZwName(rs.getString(2).trim());
                company.setCname(rs.getString(3).trim());
                company.setPlace(rs.getString(4).trim());
                company.setCxz(rs.getString(5).trim());
                company.setCgm(rs.getString(6).trim());
                company.setCcy(rs.getString(7).trim());
                company.setLsalary(rs.getDouble(8));
                company.setHsalary(rs.getDouble(9));
                list.add(company);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            this.close();
        }
        return  list;
    }

    @Override
    public Company getCompanyBycid( int cid) throws SQLException {
        Company company = new Company();

        String sql = "select * from company where c_id=?" ;
        Object[] object = new Object[1];
        object[0]=cid ;
        ResultSet rs = this.excuQuery(sql, object);
        while(rs.next()){
            company.setCid(rs.getInt(1));
            company.setZwName(rs.getString(2).trim());
            company.setCname(rs.getString(3).trim());
            company.setPlace(rs.getString(4).trim());
            company.setCxz(rs.getString(5).trim());
            company.setCgm(rs.getString(6).trim());
            company.setCcy(rs.getString(7).trim());
            company.setLsalary(rs.getDouble(8));
            company.setHsalary(rs.getDouble(9));

        }
        System.out.println(company.toString());
        return company;
    }

    @Override
    public int deleteByCid(int cid) {
        int i = 0;
        String sql="delete  from company where  c_id=?";
        Object[] objects = new Object[1] ;
        objects[0]=cid ;
        try {
             i = this.execupdate(sql, objects);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i ;
    }

    @Override
    public void add(Company company) {
        String sql = "insert into company values(?,?,?,?,?,?,?,?,?)";
        Object[]objects={company.getCid(),company.getZwName(),company.getCname(),company.getPlace()
                        ,company.getCxz(),company.getCgm(),company.getCcy(),company.getLsalary(),company.getHsalary()};
        try {
            this.execupdate(sql , objects);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public int getCount() {
        int i=0 ;
        String sql = "select Count(*) from company";
        Object[] objects = new Object[]{};
        ResultSet resultSet = this.excuQuery(sql, objects);
        try {
            if (resultSet.next()){
                try {
                    i = resultSet.getInt(1);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            this.close();
        }
        return i ;
    }

    @Override
    public List<Company> getPages(int pageIdex, int pageSize) {
        String sql = "select * from company limit ? ,?";
        Object[] objects ={(pageIdex-1)*pageSize,pageSize};
        ResultSet rs = this.excuQuery(sql, objects);
        List<Company> list = new LinkedList<>();
        try {

            while(rs.next()){
                Company  company = new Company();
                company.setCid(rs.getInt(1));
                company.setZwName(rs.getString(2).trim());
                company.setCname(rs.getString(3).trim());
                company.setPlace(rs.getString(4).trim());
                company.setCxz(rs.getString(5).trim());
                company.setCgm(rs.getString(6).trim());
                company.setCcy(rs.getString(7).trim());
                company.setLsalary(rs.getDouble(8));
                company.setHsalary(rs.getDouble(9));
                list.add(company);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            this.close();
        }


        return list;
    }


    public static void main(String[] args) throws SQLException {
          CompanyDaoImp1 con = new CompanyDaoImp1() ;
//           con.add();
        int i = con.deleteByCid(5);
        System.out.println(i);
    }
}
