package com.examsystem.web.model;

public class Users {
    private int user_id;
    private String password;
    private String first_name;
    private String last_name;
    private String email;
    private String account_type;
    private String profile_photo;
    
    public int getUser_id() {
        return user_id;
    }
    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getFirst_name() {
        return first_name;
    }
    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }
    public String getLast_name() {
        return last_name;
    }
    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getAccount_type() {
        return account_type;
    }
    public void setAccount_type(String account_type) {
        this.account_type = account_type;
    }
    public String getProfile_photo() {
        return profile_photo;
    }
    public void setProfile_photo(String profile_photo) {
        this.profile_photo = profile_photo;
    }
    
    

}
