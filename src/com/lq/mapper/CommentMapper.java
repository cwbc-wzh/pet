package com.lq.mapper;

import com.lq.model.CommentInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
* 留言板持久化操作
* 
* @author jiajing
* 创建日期 2019/3/30
* @since 
*/
public interface CommentMapper {

    /**
     *  查询用户
     * @param currPage
     * @param end
     * @param type
     * @return
     */
    public List<CommentInfo> queryCommetInfo(@Param("currPage") int currPage, @Param("end") int end, @Param("type") String type);


    public int queryCommentCount(@Param("type") String type);
}
