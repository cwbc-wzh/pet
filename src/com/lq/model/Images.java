package com.lq.model;

/**
*
*
* @author jiajing
* 创建日期 2019/3/1
* @since
*/
public class Images {
    /**主键*/
    public String i_id;
    /**宠物主键*/
    public String p_kid;
    /**宠物详情页图片展示地址*/
    public String image_path;

    public Images() {
    }

    public String getI_id() {
        return i_id;
    }

    public void setI_id(String i_id) {
        this.i_id = i_id;
    }

    public String getP_kid() {
        return p_kid;
    }

    public void setP_kid(String p_kid) {
        this.p_kid = p_kid;
    }

    public String getImage_path() {
        return image_path;
    }

    public void setImage_path(String image_path) {
        this.image_path = image_path;
    }

    @Override
    public String toString() {
        return "Images{" +
                "i_id='" + i_id + '\'' +
                ", p_kid='" + p_kid + '\'' +
                ", image_path='" + image_path + '\'' +
                '}';
    }
}
