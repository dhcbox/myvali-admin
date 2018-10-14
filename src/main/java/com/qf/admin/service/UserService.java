package com.qf.admin.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.User;

/**
 * 用户业务逻辑层接口
 */
public interface UserService {
    /**
     * 带条件查询相关用户
     * @param jsonObject
     * @return
     */
    JSONObject listUsersJson(JSONObject jsonObject);

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
