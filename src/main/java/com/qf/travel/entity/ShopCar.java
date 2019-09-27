package com.qf.travel.entity;


import javax.servlet.http.HttpSession;


public class ShopCar {

    private TScenicDetails scenicDetails ;

    public TScenicDetails getScenicDetails() {
        return scenicDetails;
    }

    public void setScenicDetails(TScenicDetails scenicDetails) {
        this.scenicDetails = scenicDetails;
    }

    //提供一个方法给外界调用，然后得到一辆购物车
    public static ShopCar getShopCar(HttpSession session){
        ShopCar shopCar = (ShopCar) session.getAttribute("SHOP_CAR");
        if (shopCar == null) {
            shopCar = new ShopCar();
            session.setAttribute("SHOP_CAR", shopCar);
        }
        return shopCar;
    }
    //添加商品
    public void add(TScenicDetails tScenicDetails){
        boolean flag = true;

        if (getScenicDetails()!=null) {
            if (getScenicDetails().getId() == tScenicDetails.getId()) {
                flag = false;
                return;
            }

        }
        if (flag==true){
            setScenicDetails(tScenicDetails);
        }

    }




    public double getTotalPrice(int adult,int child){
        double totalPrice = 0;

        totalPrice = getScenicDetails().getAdultprice()*adult+getScenicDetails().getChildprice()*child;

        return totalPrice;
    }



}
