package com.ssm.model;

import java.io.Serializable;

public class Menu implements Serializable {

    private static final long serialVersionUID = 2L;
    private Integer id;
    private String category;
    private String name;
    private String method;
    private String url;
    private Integer collected;
    private Integer deleted;

    public Menu() {
        super();
    }

    public Menu(Integer id, String category, String name, String method) {
        this.id = id;
        this.category = category;
        this.name = name;
        this.method = method;
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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getCollected() {
        return collected;
    }

    public void setCollected(Integer collected) {
        this.collected = collected;
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }

    @Override
    public String toString() {
        return "Menu{" +
                "id=" + id +
                ", category='" + category + '\'' +
                ", name='" + name + '\'' +
                ", method='" + method + '\'' +
                ", url='" + url + '\'' +
                ", collected=" + collected +
                ", deleted=" + deleted +
                '}';
    }

}
