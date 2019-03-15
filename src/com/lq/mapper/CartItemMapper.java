package com.lq.mapper;

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
}
