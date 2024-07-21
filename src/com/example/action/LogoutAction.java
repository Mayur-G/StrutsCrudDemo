package com.example.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class LogoutAction extends ActionSupport implements SessionAware {
    private Map<String, Object> session;

    public String execute() {
        session.remove("user");
        return SUCCESS;
    }

    public void setSession(Map<String, Object> session) {
        this.session = session;
    }
}
