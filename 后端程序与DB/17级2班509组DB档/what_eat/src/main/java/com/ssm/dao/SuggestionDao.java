package com.ssm.dao;

import com.ssm.model.Suggestion;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SuggestionDao {

    List<Suggestion> queryUnreviewed();

    Suggestion queryById(@Param("id") Integer id);

    void insertSuggestion(Suggestion suggestion);

    void queryAll();

    void reviewSuggestion(@Param("id") Integer id);

    void passed(@Param("id") Integer id);

    void noPassed(@Param("id") Integer id);

    void updateUrl(Suggestion suggestion);

}
