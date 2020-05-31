package com.ssm.service;

import com.ssm.model.Menu;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

import java.util.List;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
//告诉junit spring的配置文件
@ContextConfiguration({"classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml"})
public class MenuServiceTest {

    @Resource
    private MenuService menuService;

    @Test
    public void queryByName() {
        String name="鱼香肉丝";
        List<Menu> menu = menuService.queryByName(name);
        System.out.println(menu.toString());

    }


    @Test
    public void queryAll() {
        List<Menu> menus = menuService.queryAll();
        for(Menu menu:menus){
            System.out.println(menu.toString());
        }
    }


    @Test
    public void test(){
        int variable=1;
        for(int i=1;i<5;i++){
            variable++;
        }
        variable++;
        variable++;
        System.out.println(++variable);
        System.out.println("good");
        System.out.println("go23");
        System.out.println("go523");
        System.out.println("go235");

    }


}