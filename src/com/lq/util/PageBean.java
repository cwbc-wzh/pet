package com.lq.util;

import java.util.List;

/**
 * 分页实体类
 *
 * @author jiajing
 * 创建日期 2019/2/14
 * @since
 */
public class PageBean<T> {
    /**
     * 当前页数
     */
    private int currPage=0;
    /**
     * 每页显示的记录数
     */
    private int pageSize=4;
    /**
     * 总记录数
     */
    private int totalCount;
    /**
     * 总页数
     */
    private int totalPage;
    /**
     * 每页的显示的数据
     */
    private List<T> lists;

    public int getCurrPage() {
        return currPage;
    }

    public void setCurrPage(int currPage) {
        this.currPage = currPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public List<T> getLists() {
        return lists;
    }

    public void setLists(List<T> lists) {
        this.lists = lists;
    }

    @Override
    public String toString() {
        return "PageBean{" +
                "currPage=" + currPage +
                ", pageSize=" + pageSize +
                ", totalCount=" + totalCount +
                ", totalPage=" + totalPage +
                ", lists=" + lists +
                '}';
    }

    public PageBean() {
    }
}
