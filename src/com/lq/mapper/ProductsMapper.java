package com.lq.mapper;

import com.lq.model.Images;
import com.lq.model.Products;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
* 宠物的持久化操作
* 
* @author jiajing
* 创建日期 2019/2/14
* @since 
*/
public interface ProductsMapper {

    /**
     * 分页查询宠物
     * @param currPage 起始值
     * @param end  终止值
     * @param type  类型 1狗 2猫 3全部
     * @return
     */
     List<Products> queryProductsList(@Param("currPage") int currPage, @Param("end") int end,@Param("type") String type);

    /**
     * 获取宠物总数量
     * @param type 类型 1狗 2猫 3全部
     * @return
     */
     int queryProductsCountByType(@Param("type") String type);

     Products queryProductById(@Param("kid") String kid);

     List<Images> queryImagesByKid(@Param("kid") String kid);
}
