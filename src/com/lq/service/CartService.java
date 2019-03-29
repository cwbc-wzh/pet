package com.lq.service;

import com.lq.model.CartItem;

import java.util.List;

/**
*
* 购物车订单相关操作
* @author jiajing
* 创建日期 2019/3/14
* @since
*/
public interface CartService {


    /**
     * 添加购物车
     * @param p_kid 物品id
     * @param u_id  用户id
     * @param quantity 个数
     */
    public void addCartItemInfo(String p_kid,String u_id,String quantity);

    /**
     * 购物车数量减数量
     * @param cartItemId 购物车id
     * @param quantity  数量
     * @return
     */
    public CartItem lessCartItemInfo(String cartItemId, String quantity);


    /**
     * 查询用户所有的购物
     * @param u_id
     * @return
     */
    public List<CartItem> queryCartItems(String u_id);

    /**
     * 根据购物车id 删除购物车
     * @param cartItems 以;分号分割的购物车id
     * @return
     */
    public boolean deleteCartItemInfo(String cartItems);

    /**
     * 根据购物车id查询购物车信息
     * @param cartItems
     * @return
     */
    public List<CartItem> queryCartItemInfos(String cartItems);

}
