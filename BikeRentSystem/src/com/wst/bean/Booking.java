package com.wst.bean;

import java.util.Objects;

public class Booking 
{
    private int booking_id;
    private int booking_details_id;
    private String booking_pickup_date;
    private String booking_pickup_time;
    private String booking_drop_date;
     private String booking_drop_time;
    private int booking_bike_id;
    private String booking_status;
    private String bookingTime;
    private String topupselected;

    public Booking() {
    }

    public Booking(int booking_id, int booking_details_id, String booking_pickup_date, String booking_pickup_time, String booking_drop_date, String booking_drop_time, int booking_bike_id, String booking_status, String bookingTime, String topupselected) {
        this.booking_id = booking_id;
        this.booking_details_id = booking_details_id;
        this.booking_pickup_date = booking_pickup_date;
        this.booking_pickup_time = booking_pickup_time;
        this.booking_drop_date = booking_drop_date;
        this.booking_drop_time = booking_drop_time;
        this.booking_bike_id = booking_bike_id;
        this.booking_status = booking_status;
        this.bookingTime = bookingTime;
        this.topupselected = topupselected;
    }

    @Override
    public String toString() {
        return "Booking{" + "booking_id=" + booking_id + ", booking_details_id=" + booking_details_id + ", booking_pickup_date=" + booking_pickup_date + ", booking_pickup_time=" + booking_pickup_time + ", booking_drop_date=" + booking_drop_date + ", booking_drop_time=" + booking_drop_time + ", booking_bike_id=" + booking_bike_id + ", booking_status=" + booking_status + ", bookingTime=" + bookingTime + ", topupselected=" + topupselected + '}';
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 67 * hash + this.booking_id;
        hash = 67 * hash + this.booking_details_id;
        hash = 67 * hash + Objects.hashCode(this.booking_pickup_date);
        hash = 67 * hash + Objects.hashCode(this.booking_pickup_time);
        hash = 67 * hash + Objects.hashCode(this.booking_drop_date);
        hash = 67 * hash + Objects.hashCode(this.booking_drop_time);
        hash = 67 * hash + this.booking_bike_id;
        hash = 67 * hash + Objects.hashCode(this.booking_status);
        hash = 67 * hash + Objects.hashCode(this.bookingTime);
        hash = 67 * hash + Objects.hashCode(this.topupselected);
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
        final Booking other = (Booking) obj;
        if (this.booking_id != other.booking_id) {
            return false;
        }
        if (this.booking_details_id != other.booking_details_id) {
            return false;
        }
        if (this.booking_bike_id != other.booking_bike_id) {
            return false;
        }
        if (!Objects.equals(this.booking_pickup_date, other.booking_pickup_date)) {
            return false;
        }
        if (!Objects.equals(this.booking_pickup_time, other.booking_pickup_time)) {
            return false;
        }
        if (!Objects.equals(this.booking_drop_date, other.booking_drop_date)) {
            return false;
        }
        if (!Objects.equals(this.booking_drop_time, other.booking_drop_time)) {
            return false;
        }
        if (!Objects.equals(this.booking_status, other.booking_status)) {
            return false;
        }
        if (!Objects.equals(this.bookingTime, other.bookingTime)) {
            return false;
        }
        if (!Objects.equals(this.topupselected, other.topupselected)) {
            return false;
        }
        return true;
    }

    public int getBooking_id() {
        return booking_id;
    }

    public void setBooking_id(int booking_id) {
        this.booking_id = booking_id;
    }

    public int getBooking_details_id() {
        return booking_details_id;
    }

    public void setBooking_details_id(int booking_details_id) {
        this.booking_details_id = booking_details_id;
    }

    public String getBooking_pickup_date() {
        return booking_pickup_date;
    }

    public void setBooking_pickup_date(String booking_pickup_date) {
        this.booking_pickup_date = booking_pickup_date;
    }

    public String getBooking_pickup_time() {
        return booking_pickup_time;
    }

    public void setBooking_pickup_time(String booking_pickup_time) {
        this.booking_pickup_time = booking_pickup_time;
    }

    public String getBooking_drop_date() {
        return booking_drop_date;
    }

    public void setBooking_drop_date(String booking_drop_date) {
        this.booking_drop_date = booking_drop_date;
    }

    public String getBooking_drop_time() {
        return booking_drop_time;
    }

    public void setBooking_drop_time(String booking_drop_time) {
        this.booking_drop_time = booking_drop_time;
    }

    public int getBooking_bike_id() {
        return booking_bike_id;
    }

    public void setBooking_bike_id(int booking_bike_id) {
        this.booking_bike_id = booking_bike_id;
    }

    public String getBooking_status() {
        return booking_status;
    }

    public void setBooking_status(String booking_status) {
        this.booking_status = booking_status;
    }

    public String getBookingTime() {
        return bookingTime;
    }

    public void setBookingTime(String bookingTime) {
        this.bookingTime = bookingTime;
    }

    public String getTopupselected() {
        return topupselected;
    }

    public void setTopupselected(String topupselected) {
        this.topupselected = topupselected;
    }

   
    
    
    
}