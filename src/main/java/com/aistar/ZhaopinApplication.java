package com.aistar;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.aistar.mapper")
public class ZhaopinApplication {

    public static void main(String[] args) {
        SpringApplication.run(ZhaopinApplication.class, args);
    }

}
