package com.lq.controller;

import com.lq.model.Order;
import com.lq.model.OrderItem;
import com.lq.model.Products;
import com.lq.service.CartService;
import com.lq.service.OrderService;
import com.lq.util.PageBean;
import com.lq.util.StringUtils;
import com.sun.javafx.binding.StringFormatter;
import org.json.HTTP;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;

/**
* 订单相关的请求拦截
*
* @author jiajing
* 创建日期 2019/3/21
* @since
*/
@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private CartService cartService;

    /**
     * 创建订单请求
     * @param request
     * @return
     */
    @RequestMapping(value = "/user/createOrderInfo")
    public ModelAndView createOrderInfo(HttpServletRequest request){
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        //购物车id
        String cartItemIds = request.getParameter("cartItemIds");

        //收货地址
        String address=request.getParameter("address");
        //收货人名称
        String receiveName=request.getParameter("receiveName");
        //收货人手机号
        String receivePhone=request.getParameter("receivePhone");

        String u_name= (String) request.getSession().getAttribute("username");

        Order order=new Order();
        order.setU_name(u_name);
        order.setO_address(address);
        order.setRealname(receiveName);
        order.setU_phone(receivePhone);
        String o_id = StringUtils.getUUID();
        order.setO_id(o_id);

        //创建订单 返回订单id
        double totalPrice =orderService.createOrder(order,cartItemIds);
        //删除购物车
        cartService.deleteCartItemInfo(cartItemIds);


        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("redirect:/animalshowjsp/user/ordersucc.jsp");
        modelAndView.addObject("orderId",o_id);
        modelAndView.addObject("totalPrice",totalPrice);
        modelAndView.addObject("address",address);

        return modelAndView;
    }

    /**
     * 支付界面
     * @param request
     * @return
     */
    @RequestMapping(value = "/user/paymentPre.do")
    public ModelAndView payMentPre(HttpServletRequest request){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("redirect:/animalshowjsp/user/pay.jsp");
        String oid=request.getParameter("oid");
        String totalPrice=request.getParameter("totalPrice");
        modelAndView.addObject("oid",oid);
        modelAndView.addObject("totalPrice",totalPrice);
        return modelAndView;
    }

    /**
     * 加载订单详情页面
     * @param request
     * @return
     */
    @RequestMapping(value = "/user/loadOrderListJsp")
    public String loadOrderListJsp(@RequestParam(value = "currentPage", defaultValue = "0", required = false) int currentPage, HttpServletRequest request){
        String userName= (String) request.getSession().getAttribute("username");

        PageBean<OrderItem> orderPageBean = orderService.findOrderListByUserName(currentPage, 5, userName);

        request.getSession().setAttribute("orderList", orderPageBean);


        return  "/animalshowjsp/user/orderList";
    }

    /**
     * 查看订单详情页
     * @param modelAndView
     * @param request
     * @return
     */
    @RequestMapping(value = "/user/OrderDesc")
    public ModelAndView pageTurningOrder(ModelAndView modelAndView,HttpServletRequest request){

        String o_id=request.getParameter("oid");

        OrderItem orderItem = orderService.findOrderItemByOid(o_id);

        modelAndView.setViewName("/animalshowjsp/user/orderDesc");
        modelAndView.addObject("order", orderItem);
        String btn = request.getParameter("btn");

        modelAndView.addObject("btn", btn);

        return  modelAndView;
    }

    @RequestMapping(value = "/user/cancelOrder")
    @ResponseBody
    public String cancelOrder(HttpServletRequest request){
        String oId=request.getParameter("o_id");
        String status=request.getParameter("status");

        boolean flag=orderService.updateOrderState(oId,status);
        if(flag){
            return "SUCCESS";
        }
        else {
            return "FAIL";
        }
    }



}
