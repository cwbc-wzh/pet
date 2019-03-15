package com.lq.mapper;

import com.lq.model.User;
import org.apache.ibatis.annotations.Param;

/**
*
* 用户的持久化操作
* @author jiajing
* 创建日期 2019/2/12
* @since
*/


public interface UserMapper {

    /**
     * 查询用户实体
     * @param username 用户名
     * @param password 密码
     * @return
     */
    User findUserByUserPass(@Param("username") String username, @Param("password") String password);

    User finUserByUserName(@Param("userName") String userName);

}
