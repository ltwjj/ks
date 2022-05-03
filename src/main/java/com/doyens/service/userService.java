package com.doyens.service;

import com.doyens.domain.User;
import com.github.pagehelper.PageInfo;

public interface userService {
    PageInfo findpage(Integer page);
    String [] finddq();

    void insert(User user);
    User finduid(Integer uid);
    void update(User user);
    void deleteByuid(Integer uid);
}
