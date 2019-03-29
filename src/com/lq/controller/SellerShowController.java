package com.lq.controller;

import com.lq.mapper.NoticeMapper;
import com.lq.model.Notice;
import com.lq.service.NoticeService;
import com.lq.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

/**
 * 卖家秀相关的请求
 *
 * @author jiajing
 * 创建日期 2019/3/29
 * @since
 */
@Controller
public class SellerShowController {

    @Autowired
    private NoticeService noticeService;

    /**
     *  卖家秀页面拦截器
     * @param currentPage
     * @param request
     * @return
     */
    @RequestMapping(value = "/loadSellerShow")
    public String loadSellerShowController(@RequestParam(value = "currentPage", defaultValue = "0", required = false)
                                                       int currentPage, HttpServletRequest request){
        PageBean<Notice> noticePageBean=noticeService.finNoticeList(currentPage,4,"1");

        request.getSession().setAttribute("noticeList",noticePageBean);

        return "/animalshowjsp/notice/sellerShow";
    }

}
