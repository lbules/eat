package com.ssm.model;

import java.io.Serializable;

public class Suggestion implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;
    private String category;
    private String name;
    private String method;
    private String idea;
    private Integer reviewed;
    private Integer passed;
    private String date;
    private String url;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public String getIdea() {
        return idea;
    }

    public void setIdea(String idea) {
        this.idea = idea;
    }

    public Integer getReviewed() {
        return reviewed;
    }

    public void setReviewed(Integer reviewed) {
        this.reviewed = reviewed;
    }

    public Integer getPassed() {
        return passed;
    }

    public void setPassed(Integer passed) {
        this.passed = passed;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "Suggestion{" +
                "id=" + id +
                ", category='" + category + '\'' +
                ", name='" + name + '\'' +
                ", method='" + method + '\'' +
                ", idea='" + idea + '\'' +
                ", reviewed=" + reviewed +
                ", passed=" + passed +
                ", date='" + date + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}
