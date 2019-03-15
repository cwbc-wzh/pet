package com.lq.model;

/**
 * 订单表
 *
 * @author jiajing
 * 创建日期 2019/3/12
 * @since
 */
public class Order {
    /**
     * 定义详细订单编号
     */
    private String o_id;
    /**
     * 订单的商品编号
     */
    private String p_kid;
    /**
     * 订单的商品名
     */
    private String p_name;
    /**
     * 定义用户名
     */
    private String u_name;
    /**
     * 用户电话
     */
    private int u_phone;
    /**
     * 定义用户的地址
     */
    private String o_address;
    /**
     * 订单的价钱
     */
    private int o_price;
    /**
     * 订单的件数
     */
    private int o_number;
    /**
     * 订单的生成日期
     */
    private String o_datetime;
    /**
     * 订单状态 1.等待付款 2.准备发货 3.等待确认 4.交易成功 5.已取消
     */
    private String o_status;

    public String getO_id() {
        return o_id;
    }

    public void setO_id(String o_id) {
        this.o_id = o_id;
    }

    public String getP_kid() {
        return p_kid;
    }

    public void setP_kid(String p_kid) {
        this.p_kid = p_kid;
    }

    public String getP_name() {
        return p_name;
    }

    public void setP_name(String p_name) {
        this.p_name = p_name;
    }

    public String getU_name() {
        return u_name;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name;
    }

    public int getU_phone() {
        return u_phone;
    }

    public void setU_phone(int u_phone) {
        this.u_phone = u_phone;
    }

    public String getO_address() {
        return o_address;
    }

    public void setO_address(String o_address) {
        this.o_address = o_address;
    }

    public int getO_price() {
        return o_price;
    }

    public void setO_price(int o_price) {
        this.o_price = o_price;
    }

    public int getO_number() {
        return o_number;
    }

    public void setO_number(int o_number) {
        this.o_number = o_number;
    }

    public String getO_datetime() {
        return o_datetime;
    }

    public void setO_datetime(String o_datetime) {
        this.o_datetime = o_datetime;
    }

    public String getO_status() {
        return o_status;
    }

    public void setO_status(String o_status) {
        this.o_status = o_status;
    }

    @Override
    public String toString() {
        return "Order{" +
                "o_id='" + o_id + '\'' +
                ", p_kid=" + p_kid +
                ", p_name='" + p_name + '\'' +
                ", u_name='" + u_name + '\'' +
                ", u_phone=" + u_phone +
                ", o_address='" + o_address + '\'' +
                ", o_price=" + o_price +
                ", o_number=" + o_number +
                ", o_datetime='" + o_datetime + '\'' +
                ", o_status='" + o_status + '\'' +
                '}';
    }
}
