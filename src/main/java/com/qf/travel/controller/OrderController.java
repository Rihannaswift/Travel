package com.qf.travel.controller;

import com.github.pagehelper.PageInfo;
import com.qf.travel.common.Page;
import com.qf.travel.common.Result;
import com.qf.travel.entity.THotelorder;
import com.qf.travel.entity.TOrder;
import com.qf.travel.entity.TPlaneorder;
import com.qf.travel.service.THotelOrderService;
import com.qf.travel.service.TOrderService;
import com.qf.travel.service.TPlaneOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@RequestMapping("order")
@Controller
public class OrderController {

    @Autowired
    private TPlaneOrderService tPlaneOrderService;
    @Autowired
    private THotelOrderService tHotelOrderService;
    @Autowired
    private TOrderService tOrderService;

    //预定机票
    @RequestMapping("planeOrder")
    public String planeOrder(TPlaneorder tPlaneorder, HttpServletResponse response) throws IOException {
        int result = tPlaneOrderService.insertSelective(tPlaneorder);
        if (result>0){
            response.getWriter().write("<script>alert('Your order is completed，please wait...');location.href='../index.jsp'</script>");

        }
        return null;
    }

    //预定酒店
    @RequestMapping("hotelOrder")
    public String hotelOrder(THotelorder tHotelorder,HttpServletResponse response) throws IOException {
        int result = tHotelOrderService.insertSelective(tHotelorder);
        if (result>0){
            response.getWriter().write("<script>alert('Your order is completed，please wait...');location.href='../index.jsp'</script>");
        }
        return null;
    }

    //后台：分页查询酒店订单数据
    @RequestMapping("queryHotelOrder")
    public String queryHotelOrder(Page page, Model model){
        System.out.println("后台：进来了查询酒店订单数据........");
        PageInfo<THotelorder> pageInfo = tHotelOrderService.queryHotelOrder(page);
        model.addAttribute("pageInfo",pageInfo);//将pageInfo存起来
        model.addAttribute("url","order/queryHotelOrder");//就分页的url存起来
        return "back/order/order_hotel";
    }

    //后台：单个删除酒店订单数据，返回Result对象
    @RequestMapping("delHotelOrder")
    @ResponseBody
    public Result delHotelOrderById(Integer id){
        return tHotelOrderService.delHotelOrderById(id);
    }

    //后台：批量删除酒店订单的方法
    @RequestMapping("batchDelHotelOrder")
    @ResponseBody
    public Result batchDelHotelOrderByIds(@RequestParam("ids") List<Integer> ids){
        System.out.println("接收到的批量删除id:"+ids.toString());
        return tHotelOrderService.batchDelHotelOrderByIds(ids);
    }

    //后台：分页查询机票订单详情
    @RequestMapping("queryPlaneOrder")
    public String queryPlaneOrder(Page page,Model model){
        PageInfo<TPlaneorder> pageInfo = tPlaneOrderService.queryPlaneOrder(page);
        model.addAttribute("pageInfo",pageInfo);//将分页数据存起来
        model.addAttribute("url","order/queryPlaneOrder");
        return "back/order/order_plane";
    }

    //后台：单个删除机票订单的方法
    @RequestMapping("delPlaneOrder")
    @ResponseBody
    public Result delPlaneOrderById(Integer id){
        return tPlaneOrderService.delPlaneOrderById(id);
    }

    //后台：批量删除机票订单的方法
    @RequestMapping("batchDelPlaneOrder")
    @ResponseBody
    public Result batchDelPlaneOrderByIds(@RequestParam("ids") List<Integer> ids){
        return tPlaneOrderService.batchDelPlaneOrderByIds(ids);
    }

    //后端：查询景点订单
    @RequestMapping("queryScenicSpotOrder")
    public String queryScenicSpotOrderPage(Page page,Model model){
        System.out.println("进来了查询的页面...........");
        PageInfo<TOrder> pageInfo = tOrderService.queryScenicSpotOrderPage(page);
        model.addAttribute("pageInfo",pageInfo);//将分页数据存起来
        model.addAttribute("url","order/queryScenicSpotOrder");//将url存起来
        return "back/order/order_scenicSpot";
    }

    //后端:单个删除景点订单的方法
    @RequestMapping("delScenicSpotOrder")
    @ResponseBody
    public Result delScenicSpotOrderById(Integer id,HttpServletResponse response) throws IOException {
        return tOrderService.delScenicSpotOrderById(id);
    }

    //后端：批量删除景点订单的方法
    @RequestMapping("batchDelScenicSpotOrder")
    @ResponseBody
    public Result batchDelScenicSpotOrderByIds(@RequestParam("ids") List<Integer> ids,HttpServletResponse response) throws IOException {
        return tOrderService.batchDelScenicSpotOrderByIds(ids);
    }



}
