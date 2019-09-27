package com.qf.travel.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class TTraveller {
    private Integer id;

    private String type;

    private String xing;

    private String ming;

    private String sex;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday;

    private String credentials;

    private String number;

    private String address;

    private Integer userid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getXing() {
        return xing;
    }

    public void setXing(String xing) {
        this.xing = xing == null ? null : xing.trim();
    }

    public String getMing() {
        return ming;
    }

    public void setMing(String ming) {
        this.ming = ming == null ? null : ming.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getCredentials() {
        return credentials;
    }

    public void setCredentials(String credentials) {
        this.credentials = credentials == null ? null : credentials.trim();
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number == null ? null : number.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}