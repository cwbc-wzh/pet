package com.lq.controller;

import com.lq.model.CommentInfo;
import com.lq.service.CommentService;
import com.lq.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

/**
* 留言板请求拦截
* 
* @author jiajing
* 创建日期 2019/3/29
* @since 
*/
@Controller
public class MessageBoardController {

    @Autowired
    private CommentService commentService;

    @RequestMapping(value = "loadMessageBoardJsp")
    public String loadMessageBoard(@RequestParam(value = "currentPage", defaultValue = "0", required = false)
                                               int currentPage, HttpServletRequest request){

        PageBean<CommentInfo> commentInfoPageBean=commentService.findCommentPageBeam(currentPage,5,"1");
        request.getSession().setAttribute("commentPageBean",commentInfoPageBean);

        return "/animalshowjsp/notice/messageBoard";
    }

}
