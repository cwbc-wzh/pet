package com.lq.service;

import com.lq.model.Order;
import com.lq.model.OrderItem;
import com.lq.util.PageBean;

import java.util.List;

/**
* 订单相关操作
* 
* @author jiajing
* 创建日期 2019/3/20
* @since 
*/
public interface OrderService {

    /**
     * 创建订单
     * @param order
     * @return
     */
    public double createOrder(Order order,String cartItemIds);

    /**
     *  分页查询用户订单
     * @param currentPage
     * @param pageSize
     * @param userName
     * @return
     */
    public PageBean<OrderItem> findOrderListByUserName(int currentPage, int pageSize, String userName);

    /**
     * 根据订单id查询订单
     * @param oid
     * @return
     */
    public OrderItem findOrderItemByOid(String oid);

    /***
     * 修改订单状态
     * @param o_id
     * @param status
     * @return
     */
    boolean updateOrderState(String o_id,String status);
}
