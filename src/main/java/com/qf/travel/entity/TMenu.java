package com.qf.travel.entity;

import java.util.Date;

public class TMenu {
    private Integer menuid;

    private Integer menuParentid;

    private String menuname;

    private Integer menutype;

    private String menupath;

    private String menudesc;

    private Integer isPublish;

    private Date creattime;

    private Date updatetime;

    public Integer getMenuid() {
        return menuid;
    }

    public void setMenuid(Integer menuid) {
        this.menuid = menuid;
    }

    public Integer getMenuParentid() {
        return menuParentid;
    }

    public void setMenuParentid(Integer menuParentid) {
        this.menuParentid = menuParentid;
    }

    public String getMenuname() {
        return menuname;
    }

    public void setMenuname(String menuname) {
        this.menuname = menuname == null ? null : menuname.trim();
    }

    public Integer getMenutype() {
        return menutype;
    }

    public void setMenutype(Integer menutype) {
        this.menutype = menutype;
    }

    public String getMenupath() {
        return menupath;
    }

    public void setMenupath(String menupath) {
        this.menupath = menupath == null ? null : menupath.trim();
    }

    public String getMenudesc() {
        return menudesc;
    }

    public void setMenudesc(String menudesc) {
        this.menudesc = menudesc == null ? null : menudesc.trim();
    }

    public Integer getIsPublish() {
        return isPublish;
    }

    public void setIsPublish(Integer isPublish) {
        this.isPublish = isPublish;
    }

    public Date getCreattime() {
        return creattime;
    }

    public void setCreattime(Date creattime) {
        this.creattime = creattime;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    @Override
    public String toString() {
        return "TMenu{" +
                "menuid=" + menuid +
                ", menuParentid=" + menuParentid +
                ", menuname='" + menuname + '\'' +
                ", menutype=" + menutype +
                ", menupath='" + menupath + '\'' +
                ", menudesc='" + menudesc + '\'' +
                ", isPublish=" + isPublish +
                ", creattime=" + creattime +
                ", updatetime=" + updatetime +
                '}';
    }
}