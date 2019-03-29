package com.lq.mapper;

import com.lq.model.Order;
import com.lq.model.OrderItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
*
*  订单表的相关操作
* @author jiajing
* 创建日期 2019/3/19
* @since
*/
public interface OrderItemMapper {

    /***
     * 生成订单数据
     * @param order
     * @return
     */
    int insertOrderInfo(Order order);

    /**
     * 分页查询订单信息
     * @param currPage 首页
     * @param end   结束
     * @param u_name 用户名称
     * @return
     */
    List<OrderItem> queryOrderListByUserName(@Param("u_name") String u_name);

    /**
     * 获取个人用户的订单数量
     * @param u_name
     * @return
     */
    int queryOrderCountByUserName(@Param("u_name") String u_name);

    /**
     * 根据订单id查询订单详情
     * @param o_id
     * @return
     */
    OrderItem queryOrderItemByOId(@Param("o_id") String o_id);


    /**
     * 根据订单id修改订单状态
     * @param o_id
     * @param status
     * @return
     */
    int updateOrderStatus(@Param("o_id")String o_id,@Param("status")String status);
}
