package com.qf.admin.service;

import com.alibaba.fastjson.JSONObject;

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
}
