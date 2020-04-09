package com.example.jenkins.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Version 1.0
 * @Author kang.jiang
 * @Created 2020年04月09  16:29:21
 * @Description <p>
 * @Modification <p>
 * Date Author Version Description
 * <p>
 * 2020年04月09  kang.jiang 1.0 create file
 */
@RestController
public class MainController {

    @Value("${spring.application.name}")
    private String applictionName;

    @RequestMapping("main")
    public String main(){
        return  applictionName;
    }
}
