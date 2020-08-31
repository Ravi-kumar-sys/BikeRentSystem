package com.wst.bean;

import java.util.Objects;

public class Tariff
{
    private int tariff_id;
    private String tariff_name;
    private String tariff_Details;
    private int tariff_status;
    private String tariff_CreateTime;

    public Tariff() {
    }
    
    

    public Tariff(int tariff_id, String tariff_name, String tariff_Details, int tariff_status, String tariff_CreateTime) {
        this.tariff_id = tariff_id;
        this.tariff_name = tariff_name;
        this.tariff_Details = tariff_Details;
        this.tariff_status = tariff_status;
        this.tariff_CreateTime = tariff_CreateTime;
    }

   

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 67 * hash + this.tariff_id;
        hash = 67 * hash + Objects.hashCode(this.tariff_name);
        hash = 67 * hash + Objects.hashCode(this.tariff_Details);
        hash = 67 * hash + this.tariff_status;
        hash = 67 * hash + Objects.hashCode(this.tariff_CreateTime);
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
        final Tariff other = (Tariff) obj;
        if (this.tariff_id != other.tariff_id) {
            return false;
        }
        if (this.tariff_status != other.tariff_status) {
            return false;
        }
        if (!Objects.equals(this.tariff_name, other.tariff_name)) {
            return false;
        }
        if (!Objects.equals(this.tariff_Details, other.tariff_Details)) {
            return false;
        }
        if (!Objects.equals(this.tariff_CreateTime, other.tariff_CreateTime)) {
            return false;
        }
        return true;
    }

    public int getTariff_id() {
        return tariff_id;
    }

    public void setTariff_id(int tariff_id) {
        this.tariff_id = tariff_id;
    }

    public String getTariff_name() {
        return tariff_name;
    }

    public void setTariff_name(String tariff_name) {
        this.tariff_name = tariff_name;
    }

    public String getTariff_Details() {
        return tariff_Details;
    }

    public void setTariff_Details(String tariff_Details) {
        this.tariff_Details = tariff_Details;
    }

    public int getTariff_status() {
        return tariff_status;
    }

    public void setTariff_status(int tariff_status) {
        this.tariff_status = tariff_status;
    }

    public String getTariff_CreateTime() {
        return tariff_CreateTime;
    }

    public void setTariff_CreateTime(String tariff_CreateTime) {
        this.tariff_CreateTime = tariff_CreateTime;
    }

    public void setBike_name(String parameter) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
