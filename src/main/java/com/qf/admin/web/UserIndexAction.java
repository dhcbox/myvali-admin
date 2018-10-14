package com.qf.admin.web;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.User;
import com.qf.admin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserIndexAction {

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/{path}")
    public String path(@PathVariable String path) {
        return path;
    }

    @ResponseBody
    @RequestMapping(value = "/users", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public Object json(@RequestBody JSONObject jsonObject) {
        jsonObject = userService.listUsersJson(jsonObject);
        return jsonObject;
    }

    @ResponseBody
    @RequestMapping(value = "/user/{id}",method = RequestMethod.DELETE)
    public int delete(@PathVariable int id){
        int i = userService.removeById(id);
        return i;
    }

    @ResponseBody
    @RequestMapping(value = "/user",method = RequestMethod.POST)
    public int save(User user){
        int i = userService.saveUser(user);
        return i;
    }

    @ResponseBody
    @RequestMapping(value = "/user/{id}",method = RequestMethod.GET)
    public User select(@PathVariable int id){
        return userService.listUserById(id);
    }

    @ResponseBody
    @RequestMapping(value = "/user",method = RequestMethod.PUT)
    public int update(User user){
        int i = userService.updateUser(user);
        return i;
    }
}
