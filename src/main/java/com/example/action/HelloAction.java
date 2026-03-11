package com.example.action;

import com.opensymphony.xwork2.ActionSupport;

public class HelloAction extends ActionSupport {

    private String message;

    @Override
    public String execute() {
        message = "Hiiiiii, welcome to Struts 2!";
        return SUCCESS;
    }

    public String getMessage() {
        return message;
    }
}