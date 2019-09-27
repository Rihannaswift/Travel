package com.qf.travel.controller;

import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.qf.travel.common.Page;
import com.qf.travel.entity.*;
import com.qf.travel.service.*;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@RequestMapping("bookScenic")
@Controller
public class BookScenicController {

    @Autowired
    private TScenicService tScenicService;
    @Autowired
    private TScenicDetailsService tScenicDetailsService;
    @Autowired
    private TContactService tContactService;
    @Autowired
    private TTravellerService tTravellerService;
    @Autowired
    private TOrderService tOrderService;

    @RequestMapping("scenic")
    public String getScenicList(ModelMap map){
        List<TScenic> scenicList = tScenicService.getList();
        map.put("scenicList",scenicList);
        return "domestic_index";
    }

    @RequestMapping("scenic_details/{id}")
    public String getScenicDetails(@PathVariable("id") int id, ModelMap map){
        TScenic tScenic = tScenicService.selectByPrimaryKey(id);
        List<TScenicDetails> scenicDetailsList = tScenicDetailsService.getScenicDetailsList(id);
        map.put("tScenic",tScenic);
        map.put("scenicDetailsList",scenicDetailsList);
        return "domesticInfo";
    }


    @RequestMapping("bookingStepThree/{id}")
    public String bookingStepThree(@PathVariable int id, ModelMap map, HttpSession session){
        System.out.println(id);
        TScenicDetails tScenicDetails = tScenicDetailsService.selectByPrimaryKey(id);
        TScenic tScenic = tScenicService.selectByPrimaryKey(tScenicDetails.getScenicid());
        ShopCar shopCar = ShopCar.getShopCar(session);
        session.setAttribute("tScenic",tScenic);
        shopCar.add(tScenicDetails);

        return "redirect:../../booking_step3.jsp";
    }

    //添加联系人
    @RequestMapping("addContact")
    @ResponseBody
    public TContact addContact(TContact tContact){
        TContact contact = tContactService.addContact(tContact);
        return contact;
    }

    //获得常用联系人
    @RequestMapping("getIsUsedContact")
    @ResponseBody
    public TContact getIsUsedContact(int userId){
        TContact contact = tContactService.getIsUsedContact(userId);
        return contact;
    }

    //添加旅客
    @RequestMapping("addTraveller")
    @ResponseBody
    public TTraveller addTraveller(TTraveller tTraveller){
        TTraveller traveller = tTravellerService.addTraveller(tTraveller);
        return traveller;
    }

    //添加留言
    @RequestMapping("addMessage")
    @ResponseBody
    public String addMessage(String message){

        int result = tContactService.addMessage(message);
        if (result>0){
            return message;
        }
        return null;
    }

    //提交订单
    @RequestMapping("confirmSubmit")
    public void confirmSubmit(TOrder order, HttpServletResponse response) throws IOException {
        String uuid = UUID.randomUUID().toString();
        order.setOrderid(uuid);
        int result = tOrderService.insertSelective(order);
        if (result>0){
            response.getWriter().write("1");
        }
    }

    //跳转支付页面，并查询订单展示
    @RequestMapping("pay")
    public String pay(int total,int userid,HttpSession session){
        System.out.println("total-->"+total+",userid-->"+userid);
        TContact contact = tContactService.getByUserId(userid);
        List<TTraveller> travellerList = tTravellerService.getListByTotal(total,userid);
        TOrder order = tOrderService.getByUserId(userid);
        session.setAttribute("orderInfo",order);
        session.setAttribute("travellerInfo",travellerList);
        session.setAttribute("contactInfo",contact);
        return "redirect:../booking_step4_01.jsp";
    }
    //支付页面
    @RequestMapping("confirmOrder/{orderid}")
    public String confirmOrder(@PathVariable("orderid") String orderid){
        int result = tOrderService.confirmOrder(orderid);
        if (result>0){
            return "booking_step4_02";
        }
        return null;
    }

    //我的订单
    @RequestMapping("getAllOrders")
    public String getAllOrders(int id, Page page,ModelMap map){

        PageInfo<TOrder> pageInfo = tOrderService.getgetAllOrders(page,id);
        map.put("pageInfo",pageInfo);
        map.put("url","/bookScenic/getAllOrders");
        return "orders";
    }


