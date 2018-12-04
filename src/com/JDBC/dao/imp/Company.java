package com.JDBC.dao.imp;

public class Company {

    private  int cid;//公司id
    private  String zwName;//职位名
    private  String cname;//公司名称
    private  String place;//公司地点
    private  String cxz;//公司性质
    private String  cgm;//公司规模
    private  String ccy;//公司产业
    private  Double lsalary;//最低薪资
    private Double hsalary;//最高薪资

    public Company(int cid ,String zwName , String cname,String place,String cxz,String  cgm,
            String ccy ,  Double lsalary ,Double hsalary){
        this.cid=cid;
        this.zwName=zwName;
        this.cname=cname;
        this.place=place;
        this.cxz=cxz;
        this.cgm=cgm;
        this.ccy=ccy;
        this.lsalary=lsalary;
        this.hsalary=hsalary;
    }
    public Company(){}
    @Override
    public String toString() {
        return "Company{" +
                "cid=" + cid +
                ", zwName='" + zwName + '\'' +
                ", cname='" + cname + '\'' +
                ", place='" + place + '\'' +
                ", cxz='" + cxz + '\'' +
                ", cgm='" + cgm + '\'' +
                ", ccy='" + ccy + '\'' +
                ", lsalary=" + lsalary +
                ", hsalary=" + hsalary +
                '}';
    }


    public int getCid() {
        return cid;
    }
    public void setCid(int cid) {
        this.cid = cid;
    }
    public String getZwName() {
        return zwName;
    }
    public void setZwName(String zwName) {
        this.zwName = zwName;
    }
    public String getCname() {
        return cname;
    }
    public void setCname(String cname) {
        this.cname = cname;
    }
    public String getPlace() {
        return place;
    }
    public void setPlace(String place) {
        this.place = place;
    }
    public String getCxz() {
        return cxz;
    }
    public void setCxz(String cxz) {
        this.cxz = cxz;
    }
    public String getCgm() {
        return cgm;
    }
    public void setCgm(String cgm) {
        this.cgm = cgm;
    }
    public String getCcy() {
        return ccy;
    }
    public void setCcy(String ccy) {
        this.ccy = ccy;
    }
    public Double getLsalary() {
        return lsalary;
    }
    public void setLsalary(Double lsalary) {
        this.lsalary = lsalary;
    }
    public Double getHsalary() {
        return hsalary;
    }
    public void setHsalary(Double hsalary) {
        this.hsalary = hsalary;
    }
}
