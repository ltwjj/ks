package com.doyens.mapper;


import com.doyens.domain.User;

import java.util.List;


public interface userMapper {
    List<User> findAll();

    String[] finddq();

    String findBypname(String pname);
    void inse(User user);
    User finduid(Integer uid);
    void update(User user);
    void deleteByuid(Integer uid);
}
