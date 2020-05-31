package com.ssm.dao;

import com.ssm.model.Menu;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class MenuDaoTest {

    @Resource
    private MenuDao menuDao;
    @Test
    public void queryByName() {
        String name="鱼香肉丝";
        List<Menu> menu = menuDao.queryByName(name);
        System.out.println(menu.toString());
    }

    @Test
    public void queryByCategory() {
        String name="川菜";
        List<Menu> menus = menuDao.queryByCategory(name);
        for(Menu menu:menus){
            System.out.println(menu.toString());
        }
    }

    @Test
    public void queryById() {
        Integer menuId=1;
        Menu menu = menuDao.queryById(menuId);
        System.out.println(menu.toString());
    }
    @Test
    public void queryAll() {
        List<Menu> menus = menuDao.queryAll();
        for(Menu menu:menus){
            System.out.println(menu.toString());
        }
    }

    @Test
    public void testqueryById(){
        Integer id=1;
        Menu menu = menuDao.queryById(id);
        System.out.println(menu);
    }

    @Test
    public void testupdateMenu(){
        Integer id=1;
        menuDao.collectMenu(id);
        System.out.println(menuDao.queryById(id).getCollected());
    }

    @Test
    public void testdeleteMenu(){
        Integer id=1;
        menuDao.deleteMenu(id);
        System.out.println(menuDao.queryById(id).getCollected());
    }

    @Test
    public void testqueryCollect(){
        List<Menu> menus = menuDao.queryCollect();
        System.out.println(menus.size());
    }

    @Test
    public void testqueryDelete(){
        List<Menu> menus = menuDao.queryDelete();
        System.out.println(menus.size());
    }

//    @Test
//    public void testMenuUrl(){
//            Integer id=1;
//            for(id=1;id<=80;id++){
//                Menu menu = menuDao.queryById(id);
//                String url = menu.getUrl();
//                String start = url.substring(0, 5);
//                String end = url.substring(8);
//                menu.setUrl(start+end);
//                menuDao.updateUrl(menu);
//            }
//
//    }


}