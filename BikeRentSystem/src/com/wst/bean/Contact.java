package com.wst.bean;

import java.util.Objects;

public class Contact 
{
    private int contact_id;
    private String contact_name;
    private String contact_email;
    private String contact_phone;
    private String contact_message;
    private int contact_isread;
    private String contact_time;

    public Contact() {
    }
    
    

    public Contact(int contact_id, String contact_name, String contact_email, String contact_phone, String contact_message, int contact_isread, String contact_time) {
        this.contact_id = contact_id;
        this.contact_name = contact_name;
        this.contact_email = contact_email;
        this.contact_phone = contact_phone;
        this.contact_message = contact_message;
        this.contact_isread = contact_isread;
        this.contact_time = contact_time;
    }

    

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 13 * hash + this.contact_id;
        hash = 13 * hash + Objects.hashCode(this.contact_name);
        hash = 13 * hash + Objects.hashCode(this.contact_email);
        hash = 13 * hash + Objects.hashCode(this.contact_phone);
        hash = 13 * hash + Objects.hashCode(this.contact_message);
        hash = 13 * hash + this.contact_isread;
        hash = 13 * hash + Objects.hashCode(this.contact_time);
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
        final Contact other = (Contact) obj;
        if (this.contact_id != other.contact_id) {
            return false;
        }
        if (this.contact_isread != other.contact_isread) {
            return false;
        }
        if (!Objects.equals(this.contact_name, other.contact_name)) {
            return false;
        }
        if (!Objects.equals(this.contact_email, other.contact_email)) {
            return false;
        }
        if (!Objects.equals(this.contact_phone, other.contact_phone)) {
            return false;
        }
        if (!Objects.equals(this.contact_message, other.contact_message)) {
            return false;
        }
        if (!Objects.equals(this.contact_time, other.contact_time)) {
            return false;
        }
        return true;
    }

    public int getContact_id() {
        return contact_id;
    }

    public void setContact_id(int contact_id) {
        this.contact_id = contact_id;
    }

    public String getContact_name() {
        return contact_name;
    }

    public void setContact_name(String contact_name) {
        this.contact_name = contact_name;
    }

    public String getContact_email() {
        return contact_email;
    }

    public void setContact_email(String contact_email) {
        this.contact_email = contact_email;
    }

    public String getContact_phone() {
        return contact_phone;
    }

    public void setContact_phone(String contact_phone) {
        this.contact_phone = contact_phone;
    }

    public String getContact_message() {
        return contact_message;
    }

    public void setContact_message(String contact_message) {
        this.contact_message = contact_message;
    }

    public int getContact_isread() {
        return contact_isread;
    }

    public void setContact_isread(int contact_isread) {
        this.contact_isread = contact_isread;
    }

    public String getContact_time() {
        return contact_time;
    }

    public void setContact_time(String contact_time) {
        this.contact_time = contact_time;
    }
}
