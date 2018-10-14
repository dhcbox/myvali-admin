package com.qf.admin.dao;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.User;

import java.util.List;

/**
 * 用户数据访问层接口
 */
public interface UserDao {
    /**
     * 带条件查询用户列表
     * @param jsonObject
     * @return
     */
    List<User> listUsers(JSONObject jsonObject);

    /**
     * 带条件查询用户数量
     * @param jsonObject
     * @return
     */
    Long countUsers(JSONObject jsonObject);

    /**
     * 根据主键删除用户
     * @param id
     * @return
     */
    int removeById(int id);

    /**
     * 保存用户
     * @param user
     * @return
     */
    int saveUser(User user);

    /**
     * 根据主键查询用户
     * @param id
     * @return
     */
    User listUserById(int id);
    /**
     * 更新用户信息
     * @param user
     * @return
     */
    int updateUser(User user);
}
