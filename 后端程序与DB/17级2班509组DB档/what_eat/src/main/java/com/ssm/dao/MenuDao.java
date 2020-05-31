package com.ssm.dao;

import com.ssm.model.Menu;

import javafx.scene.control.MenuItem;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public interface MenuDao {

    //增

    //删

    //改

    //查
    Menu queryById(@Param("id") Integer menuId);

    //模糊查询
    List<Menu> queryByName(@Param("MenuName") String MenuName);

    //菜系查询
    List<Menu> queryByCategory(@Param("category") String categoryName);

    //收藏查询
    List<Menu> queryCollect();

    //删除查询
    List<Menu> queryDelete();

    //全部查询
    List<Menu> queryAll();

    //测试分页
    List<Menu> findMenuByRowBounds(@Param("category") String category, RowBounds rowBounds);

    //收藏操作
    void collectMenu(@Param("id") Integer menuId);

    //删除操作
    void deleteMenu(@Param("id") Integer menuId);

    //取消收藏
    void collectCancel(@Param("id") Integer menuId);

    //取消删除
    void deleteCancel(@Param("id") Integer menuId);

    void updateUrl(Menu menu);

}
