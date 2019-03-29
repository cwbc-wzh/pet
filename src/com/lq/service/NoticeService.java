package com.lq.service;

import com.lq.model.Notice;
import com.lq.util.PageBean;

/**
* 公告相关的逻辑
*
* @author jiajing
* 创建日期 2019/3/29
* @since
*/
public interface NoticeService {

    /**
     * 分页查询公告
     * @param currentPage
     * @param pageSize
     * @param type
     * @return
     */
    public PageBean<Notice> finNoticeList(int currentPage,int pageSize,String type);
}
