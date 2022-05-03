package com.doyens.domain;

import lombok.Data;

import java.util.Date;

@Data
public class User {
    private Integer uid;
    private String uname;
    private double usal;
    private Date uhiredate;
    private String pname;
}
