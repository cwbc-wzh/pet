package com.lq.mapper;

import com.lq.model.Cart;
import com.lq.model.CartItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
*
* 对购物车相关操作
* @author jiajing
* 创建日期 2019/3/14
* @since
*/
public interface CartItemMapper {


    /**
     * 查询购物车中是否含有该物品
     * @param kid 物品id
     * @param uId   用户id
     * @return
     */
    public CartItem queryCartItemInfoByKid(@Param("p_kid") String kid,@Param("uId") String uId);


    /**
     * 更改购物车的数量
     * @param kid 物品id
     * @param uId 用户账户
     * @param quantity 物品数量
     * @return
     */
    public int updateCartItemInfo(@Param("p_kid") String kid,@Param("uId") String uId,@Param("quantity") int quantity);


    /**
     * 新增购物车
     * @param cartItem
     * @return
     */
    public int insertCartItemInfo(CartItem cartItem);

    /**
     * 查询用户购物车
     * @param u_id
     * @return
     */
    public List<CartItem> queryCartItemsByUId(String u_id);

    /**
     * 根据购物车id来修改物品个数
     * @param cartItemId 购物车id
     * @param quantity 数量
     * @return
     */
    public int updateCartItemByCartInfo(@Param("cartItemId") String cartItemId,@Param("quantity") int quantity);

    /**
     * 根据购物车id来查询物品信息
     * @param cartItemId
     * @return
     */
    public CartItem queryCartItemByCartItemId(@Param("cartItemId") String cartItemId);


    /**
     * 批量删除购物车
     * @param cartItemIds 购物车id
     * @return
     */
    public int batchDeleteCartItem(@Param("cartItemIds") String []cartItemIds);

    /**
     * 批量查询购物车信息
     * @param cartItemIds 购物id
     * @return
     */
    List<CartItem> batchQueryCartItemByID(@Param("cartItemIds") String []cartItemIds);


}
