package com.doyens.controller;

import com.doyens.domain.User;
import com.doyens.service.userService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/ks")
public class userController {
    @Autowired
    private userService service;

    @RequestMapping("/list")
    public String findpage(@RequestParam(required = true, defaultValue = "1") Integer page, HttpServletRequest request) {
        PageInfo findpage = service.findpage(page);
        request.getSession().setAttribute("page", findpage);
        return "list";
    }

    @RequestMapping("/toadd")
    public String finddq(HttpServletRequest request) {
        String[] finddq = service.finddq();
        request.getSession().setAttribute("string", finddq);
        return "add";
    }

    @RequestMapping("/add")
    public String add(User user, String date) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date parse = dateFormat.parse(date);
            user.setUhiredate(parse);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        service.insert(user);
        return "list";
    }

    @RequestMapping("/toupdate")
    public String toupdate(HttpServletRequest request, Integer uid) {
        User finduid = service.finduid(uid);
        String[] finddq = service.finddq();
        request.getSession().setAttribute("string",finddq);
        request.getSession().setAttribute("uid",uid);
        request.getSession().setAttribute("finduid",finduid);
        return "update";
    }
    @RequestMapping("/update")
    public String update(User user,String date,HttpServletRequest request){
        Integer uid1 = (Integer) request.getSession().getAttribute("uid");
        user.setUid(uid1);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date parse = format.parse(date);
            user.setUhiredate(parse);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        service.update(user);
        return "forward:/ks/list";
    }
    @RequestMapping("/delete")
    public String delete(Integer uid){
        service.deleteByuid(uid);
        return "forward:/ks/list";
    }
}