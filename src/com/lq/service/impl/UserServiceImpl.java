package com.lq.service.impl;

import com.lq.mapper.UserMapper;
import com.lq.model.User;
import com.lq.service.UserService;
import com.lq.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 用户的相关操作
 *
 * @author jiajing
 * 创建日期 2019/2/12
 * @since
 */
@Service

public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    /**
     * 根据用户名和密码查询用户是否存在
     *
     * @param username 用户名
     * @param password 密码
     * @return
     */
    @Transactional
    @Override
    public User queryUserInfo(String username, String password) {
        System.out.println("start userServiceImpl,queryUserInfo username is " + username + " password is " + password);

        User user = null;
        try {
            user = userMapper.findUserByUserPass(username, password);
        } catch (Exception e) {
            System.out.println("userServiceImpl.queryUserInfo username is " + username + " exception is " + e);
        }
        System.out.println("exit userServiceImpl,queryUserInfo username is " + username + " user is " + user);
        return user;
    }

    /***
     * 根据用户名来查询用户的个人信息，用来判断用户是否存在
     * @param userName 用户名
     * @return 用户实体
     *  @Transactional 事务回滚
     */

    @Override
    public User queryUserInfo(String userName) {
        System.out.println("start UserServiceImpl.queryUserInfo username is " + userName);

        User user = null;
        try {
            user = userMapper.finUserByUserName(userName);
        } catch (Exception e) {
            System.out.println("UserServiceImpl.queryUserInfo userName is " + userName);

        }
        System.out.println("userServiceImpl,queryUserInfo username is" + userName);


        return user;
    }


    @Override
    public void addUserInfo(User user) {

        user.setU_id(StringUtils.getUUID());
        try {
            userMapper.insertUserInfo(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}
