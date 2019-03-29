package com.lq.model;

/**
* 卖家秀实体类
*
* @author jiajing
* 创建日期 2019/3/29
* @since
*/
public class Notice {

    /**公告id*/
    private String notice_id;

    /**标题*/
    private String notice_title;

    /**内容*/
    private String notice_content;

    /**创建时间*/
    private String createdate;

    /**用户*/
    private String u_id;

    /**图片id*/
    private String imagePath;

    /**公告描述*/
    private String notice_desc;


    public Notice() {
    }

    public String getNotice_id() {
        return notice_id;
    }

    public void setNotice_id(String notice_id) {
        this.notice_id = notice_id;
    }

    public String getNotice_title() {
        return notice_title;
    }

    public void setNotice_title(String notice_title) {
        this.notice_title = notice_title;
    }

    public String getNotice_content() {
        return notice_content;
    }

    public void setNotice_content(String notice_content) {
        this.notice_content = notice_content;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    public String getU_id() {
        return u_id;
    }

    public void setU_id(String u_id) {
        this.u_id = u_id;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public String getNotice_desc() {
        return notice_desc;
    }

    public void setNotice_desc(String notice_desc) {
        this.notice_desc = notice_desc;
    }

    @Override
    public String toString() {
        return "Notice{" +
                "notice_id='" + notice_id + '\'' +
                ", notice_title='" + notice_title + '\'' +
                ", notice_content='" + notice_content + '\'' +
                ", createdate='" + createdate + '\'' +
                ", u_id='" + u_id + '\'' +
                ", imagePath='" + imagePath + '\'' +
                ", notice_desc='" + notice_desc + '\'' +
                '}';
    }
}
