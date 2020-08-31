package com.wst.bean;

import java.util.Objects;

public class User 
{
    private int id;
     private String name;
    private String emailid;
    private String password;
    private int status;
    private int usertype;
    private String mobile_no;
    private String profile_pic;

    public User() {
    }

    public User(int id, String name, String emailid, String password, int status, int usertype, String mobile_no, String profile_pic) {
        this.id = id;
        this.name = name;
        this.emailid = emailid;
        this.password = password;
        this.status = status;
        this.usertype = usertype;
        this.mobile_no = mobile_no;
        this.profile_pic = profile_pic;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", name=" + name + ", emailid=" + emailid + ", password=" + password + ", status=" + status + ", usertype=" + usertype + ", mobile_no=" + mobile_no + ", profile_pic=" + profile_pic + '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getUsertype() {
        return usertype;
    }

    public void setUsertype(int usertype) {
        this.usertype = usertype;
    }

    public String getMobile_no() {
        return mobile_no;
    }

    public void setMobile_no(String mobile_no) {
        this.mobile_no = mobile_no;
    }

    public String getProfile_pic() {
        return profile_pic;
    }

    public void setProfile_pic(String profile_pic) {
        this.profile_pic = profile_pic;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 79 * hash + this.id;
        hash = 79 * hash + Objects.hashCode(this.name);
        hash = 79 * hash + Objects.hashCode(this.emailid);
        hash = 79 * hash + Objects.hashCode(this.password);
        hash = 79 * hash + this.status;
        hash = 79 * hash + this.usertype;
        hash = 79 * hash + Objects.hashCode(this.mobile_no);
        hash = 79 * hash + Objects.hashCode(this.profile_pic);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final User other = (User) obj;
        if (this.id != other.id) {
            return false;
        }
        if (this.status != other.status) {
            return false;
        }
        if (this.usertype != other.usertype) {
            return false;
        }
        if (!Objects.equals(this.name, other.name)) {
            return false;
        }
        if (!Objects.equals(this.emailid, other.emailid)) {
            return false;
        }
        if (!Objects.equals(this.password, other.password)) {
            return false;
        }
        if (!Objects.equals(this.mobile_no, other.mobile_no)) {
            return false;
        }
        if (!Objects.equals(this.profile_pic, other.profile_pic)) {
            return false;
        }
        return true;
    }
    
    
    
    
}