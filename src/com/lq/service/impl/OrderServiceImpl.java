package com.lq.service.impl;

import com.lq.mapper.CartItemMapper;
import com.lq.mapper.OrderItemMapper;
import com.lq.mapper.ProductsMapper;
import com.lq.model.CartItem;
import com.lq.model.Order;
import com.lq.model.OrderItem;
import com.lq.model.Products;
import com.lq.service.OrderService;
import com.lq.util.Constant;
import com.lq.util.PageBean;
import com.lq.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 订单相关的逻辑处理
 *
 * @author jiajing
 * 创建日期 2019/3/21
 * @since
 */
@Service
public class OrderServiceImpl implements OrderService {


    @Autowired
    private OrderItemMapper orderItemMapper;

    @Autowired
    private CartItemMapper cartItemMapper;

    @Autowired
    private ProductsMapper productsMapper;

    /**
     * 创建订单
     * 同一批的商品订单号是一样的
     *
     * @param order
     * @return 总价钱
     */
    @Override
    public double createOrder(Order order, String cartItemIds) {

        if (order == null || StringUtils.isEmpty(cartItemIds)) {
            return 0;
        }
        double totalPrice = 0.0;
        try {
            String[] cartItemArr = cartItemIds.split(";");
            order.setO_status(Constant.ORDERWAITINGFORPAYMENT);

            for (String cartItemId : cartItemArr) {
                if (!StringUtils.isEmpty(cartItemId)) {
                    CartItem cartItem = cartItemMapper.queryCartItemByCartItemId(cartItemId);
                    cartItem.setProducts(productsMapper.queryProductById(cartItem.getP_kid()));
                    order.setP_kid(cartItem.getP_kid());
                    order.setP_name(cartItem.getProducts().getP_name());
                    order.setO_price(cartItem.getProducts().getP_price());
                    order.setO_number(cartItem.getQuantity());
                    orderItemMapper.insertOrderInfo(order);
                    totalPrice += cartItem.quantity * cartItem.getProducts().getP_price();
                }
            }
        } catch (Exception e) {
            System.out.println("插入订单表失败" + e.getMessage());
            return 0;
        }
        return totalPrice;
    }

    /**
     * 根据用户名称查询订单信息
     *
     * @param currentPage 页码
     * @param pageSize    页大小
     * @param userName    用户名
     * @return
     */
    @Override
    public PageBean<OrderItem> findOrderListByUserName(int currentPage, int pageSize, String userName) {

        PageBean<OrderItem> orderPageBean = new PageBean<OrderItem>();
        //做一下保护防止参数有问题
        if (pageSize == 0) {
            currentPage = orderPageBean.getCurrPage();
            pageSize = orderPageBean.getPageSize();
        }
        int startIndex = (currentPage) * pageSize;
        int end = (currentPage + 1) * pageSize;
        List<OrderItem> orderList = null;

        try {
            orderList = orderItemMapper.queryOrderListByUserName(userName);
        } catch (Exception e) {
            System.out.println("petServiceImpl.queryProductByPage productsMapper.queryProductsList 发生错误 startIndex is" + startIndex + e.getMessage());

        }
        int totolNum = orderList.size();
        double totalPageNum = Math.ceil(totolNum * 1.0 / pageSize);
        orderPageBean.setCurrPage(currentPage);
        orderPageBean.setPageSize(pageSize);
        orderPageBean.setTotalCount(totolNum);
        orderPageBean.setTotalPage((int) (totalPageNum));

        double total = 0.0;
        OrderItem orderItem;

        List<OrderItem> orderLists = new ArrayList<>();
        for (int i = startIndex; i < orderList.size(); i++) {
            if (i >= end) {
                break;
            }
            orderItem = orderList.get(i);
            orderItem.setAddress(orderItem.getOrders().get(0).getO_address());
            orderItem.setOrdertime(orderItem.getOrders().get(0).getO_datetime());
            orderItem.setRealname(orderItem.getOrders().get(0).getRealname());
            orderItem.setStatus(orderItem.getOrders().get(0).getO_status());
            total = 0.0;
            for (Order order : orderItem.getOrders()) {
                total = total + order.getO_price() * order.getO_number();
            }
            orderItem.setTotal(total);
            if (orderList != null) {
                orderLists.add(orderItem);
            }
        }
        orderPageBean.setLists(orderLists);
        System.out.println("end petServiceImpl.queryProductByPage productPageBean is " + orderPageBean.getLists());

        return orderPageBean;
    }

    /**
     * 根据订单id查询订单详情
     *
     * @param oid
     * @return
     */
    @Override
    public OrderItem findOrderItemByOid(String oid) {


        OrderItem orderItem = new OrderItem();
        orderItem = orderItemMapper.queryOrderItemByOId(oid);
        if (orderItem == null||orderItem.getOrders()==null) {
            return orderItem;
        }
        double total = 0.0;
        orderItem.setAddress(orderItem.getOrders().get(0).getO_address());
        orderItem.setOrdertime(orderItem.getOrders().get(0).getO_datetime());
        orderItem.setRealname(orderItem.getOrders().get(0).getRealname());
        orderItem.setStatus(orderItem.getOrders().get(0).getO_status());
        for (Order order : orderItem.getOrders()) {
            total = total + order.getO_price() * order.getO_number();
        }
        orderItem.setTotal(total);


        return orderItem;
    }

    /**
     * 修改订单详情
     * @param o_id
     * @param status
     * @return
     */
    @Override
    public boolean updateOrderState(String o_id, String status){
        boolean flag=false;

        if(!StringUtils.isEmpty(o_id)&&!StringUtils.isEmpty(status)){
            try {
                orderItemMapper.updateOrderStatus(o_id,status);
                flag=true;
            } catch (Exception e) {
                e.printStackTrace();
                flag=false;
            }
        }
        return flag;
    }


}
