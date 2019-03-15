package com.lq.model;

/**
* 购物车实体类
*
* @author jiajing
* 创建日期 2019/3/14
* @since
*/
public class CartItem {

    /**购物车id*/
    public String cartItemId;
    /**物品个数*/
    public int quantity;

    /**物品id*/
    public String p_kid;

    /**用户id*/
    public String u_id;
    
    /** 创建时间*/
    public String createDate;


    public String getCartItemId() {
        return cartItemId;
    }

    public void setCartItemId(String cartItemId) {
        this.cartItemId = cartItemId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getP_kid() {
        return p_kid;
    }

    public void setP_kid(String p_kid) {
        this.p_kid = p_kid;
    }

    public String getU_id() {
        return u_id;
    }

    public void setU_id(String u_id) {
        this.u_id = u_id;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    @Override
    public String toString() {
        return "CartItem{" +
                "cartItemId='" + cartItemId + '\'' +
                ", quantity=" + quantity +
                ", p_kid='" + p_kid + '\'' +
                ", u_id='" + u_id + '\'' +
                ", createDate='" + createDate + '\'' +
                '}';
    }
}
