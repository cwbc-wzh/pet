package com.lq.model;

/**
*
* 留言板实体类
* @author jiajing
* 创建日期 2019/3/30
* @since
*/
public class CommentInfo {
    /**留言id*/
    private String comment_id;

    /**留言内容*/
    private String comment_content;

    /**卖家秀标题id*/
    private String notice_id;

    /**创建时间*/
    private String create_date;

    /**用户id*/
    private String u_id;

    /**用户图像*/
    private String u_image;

    public CommentInfo() {
    }

    public String getComment_id() {
        return comment_id;
    }

    public void setComment_id(String comment_id) {
        this.comment_id = comment_id;
    }

    public String getComment_content() {
        return comment_content;
    }

    public void setComment_content(String comment_content) {
        this.comment_content = comment_content;
    }

    public String getNotice_id() {
        return notice_id;
    }

    public void setNotice_id(String notice_id) {
        this.notice_id = notice_id;
    }

    public String getCreate_date() {
        return create_date;
    }

    public void setCreate_date(String create_date) {
        this.create_date = create_date;
    }

    public String getU_id() {
        return u_id;
    }

    public void setU_id(String u_id) {
        this.u_id = u_id;
    }

    public String getU_image() {
        return u_image;
    }

    public void setU_image(String u_image) {
        this.u_image = u_image;
    }

    @Override
    public String toString() {
        return "CommentInfo{" +
                "comment_id='" + comment_id + '\'' +
                ", comment_content='" + comment_content + '\'' +
                ", notice_id='" + notice_id + '\'' +
                ", create_date='" + create_date + '\'' +
                ", u_id='" + u_id + '\'' +
                ", u_image='" + u_image + '\'' +
                '}';
    }
}
