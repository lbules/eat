package com.ssm.controller;

import com.github.pagehelper.PageHelper;
import com.ssm.model.Menu;
import com.ssm.service.MenuService;
import org.springframework.beans.factory.parsing.FailFastProblemReporter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;


@Controller
public class TestController {

    @Resource
    private MenuService menuService;

    @RequestMapping("/hello")
    @ResponseBody
    public String test01(){
        return "hello";
    }

    @RequestMapping("/hellojsp")
    public String test02(){
        return "hello";
    }


    @RequestMapping("/testfy")
    @ResponseBody
    public String test04(Model model){

        PageHelper.startPage(1,10);
        List<Menu> menus = menuService.selectAll();
        return "fy";
    }

    @RequestMapping("/lunbo")
    @ResponseBody
    public String MethodName(){

        return "demo";
    }

    
}
