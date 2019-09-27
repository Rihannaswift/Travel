package com.qf.travel.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class TOrder {
    private Integer id;

    private String orderid;

    private String title;

    private String scenic;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date departuretime;

    private Double adultprice;

    private Integer adult;

    private Double childprice;

    private Integer child;

    private Integer total;

    private Double money;

    private Integer ispay;

    private Integer userid;

    public Integer getIspay() {
        return ispay;
    }

    public void setIspay(Integer ispay) {
        this.ispay = ispay;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid == null ? null : orderid.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getScenic() {
        return scenic;
    }

    public void setScenic(String scenic) {
        this.scenic = scenic == null ? null : scenic.trim();
    }

    public Date getDeparturetime() {
        return departuretime;
    }

    public void setDeparturetime(Date departuretime) {
        this.departuretime = departuretime;
    }

    public Double getAdultprice() {
        return adultprice;
    }

    public void setAdultprice(Double adultprice) {
        this.adultprice = adultprice;
    }

    public Integer getAdult() {
        return adult;
    }

    public void setAdult(Integer adult) {
        this.adult = adult;
    }

    public Double getChildprice() {
        return childprice;
    }

    public void setChildprice(Double childprice) {
        this.childprice = childprice;
    }

    public Integer getChild() {
        return child;
    }

    public void setChild(Integer child) {
        this.child = child;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}