package com.example.action;

import java.util.List;
import com.example.dao.UserDAO;
import com.example.model.User;
import com.opensymphony.xwork2.ActionSupport;

   //http://localhost:8080/StrutsCrudDemo/listUsers.action

public class UserAction extends ActionSupport {
    private static final long serialVersionUID = 1L;
    private User user;
    private List<User> userList;
    private UserDAO dao = new UserDAO();
    private int id;

    public String listUsers() {
        userList = dao.getAllUsers();
        return SUCCESS;
    }

    public String addUser() {
        dao.addUser(user);
        return SUCCESS;
    }

    public String editUser() {
        dao.updateUser(user);
        return SUCCESS;
    }

    public String deleteUser() {
        dao.deleteUser(id);
        return SUCCESS;
    }

    // Getters and Setters
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
