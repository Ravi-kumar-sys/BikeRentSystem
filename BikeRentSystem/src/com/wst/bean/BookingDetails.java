package com.wst.bean;

import java.util.Objects;

public class BookingDetails
{
    private int bookingd_id;
    private String bookingd_name;
    private String bookingd_email;
    private String bookingd_phone;
    private String bookingd_dlno;
    private String bookingd_dob;
    private String bookingd_pickup_type;
    private String bookingd_terms;
    private String queryTime;

    public BookingDetails() {
    }
    
    

    public BookingDetails(int bookingd_id, String bookingd_name, String bookingd_email, String bookingd_phone, String bookingd_dlno, String bookingd_dob, String bookingd_pickup_type, String bookingd_terms, String queryTime) {
        this.bookingd_id = bookingd_id;
        this.bookingd_name = bookingd_name;
        this.bookingd_email = bookingd_email;
        this.bookingd_phone = bookingd_phone;
        this.bookingd_dlno = bookingd_dlno;
        this.bookingd_dob = bookingd_dob;
        this.bookingd_pickup_type = bookingd_pickup_type;
        this.bookingd_terms = bookingd_terms;
        this.queryTime = queryTime;
    }

   

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 73 * hash + this.bookingd_id;
        hash = 73 * hash + Objects.hashCode(this.bookingd_name);
        hash = 73 * hash + Objects.hashCode(this.bookingd_email);
        hash = 73 * hash + Objects.hashCode(this.bookingd_phone);
        hash = 73 * hash + Objects.hashCode(this.bookingd_dlno);
        hash = 73 * hash + Objects.hashCode(this.bookingd_dob);
        hash = 73 * hash + Objects.hashCode(this.bookingd_pickup_type);
        hash = 73 * hash + Objects.hashCode(this.bookingd_terms);
        hash = 73 * hash + Objects.hashCode(this.queryTime);
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
        final BookingDetails other = (BookingDetails) obj;
        if (this.bookingd_id != other.bookingd_id) {
            return false;
        }
        if (!Objects.equals(this.bookingd_name, other.bookingd_name)) {
            return false;
        }
        if (!Objects.equals(this.bookingd_email, other.bookingd_email)) {
            return false;
        }
        if (!Objects.equals(this.bookingd_phone, other.bookingd_phone)) {
            return false;
        }
        if (!Objects.equals(this.bookingd_dlno, other.bookingd_dlno)) {
            return false;
        }
        if (!Objects.equals(this.bookingd_dob, other.bookingd_dob)) {
            return false;
        }
        if (!Objects.equals(this.bookingd_pickup_type, other.bookingd_pickup_type)) {
            return false;
        }
        if (!Objects.equals(this.bookingd_terms, other.bookingd_terms)) {
            return false;
        }
        if (!Objects.equals(this.queryTime, other.queryTime)) {
            return false;
        }
        return true;
    }

    public int getBookingd_id() {
        return bookingd_id;
    }

    public void setBookingd_id(int bookingd_id) {
        this.bookingd_id = bookingd_id;
    }

    public String getBookingd_name() {
        return bookingd_name;
    }

    public void setBookingd_name(String bookingd_name) {
        this.bookingd_name = bookingd_name;
    }

    public String getBookingd_email() {
        return bookingd_email;
    }

    public void setBookingd_email(String bookingd_email) {
        this.bookingd_email = bookingd_email;
    }

    public String getBookingd_phone() {
        return bookingd_phone;
    }

    public void setBookingd_phone(String bookingd_phone) {
        this.bookingd_phone = bookingd_phone;
    }

    public String getBookingd_dlno() {
        return bookingd_dlno;
    }

    public void setBookingd_dlno(String bookingd_dlno) {
        this.bookingd_dlno = bookingd_dlno;
    }

    public String getBookingd_dob() {
        return bookingd_dob;
    }

    public void setBookingd_dob(String bookingd_dob) {
        this.bookingd_dob = bookingd_dob;
    }

    public String getBookingd_pickup_type() {
        return bookingd_pickup_type;
    }

    public void setBookingd_pickup_type(String bookingd_pickup_type) {
        this.bookingd_pickup_type = bookingd_pickup_type;
    }

    public String getBookingd_terms() {
        return bookingd_terms;
    }

    public void setBookingd_terms(String bookingd_terms) {
        this.bookingd_terms = bookingd_terms;
    }

    public String getQueryTime() {
        return queryTime;
    }

    public void setQueryTime(String queryTime) {
        this.queryTime = queryTime;
    }
}
