package com.lq.service.impl;

import com.lq.mapper.CartItemMapper;
import com.lq.model.CartItem;
import com.lq.service.CartService;
import com.lq.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
* 购物车订单相关操作实现类
*
* @author jiajing
* 创建日期 2019/3/14
* @since
*/
@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartItemMapper cartItemMapper;
    /**
     * 添加购物车
     * @param pKId 物品id
     * @param uId  用户id
     * @param quantity 个数
     */
    @Override
    public void addCartItemInfo(String pKId, String uId, String quantity) {
        if(!StringUtils.isNum(quantity)){
            quantity="0";
        }
        CartItem cartItem=cartItemMapper.queryCartItemInfoByKid(pKId,uId);
        //新增购物车
        if(cartItem==null){
            cartItem=new CartItem();
            cartItem.setQuantity(Integer.parseInt(quantity));
            cartItem.setP_kid(pKId);
            cartItem.setU_id(uId);
            //获取唯一主键
            cartItem.setCartItemId(StringUtils.getUUID());
            cartItemMapper.insertCartItemInfo(cartItem);
        }
        else {
            cartItemMapper.updateCartItemInfo(pKId,uId,cartItem.getQuantity()+Integer.parseInt(quantity));
        }
    }

    /**
     * 查询用户购物车
     * @param u_id
     * @return
     */
    @Override
    public List<CartItem> queryCartItems(String u_id) {

        if(StringUtils.isEmpty(u_id)){
            return null;
        }
        List<CartItem> cartItems=new ArrayList<>();
        try {
            cartItems=cartItemMapper.queryCartItemsByUId(u_id);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return cartItems;
    }

}
