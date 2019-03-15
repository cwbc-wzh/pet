package com.lq.model;

import java.io.Serializable;
import java.util.List;

public class Products implements Serializable {
    /**
     * 各宠物不同种类的编号
     */
    public String p_kid;
    /**
     * 各宠物图片的路径
     */
    public String p_path;
    /**
     * 物品种类1狗2猫 3屋舍 4磨牙玩具 5.玩具碗
     */
    public String p_kind;
    /**
     * 各种不同种类的编号
     */
    public String p_id;
    /**
     * 宠物年龄
     */
    public String p_age;
    /**
     * 疫苗针数
     */
    public int p_num;
    /**
     * 宠物性别
     */
    public String p_sex;
    /**
     * 宠物价格
     */
    public double p_price;
    /**
     * 体型
     */
    public String p_bodytype;
    /**
     * 卖出数量
     */
    public int p_purchase;

    /**
     * 宠物名称
     */
    public String p_name;

    /**图片*/
    public List<Images> imagesList;

    /**市场价*/
    public int market_price;

    /**标题*/
    public String p_title;

    public Products(String p_path, int p_kid, String p_kind, int p_id2, String p_age, int p_num, String p_sex, int p_price) {
    }

    public int getMarket_price() {
        return market_price;
    }

    public void setMarket_price(int market_price) {
        this.market_price = market_price;
    }

    public Products() {
    }


    public String getP_kid() {
        return p_kid;
    }

    public void setP_kid(String p_kid) {
        this.p_kid = p_kid;
    }

    public String getP_kind() {
        return p_kind;
    }

    public void setP_kind(String p_kind) {
        this.p_kind = p_kind;
    }

    public String getP_id() {
        return p_id;
    }

    public void setP_id(String p_id) {
        this.p_id = p_id;
    }

    public double getP_price() {
        return p_price;
    }

    public void setP_price(double p_price) {
        this.p_price = p_price;
    }

    public String getP_age() {
        return p_age;
    }

    public void setP_age(String p_age) {
        this.p_age = p_age;
    }

    public int getP_num() {
        return p_num;
    }

    public void setP_num(int p_num) {
        this.p_num = p_num;
    }

    public String getP_sex() {
        return p_sex;
    }

    public void setP_sex(String p_sex) {
        this.p_sex = p_sex;
    }



    public void setP_price(int p_price) {
        this.p_price = p_price;
    }

    public String getP_path() {
        return p_path;
    }

    public void setP_path(String p_path) {
        this.p_path = p_path;
    }

    public String getP_bodytype() {
        return p_bodytype;
    }

    public void setP_bodytype(String p_bodytype) {
        this.p_bodytype = p_bodytype;
    }

    public int getP_purchase() {
        return p_purchase;
    }

    public void setP_purchase(int p_purchase) {
        this.p_purchase = p_purchase;
    }

    public String getP_name() {
        return p_name;
    }

    public void setP_name(String p_name) {
        this.p_name = p_name;
    }

    public List<Images> getImagesList() {
        return imagesList;
    }

    public void setImagesList(List<Images> imagesList) {
        this.imagesList = imagesList;
    }

    public String getP_title() {
        return p_title;
    }

    public void setP_title(String p_title) {
        this.p_title = p_title;
    }

    @Override
    public String toString() {
        return "Products{" +
                "p_kid=" + p_kid +
                ", p_path='" + p_path + '\'' +
                ", p_kind='" + p_kind + '\'' +
                ", p_id=" + p_id +
                ", p_age='" + p_age + '\'' +
                ", p_num=" + p_num +
                ", p_sex='" + p_sex + '\'' +
                ", p_price=" + p_price +
                ", p_bodytype='" + p_bodytype + '\'' +
                ", p_purchase=" + p_purchase +
                ", p_name='" + p_name + '\'' +
                ", imagesList=" + imagesList +
                ", market_price=" + market_price +
                ", p_title='" + p_title + '\'' +
                '}';
    }
}
