package com.lq.service.impl;

import com.lq.mapper.NoticeMapper;
import com.lq.model.Notice;
import com.lq.model.Products;
import com.lq.service.NoticeService;
import com.lq.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
*
* 公告逻辑实现类
* @author jiajing
* 创建日期 2019/3/29
* @since
*/
@Service
public class NoticeServiceImpl implements NoticeService {

    @Autowired
    private NoticeMapper noticeMapper;
    /**
     * 分页查询公告
     * @param currentPage 第几页1开始
     * @param pageSize  页大小
     * @param type 类型1，正常  2 已删除
     * @return
     */
    @Override
    public PageBean<Notice> finNoticeList(int currentPage, int pageSize, String type) {

        PageBean<Notice> noticePageBean = new PageBean<Notice>();

        int startIndex = (currentPage) * pageSize ;
        int end = (currentPage+1) * pageSize;
        int totolNum = noticeMapper.queryNoticeCount(type);
        double totalPageNum = Math.ceil(totolNum*1.0 / pageSize);
        noticePageBean.setCurrPage(currentPage);
        noticePageBean.setPageSize(pageSize);
        noticePageBean.setTotalCount(totolNum);
        noticePageBean.setTotalPage((int) (totalPageNum));
        List<Notice> notices = null;

        try {
            notices = noticeMapper.queryNoticeList(startIndex, end, type);
        } catch (Exception e) {
            System.out.println("NoticeServiceImpl.finNoticeList noticeMapper.queryNoticeList 发生错误 startIndex is" + startIndex);
        }
        noticePageBean.setLists(notices);
        System.out.println("end NoticeServiceImpl.finNoticeList productPageBean is " + noticePageBean.getLists());

        return noticePageBean;
    }
}
