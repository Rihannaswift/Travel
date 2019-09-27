package com.qf.travel.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class TPlaneorder {
    private Integer id;

    private String booking;

    private String departurecity;

    private String arrivalcity;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date departuretime;

    private String airlinecompany;

    private String shipspace;

    private String realname;

    private String phonenumber;

    private String email;

    private String address;

    private String remarks;

    private Integer userid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBooking() {
        return booking;
    }

    public void setBooking(String booking) {
        this.booking = booking == null ? null : booking.trim();
    }

    public String getDeparturecity() {
        return departurecity;
    }

    public void setDeparturecity(String departurecity) {
        this.departurecity = departurecity == null ? null : departurecity.trim();
    }

    public String getArrivalcity() {
        return arrivalcity;
    }

    public void setArrivalcity(String arrivalcity) {
        this.arrivalcity = arrivalcity == null ? null : arrivalcity.trim();
    }

    public Date getDeparturetime() {
        return departuretime;
    }

    public void setDeparturetime(Date departuretime) {
        this.departuretime = departuretime;
    }

    public String getAirlinecompany() {
        return airlinecompany;
    }

    public void setAirlinecompany(String airlinecompany) {
        this.airlinecompany = airlinecompany == null ? null : airlinecompany.trim();
    }

    public String getShipspace() {
        return shipspace;
    }

    public void setShipspace(String shipspace) {
        this.shipspace = shipspace == null ? null : shipspace.trim();
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname == null ? null : realname.trim();
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber == null ? null : phonenumber.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}