package com.lq.controller;

import com.lq.model.Products;
import com.lq.service.PetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
*
*
* @author jiajing
* 创建日期 2019/3/1
* @since
*/
@Controller
public class AnimalController {

    @Autowired
    private PetService petService;
    /***
     * 加载详情页
     * @return
     */
    @RequestMapping("loadAnimalJsp")
    public ModelAndView loadAnimalJsp(HttpServletRequest request, HttpServletResponse response){
        System.out.println("start animalController.loadAnimalJsp");
        String p_kid=request.getParameter("p_kid");
        Products products=petService.queryProductsByKid(p_kid);
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("/animalshowjsp/animalshow");
        modelAndView.addObject("products",products);
        return modelAndView;
    }



}
