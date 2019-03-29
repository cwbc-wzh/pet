package com.lq.service;

import com.lq.model.CommentInfo;
import com.lq.util.PageBean;

/**
* 留言板相关的逻辑处理类
* 
* @author zhushuai
* 创建日期 2019/3/30
* @since 
*/

public interface CommentService {

    /**
     * 分页查询留言板信息
     * @param currentPage
     * @param pageSize
     * @param type
     * @return
     */
    public PageBean<CommentInfo> findCommentPageBeam(int currentPage,int pageSize,String type );
 }
