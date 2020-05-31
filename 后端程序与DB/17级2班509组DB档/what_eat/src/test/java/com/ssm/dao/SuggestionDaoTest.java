package com.ssm.dao;

import com.ssm.model.Suggestion;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


@RunWith(SpringJUnit4ClassRunner.class)
//告诉junit spring的配置文件
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class SuggestionDaoTest {

    @Resource
    SuggestionDao suggestionDao;

    @Test
    public void testqueryById(){
        Integer id=1;
        Suggestion suggestion = suggestionDao.queryById(id);
        System.out.println(suggestion.toString());
    }

    @Test
    public void testqueryUnreviewed(){
        List<Suggestion> suggestions = suggestionDao.queryUnreviewed();
        System.out.println(suggestions.size());
    }

    @Test
    public void testinsert(){
        Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd  hh:mm:ss");
        String format = dateFormat.format(date);
        Suggestion suggestion = new Suggestion();
        suggestion.setCategory("good");
        suggestion.setIdea("sadasd");
        suggestion.setMethod("ggggg");
        suggestion.setName("gasdasd");
        suggestion.setDate(format);
        suggestionDao.insertSuggestion(suggestion);
    }

    @Test
    public void testreviewSuggestion(){
        Integer id=2;
        suggestionDao.reviewSuggestion(id);
    }

    @Test
    public void testnoPassed(){
        Integer id=2;
        suggestionDao.noPassed(id);
    }
//
//    @Test
//    public void testSuggestionUrl(){
//        Integer id=1;
//        for(id=1;id<=10;id++){
//            Suggestion suggestion = suggestionDao.queryById(id);
//            String url = suggestion.getUrl();
//            String start = url.substring(0, 5);
//            String end = url.substring(6);
//            suggestion.setUrl(start+end);
//            suggestionDao.updateUrl(suggestion);
//        }
//    }
}