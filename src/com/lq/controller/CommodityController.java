package com.lq.controller;

import com.lq.model.Products;
import com.lq.service.PetService;
import com.lq.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
* 宠物相关物品
*
* @author jiajing
* 创建日期 2019/3/24
* @since
*/
@Controller
public class CommodityController {


    @Autowired
    private PetService petService;

    @RequestMapping(value = "/commodityJsp")
    public ModelAndView commodityJsp(@RequestParam(value = "currentPage", defaultValue = "0", required = false) int currentPage,HttpServletRequest request){
        ModelAndView modelAndView=new ModelAndView();
        String p_kind=request.getParameter("p_kind");
        System.out.println("start LoginController.loadIndexJsp ");

        PageBean<Products> commodityList = petService.queryProductByPage(currentPage, 4, p_kind);

        request.getSession().setAttribute("commodity", commodityList);
        System.out.println("end CommodityController.commodityJsp model is model");

        modelAndView.setViewName("/animalshowjsp/commodityShow");
        modelAndView.addObject("p_kind",p_kind);
        return modelAndView;
    }

    @RequestMapping(value = "/loadCommodityInfo")
    public ModelAndView loadCommodityInfo(@RequestParam(value = "currentPage", defaultValue = "0", required = false) int currentPage, Model model, HttpServletRequest request){
        System.out.println("CommodityController.loadCommodityInfo currentPage is " + currentPage + " model is " + model);
        String p_kind=request.getParameter("p_kind");
        PageBean<Products> commodityList = petService.queryProductByPage(currentPage, 4, p_kind);
        request.getSession().setAttribute("commodity", commodityList);
        System.out.println("CommodityController.loadCommodityInfo currentPage is " + currentPage + " model is " + model + " dogList is " + commodityList);
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("/animalshowjsp/commodityShow");
        modelAndView.addObject("p_kind",p_kind);
        return modelAndView;

    }
}
