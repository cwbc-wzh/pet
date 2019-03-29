package com.lq.controller;

import com.lq.mapper.ProductsMapper;
import com.lq.model.CartItem;
import com.lq.model.Products;
import com.lq.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 订单相关跳转
 *
 * @author jiajing
 * 创建日期 2019/3/13
 * @since
 */
@Controller
public class CartController {

    @Autowired
    private CartService cartService;

    @Autowired
    private ProductsMapper productsMapper;

    /**
     * 跳转购物车页面
     *
     * @return
     */
    @RequestMapping(value = "/user/showitem.do")
    public ModelAndView showItemJsp(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("/animalshowjsp/user/showitemlist");
        String u_id = (String) request.getSession().getAttribute("username");
        List<CartItem> list = cartService.queryCartItems(u_id);

        modelAndView.addObject("cartItemList", list);

        return modelAndView;
    }

    /***
     * 购买按钮ajax异步提交
     * @param request
     * @return
     */
    @RequestMapping(value = "/user/addShopCart.do")
    @ResponseBody
    public String addShopCart(HttpServletRequest request) {
        System.out.println("start animalController.loadAnimalJsp");
        String p_kid = request.getParameter("p_kid");
        String quantity = request.getParameter("quantity");

        String u_name = (String) request.getSession().getAttribute("username");
        cartService.addCartItemInfo(p_kid, u_name, quantity);

        return "SUCCESS";
    }

    /**
     * 生成订单订单数量减的操作
     *
     * @param request
     * @return
     */
    @RequestMapping(value = "/user/lessShopCart")
    @ResponseBody
    public CartItem lessShopCartInfo(HttpServletRequest request) {

        String cartItemId = request.getParameter("cartItemId");
        String quantity = request.getParameter("quantity");
        //购物车数量减一
        CartItem cartItem = null;
        try {
            cartItem = cartService.lessCartItemInfo(cartItemId, quantity);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cartItem;
    }


    /**
     * 批量删除购物车
     *
     * @param request
     * @return
     */
    @RequestMapping(value = "/user/deleteShopCart")
    public String deleteShopCart(HttpServletRequest request) {

        //购物车id
        String cartItemIds = request.getParameter("cartItemIds");
        boolean flag = cartService.deleteCartItemInfo(cartItemIds);
        if (!flag) {
            System.out.println("failed to delete");
        }
        return "redirect:/showitem.do";
    }


    /**
     * 跳转购物车订单页面
     *
     * @param request
     * @return
     */
    @RequestMapping(value = "/user/jumpShowJsp")

    public ModelAndView JumpShowJsp(HttpServletRequest request) {
        //以分号;分割的购物车号
        String cartItemIds = request.getParameter("cartItemIds");

        List<CartItem> cartItems = cartService.queryCartItemInfos(cartItemIds);
        ModelAndView modelAndView = new ModelAndView("/animalshowjsp/user/showitem");
        modelAndView.addObject("cartItemList", cartItems);
        modelAndView.addObject("cartItemIds", cartItemIds);
        return modelAndView;
    }




}
