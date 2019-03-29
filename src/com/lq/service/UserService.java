package com.lq.service;

import com.lq.model.User;

/**
*
*
* @author jiajing
* 创建日期 2019/2/12
* @since
*/
public interface UserService {
    /**
     * 根据用户名和密码查询用户是否存在
     * @param username 用户名
     * @param password  密码
     * @return 用户实体
     */
    User queryUserInfo(String username,String password);


    /***
     * 根据用户名来查询用户的个人信息，用来判断用户是否存在
     * @param userName 用户名
     * @return 用户实体
     */
    User queryUserInfo(String userName);

    /**
     * 新增用户
     * @param user
     * @return
     */
    void addUserInfo(User user);
}
