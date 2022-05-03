package com.doyens.service.impI;

import com.doyens.domain.User;
import com.doyens.mapper.userMapper;

import com.doyens.service.userService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.github.pagehelper.PageHelper;

import java.util.List;

@Service("userService")
public class userServiceImp implements userService {
    @Autowired
    private userMapper dao;

    @Override
    public PageInfo findpage(Integer page) {
        PageHelper.startPage(page, 2);
        List<User> list = dao.findAll();
        PageInfo<User> pageInfo = new PageInfo<>(list);
        return pageInfo;
    }

    @Override
    public String[] finddq() {
        return dao.finddq();
    }

    @Override
    public void insert(User user) {
        String bypname = dao.findBypname(user.getPname());
        user.setPname(bypname);
        dao.inse(user);
    }

    @Override
    public User finduid(Integer uid) {
        User finduid = dao.finduid(uid);

        return finduid;
    }

    @Override
    public void update(User user) {
        String bypname = dao.findBypname(user.getPname());
        user.setPname(bypname);
        dao.update(user);
    }

    @Override
    public void deleteByuid(Integer uid) {
        dao.deleteByuid(uid);
    }
}
