package com.ssm.dto;

public class Param {
    private String type;
    private String menuName;
    private Integer id;
    private String operator;

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    @Override
    public String toString() {
        return "Param{" +
                "type='" + type + '\'' +
                ", menuName='" + menuName + '\'' +
                ", id=" + id +
                ", operator='" + operator + '\'' +
                '}';
    }
}
