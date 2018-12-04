package com.JDBC.dao;

import com.JDBC.dao.imp.Company;

import java.sql.SQLException;
import java.util.List;

public interface CompanyDao {
    public void add();
    public void delete() throws SQLException;
    public void update();
    public List<Company> getCompanys();
    public Company getCompanyBycid(int cid) throws SQLException;
    public int deleteByCid(int cid);
    public void add(Company company);
    public int getCount();
    public List<Company> getPages(int pageIdex , int pageSize);
}
