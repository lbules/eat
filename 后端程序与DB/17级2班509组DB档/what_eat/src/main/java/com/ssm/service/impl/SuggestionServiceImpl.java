package com.ssm.service.impl;

import com.ssm.dao.SuggestionDao;
import com.ssm.model.Suggestion;
import com.ssm.service.SuggestionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SuggestionServiceImpl implements SuggestionService {

    @Resource
    private SuggestionDao suggestionDao;

    public List<Suggestion> queryUnreviewed() {
        return suggestionDao.queryUnreviewed();
    }

    public Suggestion queryById(Integer id) {
        return suggestionDao.queryById(id);
    }

    public void insertSuggestion(Suggestion suggestion) {
        suggestionDao.insertSuggestion(suggestion);
    }

    public void queryAll() {
        suggestionDao.queryAll();
    }

    public void reviewSuggestion(Integer id) {
        suggestionDao.reviewSuggestion(id);
    }

    public void passed(Integer id) {
        suggestionDao.passed(id);
    }

    public void noPassed(Integer id) {
        suggestionDao.noPassed(id);
    }

    public void updateUrl(Suggestion suggestion) {
        suggestionDao.updateUrl(suggestion);
    }


}
