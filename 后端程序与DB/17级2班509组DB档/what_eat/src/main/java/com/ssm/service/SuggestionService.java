package com.ssm.service;

import com.ssm.model.Suggestion;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SuggestionService {

    List<Suggestion> queryUnreviewed();

    Suggestion queryById(Integer id);

    void insertSuggestion(Suggestion suggestion);

    void queryAll();

    void reviewSuggestion(Integer id);

    void passed(Integer id);

    void noPassed(Integer id);

    void updateUrl(Suggestion suggestion);
}
