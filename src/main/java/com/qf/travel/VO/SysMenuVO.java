package com.qf.travel.VO;

public class SysMenuVO {
    private int menuId;
    private int menuParentId;
    private String menuName;
    private Boolean open = true;
    private Boolean checked;

    public int getMenuId() {
        return menuId;
    }

    public void setMenuId(int menuId) {
        this.menuId = menuId;
    }

    public int getMenuParentId() {
        return menuParentId;
    }

    public void setMenuParentId(int menuParentId) {
        this.menuParentId = menuParentId;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public Boolean getOpen() {
        return open;
    }

    public void setOpen(Boolean open) {
        this.open = open;
    }

    public Boolean getChecked() {
        return checked;
    }

    public void setChecked(Boolean checked) {
        this.checked = checked;
    }

    @Override
    public String toString() {
        return "SysMenuVO{" +
                "menuId=" + menuId +
                ", menuParentId=" + menuParentId +
                ", menuName='" + menuName + '\'' +
                ", open=" + open +
                ", checked=" + checked +
                '}';
    }
}
