package com.lq.controller;

import com.lq.model.CartItem;
import com.lq.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
*
* 订单相关跳转
* @author jiajing
* 创建日期 2019/3/13
* @since
*/
@Controller
public class CartController {

    @Autowired
    private CartService cartService;

    /**
     * 跳转购物车页面
     * @return
     */
    @RequestMapping(value="/showitem.do")
    public ModelAndView showItemJsp(HttpServletRequest request){
        ModelAndView modelAndView=new ModelAndView("/animalshowjsp/user/showitemlist");
        String u_id= (String) request.getAttribute("username");
        List<CartItem> list=cartService.queryCartItems(u_id);
        modelAndView.addObject("cartItemList",list);

        return modelAndView;
    }

    /***
     * 购买按钮ajax异步提交
     * @param request
     * @return
     */
    @RequestMapping(value = "/user/addShopCart.do")
    @ResponseBody
    public String addShopCart(HttpServletRequest request){
        System.out.println("start animalController.loadAnimalJsp");
        String p_kid=request.getParameter("p_kid");
        String quantity=request.getParameter("quantity");

        String u_name= (String) request.getSession().getAttribute("username");
        cartService.addCartItemInfo(p_kid,u_name,quantity);

        return "SUCCESS";
    }

}
