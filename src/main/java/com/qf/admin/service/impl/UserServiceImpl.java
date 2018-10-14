package com.qf.admin.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.dao.UserDao;
import com.qf.admin.pojo.po.User;
import com.qf.admin.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private UserDao userDao;

    @Override
    public JSONObject listUsersJson(JSONObject jsonObject) {
        JSONObject jo = new JSONObject();
        try {
            List<User> rows = userDao.listUsers(jsonObject);
            Long total = userDao.countUsers(jsonObject);
            jo.put("total", total);
            jo.put("rows", rows);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return jo;
    }

    @Transactional
    @Override
    public int removeById(int id) {
        int i = 0;
        try {
            i = userDao.removeById(id);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    @Transactional
    @Override
    public int saveUser(User user) {
        int i = 0;
        try {
            i = userDao.saveUser(user);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public User listUserById(int id) {
        User user = null;
        try {
            user = userDao.listUserById(id);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public int updateUser(User user) {
        int i = 0;
        try {
            i = userDao.updateUser(user);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }
}
