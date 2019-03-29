package com.lq.controller;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.lq.model.Products;
import com.lq.model.User;
import com.lq.service.PetService;
import com.lq.service.UserService;
import com.lq.util.PageBean;
import com.lq.util.StringUtils;
import com.lq.util.VerifyCode;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;

/**
 * @author jiajing
 * 创建日期 2019/2/12
 * @since
 */
@Controller
public class LoginController {
    /**
     * 成员操作
     */
    @Autowired
    private UserService userService;

    /**
     * 宠物的操作
     */
    @Autowired
    private PetService petService;

    /***
     * 用户登录
     * @param username
     * @param password
     * @param request
     * @return
     */
    @RequestMapping(value = "/login")
    public String loginUser(String username, String password, HttpServletRequest request) {
        System.out.println("LoginController.loginUser username is " + username + " password is " + password);
        HttpSession session = request.getSession();
        User user = userService.queryUserInfo(username, password);
        if (user != null) {
            session.setAttribute("username", username);
        } else {
            return "/userlogin";
        }
        return "redirect:/Pet.do";
    }


    /***
     * 用户登录
     * @param username
     * @param password
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/checkLogin")
    @ResponseBody
    public String checkLogin(String username, String password, HttpServletRequest request, HttpServletResponse response) {
        System.out.println("LoginController.checkLogin username is " + username + " password is " + password);
        HttpSession session = request.getSession();
        User user = userService.queryUserInfo(username, password);
        if (user != null) {
            session.setAttribute("username", username);
        } else {
            return "FAIL";
        }
        return "SUCCESS";
    }


    @RequestMapping(value = "/findUser.do")
    @ResponseBody
    public String findUserInfo(@RequestParam String userName) {
        System.out.println("start LoginController.finUserInfo userName is " + userName);

        User user=userService.queryUserInfo(userName);
        if(user==null){
            return "SUCCESS";
        }
        return "FAIL";
    }

    /***
     * 用户注册
     * @param request
     * @return
     */
    @RequestMapping(value = "/register.do")
    @ResponseBody
    public String registerUser(HttpServletRequest request) {
        System.out.println("start LoginController.registerUser ");
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String codetext = request.getParameter("codetext");
        String code = (String) request.getSession().getAttribute("vCode");

        if(!codetext.equalsIgnoreCase(code)){
            return "FAIL";
        }
        User user=new User();
        user.setU_email(email);
        user.setU_name(name);
        user.setU_passwd(password);
        try {
            userService.addUserInfo(user);
        } catch (Exception e) {
            e.printStackTrace();
            return "FAIL";
        }
        return "SUCCESS";
    }

    @RequestMapping(value = "/registerJsp")
    public String registerJsp(){
        return "/Register";
    }

    /**
     * 生成验证码
     * @param request
     * @param response
     * @throws IOException
     */
    @RequestMapping(value="/VerifyCode")
    public void mm(HttpServletRequest request ,HttpServletResponse response) {
        VerifyCode vc = new VerifyCode();
        //获取一次性验证码图片
        BufferedImage image = vc.getImage();
        // 该方法必须在getImage()方法之后来调用
        //System.out.println(vc.getText());//获取图片上的文本
        try {
            //把图片写到指定流中
            VerifyCode.output(image, response.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
        // 把文本保存到session中，为LoginServlet验证做准备
        request.getSession().setAttribute("vCode", vc.getText());
    }

    /***
     * 用户注销
     * @return
     */
    @RequestMapping(value = "/logOut")
    public String logOut(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
//      清空session值
        session.invalidate();
        return "userlogin";
    }

    /***
     * 跳转到index.jsp界面并加载数据
     * @param currentPage   当前页码（默认为1）
     * @param model
     * @return
     */
    @RequestMapping(value = "/Pet.do")
    public String loadIndexJsp(@RequestParam(value = "currentPage", defaultValue = "0", required = false) int currentPage, Model model, HttpServletRequest request) {
        System.out.println("start LoginController.loadIndexJsp ");

        PageBean<Products> dogList = petService.queryProductByPage(currentPage, 4, "1");
        PageBean<Products> catList = petService.queryProductByPage(currentPage, 4, "2");

        request.getSession().setAttribute("dog", dogList);
        request.getSession().setAttribute("cat", catList);
        System.out.println("end LoginController.loadIndexJsp model is model");
        return "/index";
    }

    /***
     * 狗的翻页
     * @param currentPage
     * @param model
     * @param request
     * @return
     */
    @RequestMapping(value = "loadDogInfo.do")
    public String loadDogInfo(@RequestParam(value = "currentPage", defaultValue = "0", required = false) int currentPage, Model model, HttpServletRequest request) {
        System.out.println("LoginController.loadDogInfo currentPage is " + currentPage + " model is " + model);
        PageBean<Products> dogList = petService.queryProductByPage(currentPage, 4, "1");
        request.getSession().setAttribute("dog", dogList);
        System.out.println("LoginController.loadDogInfo currentPage is " + currentPage + " model is " + model + " dogList is " + dogList);
        return "index";
    }

    /***
     * 猫的翻页
     * @param currentPage
     * @param model
     * @param request
     * @return
     */
    @RequestMapping(value = "loadCatInfo.do")
    public String loadCatInfo(@RequestParam(value = "currentPage", defaultValue = "0", required = false) int currentPage, Model model, HttpServletRequest request) {
        System.out.println("LoginController.loadCatInfo currentPage is " + currentPage + " model is " + model);
        PageBean<Products> catList = petService.queryProductByPage(currentPage, 4, "2");
        request.getSession().setAttribute("cat", catList);
        System.out.println("LoginController.loadCatInfo currentPage is " + currentPage + " model is " + model + " catList is " + catList);
        return "index";
    }


}
