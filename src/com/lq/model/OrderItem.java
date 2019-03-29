package com.lq.model;


import java.util.List;

/**
 * 订单集合
 *
 * @author jiajing
 * 创建日期 2019/3/23
 * @since
 */
public class OrderItem {

    /**
     * 订单id
     */
    public String o_id;
    /**创建时间*/
    public String ordertime;
    /**总价格*/
    public double total;
    /**订单状态*/
    public String status;
    /**收货地址*/
    public String address;
    /**收件人*/
    public String realname;
    /**商品详情*/
    public List<Order> orders;

    public String getO_id() {
        return o_id;
    }

    public void setO_id(String o_id) {
        this.o_id = o_id;
    }

    public String getOrdertime() {
        return ordertime;
    }

    public void setOrdertime(String ordertime) {
        this.ordertime = ordertime;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }
}
