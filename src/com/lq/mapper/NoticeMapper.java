package com.lq.mapper;

import com.lq.model.Notice;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
*
* 公告数据库持久化
* @author jiajing
* 创建日期 2019/3/29
* @since
*/
public interface NoticeMapper {


    /**
     * 查询公告
     * @return
     */
    List<Notice> queryNoticeList(@Param("currPage") int currPage, @Param("end") int end,@Param("type") String type);

    /**
     * 查询公告总数
     * @param type
     * @return
     */
    int queryNoticeCount(@Param("type") String type);
}
