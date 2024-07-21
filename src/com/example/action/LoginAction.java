package com.example.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class LoginAction extends ActionSupport implements SessionAware {
    private String username;
    private String password;
    private Map<String, Object> session;

    public String execute() {
        if ("admin".equals(username) && "password".equals(password)) {
            session.put("user", username);
            return SUCCESS;
        } else {
            addActionError("Invalid username or password");
            return INPUT;
        }
    }

    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
