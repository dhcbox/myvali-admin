package com.qf.admin.web;

import com.alibaba.fastjson.JSONObject;
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
}
