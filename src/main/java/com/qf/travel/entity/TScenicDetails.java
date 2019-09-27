package com.qf.travel.entity;

import java.util.Date;

public class TScenicDetails {
    private Integer id;

    private Date departuredate;

    private String standard;

    private Double adultprice;

    private Double childprice;

    private Integer acceptable;

    private String location;

    private Integer scenicid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getDeparturedate() {
        return departuredate;
    }

    public void setDeparturedate(Date departuredate) {
        this.departuredate = departuredate;
    }

    public String getStandard() {
        return standard;
    }

    public void setStandard(String standard) {
        this.standard = standard == null ? null : standard.trim();
    }

    public Double getAdultprice() {
        return adultprice;
    }

    public void setAdultprice(Double adultprice) {
        this.adultprice = adultprice;
    }

    public Double getChildprice() {
        return childprice;
    }

    public void setChildprice(Double childprice) {
        this.childprice = childprice;
    }

    public Integer getAcceptable() {
        return acceptable;
    }

    public void setAcceptable(Integer acceptable) {
        this.acceptable = acceptable;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location == null ? null : location.trim();
    }

    public Integer getScenicid() {
        return scenicid;
    }

    public void setScenicid(Integer scenicid) {
        this.scenicid = scenicid;
    }
}