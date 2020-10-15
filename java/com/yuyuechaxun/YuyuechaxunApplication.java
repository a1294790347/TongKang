package com.yuyuechaxun;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.yuyuechaxun.com.dao")
public class YuyuechaxunApplication {

    public static void main(String[] args) {
        SpringApplication.run(YuyuechaxunApplication.class, args);
    }

}