    //后端：查询所有景点的数据
    @RequestMapping("pageByCondition")
    public String queryScenicSpotList(String title,Page page,Model model){
        PageInfo<TScenic> pageInfo = tScenicService.queryScenicSpotList(title,page);
        model.addAttribute("pageInfo",pageInfo);//将分页数据存起来
        model.addAttribute("url","bookScenic/pageByCondition");//将url存起来
        model.addAttribute("title",title);//将title存起来
        Map<String,Object> map = new HashMap<>();
        map.put("title",title);
        model.addAttribute("map",new Gson().toJson(map));//将map存起来
        return "back/scenicSpot/scenicSpotList";
    }

    //后端：单个删除景点的方法
    @RequiresPermissions("bookScenic:del")
    @RequestMapping("del")
    public void delscenicSpotById(Integer id, HttpServletResponse response) throws IOException {
        int result = tScenicService.deleteByPrimaryKey(id);
        if (result>0){//删除成功
            response.getWriter().write("1");
        }
    }

    //后端：批量删除景点的方法
    @RequiresPermissions("bookScenic:batchDel")
    @RequestMapping("batchDel")
    public void batchDelscenicSpotByIds(Integer[] id,HttpServletResponse response) throws IOException {
        System.out.println("后台接收到批量删除景点的数组id:"+id.toString());
        int count = tScenicService.batchDelscenicSpotByIds(id);
        if (count>0){//删除成功
            response.getWriter().write("1");
        }
    }

    //后端:回显添加景点界面的方法
    @RequiresPermissions("bookScenic:addScenicSpot")
    @RequestMapping("addScenicSpot")
    public String addScenicSpot(){
        return "back/scenicSpot/addScenicSpot";
    }

    //后端：添加景点的方法
    @RequestMapping("add")
    public String addScenicSpot(@RequestParam("file") MultipartFile file,TScenic tScenic,HttpServletRequest request) throws IOException {
        //测试代码
        System.out.println("接收到文件的值是:"+file.getOriginalFilename());//niubeishan.jpg
        System.out.println("接收到tScenic对象的内容的是:"+tScenic.toString());
        //1.文件上传到images中
        String realPath = request.getSession().getServletContext().getRealPath("images");
        String fileName = realPath+ File.separator+file.getOriginalFilename();
        //D:\Tomcat\apache-tomcat-7.0.57-windows-x86\apache-tomcat-7.0.57\webapps\ROOT\images\niubeishan.jpg
        FileCopyUtils.copy(file.getInputStream(),new FileOutputStream(fileName));
        //2.给TScenic中的image赋值，拼接字符串
        tScenic.setImage("images/"+file.getOriginalFilename());
        //3.向数据库中添加数据
        tScenicService.insertSelective(tScenic);
        //4.跳转到景点的分页查询
        return "redirect:bookScenic/pageByCondition";
    }

    //后台：编辑景点的回显
    @RequiresPermissions("bookScenic:toUpdate")
    @RequestMapping("toUpdate")
    public String toUpdate(Integer id,Model model){
        System.out.println("接收编辑景点的回显id:"+id);
        TScenic tScenic = tScenicService.selectByPrimaryKey(id);
        model.addAttribute("tScenic",tScenic);//存起来
        return "back/scenicSpot/updateScenicSpot";
    }

    //后台：编辑景点
    @RequestMapping("update")
    public String update(@RequestParam("file") MultipartFile file,TScenic tScenic,HttpServletRequest request) throws IOException {
        //测试
        System.out.println("景点编辑-接收到的file的名称:"+file.getOriginalFilename());
        System.out.println("景点编辑-接收到的tescenic的值:"+tScenic.toString());
        //1.上传更新的文件项
        String realPath = request.getSession().getServletContext().getRealPath("images");
        String fileName = realPath+File.separator+file.getOriginalFilename();
        FileCopyUtils.copy(file.getInputStream(),new FileOutputStream(fileName));
        //2.拼接image的值
        tScenic.setImage("images/"+file.getOriginalFilename());
        //3.更新数据库数据
        tScenicService.updateByPrimaryKeySelective(tScenic);
        //4.跳转分页查询
        return "redirect:bookScenic/pageByCondition";
    }

    //前端：测试，展示景点所在的位置
    @RequestMapping("location")
    public String location(){
        System.out.println("进来了景点位置的展现............");
        return "locationTest";
    }

    //根据地图显示的关键字去后台查询数据
    @RequestMapping("searchSpot")
    @ResponseBody
    public List<TScenic> searchSpotByKeyStr(String keyStr,Model model,HttpServletResponse response,HttpSession session) throws IOException {
        System.out.println("后台根据地图深圳市查询相关景点..............");
        List<TScenic> list = tScenicService.searchSpotByKeyStr(keyStr);
        System.out.println("得到的集合内容是:"+list.toString());
        return list;
    }


}
