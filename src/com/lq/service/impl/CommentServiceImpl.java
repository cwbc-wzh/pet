package com.lq.service.impl;

import com.lq.mapper.CommentMapper;
import com.lq.model.CommentInfo;
import com.lq.model.Notice;
import com.lq.service.CommentService;
import com.lq.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 留言板逻辑处理类
 *
 * @author jiajing
 * 创建日期 2019/3/30
 * @since
 */
@Service
public class CommentServiceImpl implements CommentService {


    @Autowired
    private CommentMapper commentMapper;
    /**
     * 分页查询留言板信息
     *
     * @param currentPage
     * @param pageSize
     * @param type
     * @return
     */
    @Override
    public PageBean<CommentInfo> findCommentPageBeam(int currentPage, int pageSize, String type) {

        PageBean<CommentInfo> commentInfoPageBean = new PageBean<CommentInfo>();

        int startIndex = (currentPage) * pageSize ;
        int end = (currentPage+1) * pageSize;
        int totolNum = commentMapper.queryCommentCount(type);
        double totalPageNum = Math.ceil(totolNum*1.0 / pageSize);
        commentInfoPageBean.setCurrPage(currentPage);
        commentInfoPageBean.setPageSize(pageSize);
        commentInfoPageBean.setTotalCount(totolNum);
        commentInfoPageBean.setTotalPage((int) (totalPageNum));
        List<CommentInfo> commentInfos = null;

        try {
            commentInfos = commentMapper.queryCommetInfo(startIndex, end, type);
        } catch (Exception e) {
            System.out.println("CommentServiceImpl.findCommentPageBeam commentMapper.queryCommetInfo 发生错误 startIndex is" + startIndex);
        }
        commentInfoPageBean.setLists(commentInfos);
        System.out.println("end CommentServiceImpl.findCommentPageBeam commentInfoPageBean is " + commentInfoPageBean.getLists());

        return commentInfoPageBean;
    }
}
