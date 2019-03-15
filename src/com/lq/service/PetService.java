package com.lq.service;

import com.lq.model.Products;
import com.lq.util.PageBean;

/**
* 宠物的相关操作
*
* @author jiajing
* 创建日期 2019/2/14
* @since
*/
public interface PetService {

    /***
     * 分页查询宠物列表
     * @param currentPage  第几页
     * @param pageSize   页大小
     * @param type  1 狗，2 猫 ，3全部
     * @return
     */
    public PageBean<Products> queryProductByPage(int currentPage,int pageSize,String type);

    /**
     * 根据kid查询宠物实体
     * @param kid 宠物主键
     * @return
     */
    Products queryProductsByKid(String kid);
}
