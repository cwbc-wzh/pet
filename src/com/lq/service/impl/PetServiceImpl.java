package com.lq.service.impl;

import com.lq.mapper.ProductsMapper;
import com.lq.model.Images;
import com.lq.model.Products;
import com.lq.service.PetService;
import com.lq.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 宠物的相关操作
 *
 * @author jiajing
 * 创建日期 2019/2/14
 * @since
 */
@Service
public class PetServiceImpl implements PetService {

    @Autowired
    private ProductsMapper productsMapper;

    /***
     *
     * @param currentPage  第几页
     * @param pageSize   页大小
     * @param type  1 狗，2 猫 ，3全部
     * @return
     */
    @Transactional
    @Override
    public PageBean<Products> queryProductByPage(int currentPage, int pageSize, String type) {
        System.out.println("start PetServiceImpl.queryProductByPage currentPage is " + currentPage + " pageSize is " + pageSize + " type is " + type);
        PageBean<Products> productsPageBean = new PageBean<Products>();
        //做一下保护防止参数有问题
        if (currentPage == 0 || pageSize == 0) {
            currentPage = productsPageBean.getCurrPage();
            pageSize = productsPageBean.getPageSize();
        }
        int startIndex = (currentPage) * pageSize ;
        int end = (currentPage+1) * pageSize;
        int totolNum = productsMapper.queryProductsCountByType(type);
        double totalPageNum = Math.ceil(totolNum*1.0 / pageSize);
        productsPageBean.setCurrPage(currentPage);
        productsPageBean.setPageSize(pageSize);
        productsPageBean.setTotalCount(totolNum);
        productsPageBean.setTotalPage((int) (totalPageNum));
        List<Products> products = null;

        try {
            products = productsMapper.queryProductsList(startIndex, end, type);
        } catch (Exception e) {
            System.out.println("petServiceImpl.queryProductByPage productsMapper.queryProductsList 发生错误 startIndex is" + startIndex);
        }
        productsPageBean.setLists(products);
        System.out.println("end petServiceImpl.queryProductByPage productPageBean is " + productsPageBean.getLists());

        return productsPageBean;
    }

    /***
     * 根据kid查询宠物实体
     * @param kid 宠物主键
     * @return
     */
    @Override
    @Transactional
    public Products queryProductsByKid(String kid){
        System.out.println("PetServiceImpl.queryProductsByKid kid is "+kid);
        Products products=productsMapper.queryProductById(kid);
        List<Images> imagesList=productsMapper.queryImagesByKid(kid);
        products.setImagesList(imagesList);
        return products;
    }


}
