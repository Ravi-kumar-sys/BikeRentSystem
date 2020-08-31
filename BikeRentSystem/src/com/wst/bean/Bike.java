package com.wst.bean;

import java.util.Objects;

public class Bike 
{
    private int bike_id;
    private String bike_name;
    private String bike_description;
    private String bike_category;
    private String bike_company;
    private String bike_Model;
    private String bike_RC_No;
    private String bike_RC_Name;
    private String bike_RC_RegDate;
    private String bike_RC_ExpDate;
    private String bike_RC_CHNO;
    private String bike_RC_EnginNo;
    private String bike_YearMfg;
    private int bike_NoOfGear;
    private String bike_img;
    private String bike_color;
    private int selfstart;
    private int bike_Engin_CC;
    private int tariff_id;
    private int topup_id;
    private int priority;
    private int status;
    private String timestamp;

    public Bike() {
    }
    
    

    public Bike(int bike_id, String bike_name, String bike_description, String bike_category, String bike_company, String bike_Model, String bike_RC_No, String bike_RC_Name, String bike_RC_RegDate, String bike_RC_ExpDate, String bike_RC_CHNO, String bike_RC_EnginNo, String bike_YearMfg, int bike_NoOfGear, String bike_img, String bike_color, int selfstart, int bike_Engin_CC, int tariff_id, int topup_id, int priority, int status, String timestamp) {
        this.bike_id = bike_id;
        this.bike_name = bike_name;
        this.bike_description = bike_description;
        this.bike_category = bike_category;
        this.bike_company = bike_company;
        this.bike_Model = bike_Model;
        this.bike_RC_No = bike_RC_No;
        this.bike_RC_Name = bike_RC_Name;
        this.bike_RC_RegDate = bike_RC_RegDate;
        this.bike_RC_ExpDate = bike_RC_ExpDate;
        this.bike_RC_CHNO = bike_RC_CHNO;
        this.bike_RC_EnginNo = bike_RC_EnginNo;
        this.bike_YearMfg = bike_YearMfg;
        this.bike_NoOfGear = bike_NoOfGear;
        this.bike_img = bike_img;
        this.bike_color = bike_color;
        this.selfstart = selfstart;
        this.bike_Engin_CC = bike_Engin_CC;
        this.tariff_id = tariff_id;
        this.topup_id = topup_id;
        this.priority = priority;
        this.status = status;
        this.timestamp = timestamp;
    }

    @Override
    public String toString() {
        return "Bike{" + "bike_id=" + bike_id + ", bike_name=" + bike_name + ", bike_description=" + bike_description + ", bike_category=" + bike_category + ", bike_company=" + bike_company + ", bike_Model=" + bike_Model + ", bike_RC_No=" + bike_RC_No + ", bike_RC_Name=" + bike_RC_Name + ", bike_RC_RegDate=" + bike_RC_RegDate + ", bike_RC_ExpDate=" + bike_RC_ExpDate + ", bike_RC_CHNO=" + bike_RC_CHNO + ", bike_RC_EnginNo=" + bike_RC_EnginNo + ", bike_YearMfg=" + bike_YearMfg + ", bike_NoOfGear=" + bike_NoOfGear + ", bike_img=" + bike_img + ", bike_color=" + bike_color + ", selfstart=" + selfstart + ", bike_Engin_CC=" + bike_Engin_CC + ", tariff_id=" + tariff_id + ", topup_id=" + topup_id + ", priority=" + priority + ", status=" + status + ", timestamp=" + timestamp + '}';
    }


    @Override
    public int hashCode() {
        int hash = 7;
        hash = 79 * hash + this.bike_id;
        hash = 79 * hash + Objects.hashCode(this.bike_name);
        hash = 79 * hash + Objects.hashCode(this.bike_description);
        hash = 79 * hash + Objects.hashCode(this.bike_category);
        hash = 79 * hash + Objects.hashCode(this.bike_company);
        hash = 79 * hash + Objects.hashCode(this.bike_Model);
        hash = 79 * hash + Objects.hashCode(this.bike_RC_No);
        hash = 79 * hash + Objects.hashCode(this.bike_RC_Name);
        hash = 79 * hash + Objects.hashCode(this.bike_RC_RegDate);
        hash = 79 * hash + Objects.hashCode(this.bike_RC_ExpDate);
        hash = 79 * hash + Objects.hashCode(this.bike_RC_CHNO);
        hash = 79 * hash + Objects.hashCode(this.bike_RC_EnginNo);
        hash = 79 * hash + Objects.hashCode(this.bike_YearMfg);
        hash = 79 * hash + this.bike_NoOfGear;
        hash = 79 * hash + Objects.hashCode(this.bike_img);
        hash = 79 * hash + Objects.hashCode(this.bike_color);
        hash = 79 * hash + this.selfstart;
        hash = 79 * hash + this.bike_Engin_CC;
        hash = 79 * hash + this.tariff_id;
        hash = 79 * hash + this.topup_id;
        hash = 79 * hash + this.priority;
        hash = 79 * hash + this.status;
        hash = 79 * hash + Objects.hashCode(this.timestamp);
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
        final Bike other = (Bike) obj;
        if (this.bike_id != other.bike_id) {
            return false;
        }
        if (this.bike_NoOfGear != other.bike_NoOfGear) {
            return false;
        }
        if (this.selfstart != other.selfstart) {
            return false;
        }
        if (this.bike_Engin_CC != other.bike_Engin_CC) {
            return false;
        }
        if (this.tariff_id != other.tariff_id) {
            return false;
        }
        if (this.topup_id != other.topup_id) {
            return false;
        }
        if (this.priority != other.priority) {
            return false;
        }
        if (this.status != other.status) {
            return false;
        }
        if (!Objects.equals(this.bike_name, other.bike_name)) {
            return false;
        }
        if (!Objects.equals(this.bike_description, other.bike_description)) {
            return false;
        }
        if (!Objects.equals(this.bike_category, other.bike_category)) {
            return false;
        }
        if (!Objects.equals(this.bike_company, other.bike_company)) {
            return false;
        }
        if (!Objects.equals(this.bike_Model, other.bike_Model)) {
            return false;
        }
        if (!Objects.equals(this.bike_RC_No, other.bike_RC_No)) {
            return false;
        }
        if (!Objects.equals(this.bike_RC_Name, other.bike_RC_Name)) {
            return false;
        }
        if (!Objects.equals(this.bike_RC_RegDate, other.bike_RC_RegDate)) {
            return false;
        }
        if (!Objects.equals(this.bike_RC_ExpDate, other.bike_RC_ExpDate)) {
            return false;
        }
        if (!Objects.equals(this.bike_RC_CHNO, other.bike_RC_CHNO)) {
            return false;
        }
        if (!Objects.equals(this.bike_RC_EnginNo, other.bike_RC_EnginNo)) {
            return false;
        }
        if (!Objects.equals(this.bike_YearMfg, other.bike_YearMfg)) {
            return false;
        }
        if (!Objects.equals(this.bike_img, other.bike_img)) {
            return false;
        }
        if (!Objects.equals(this.bike_color, other.bike_color)) {
            return false;
        }
        if (!Objects.equals(this.timestamp, other.timestamp)) {
            return false;
        }
        return true;
    }

    public int getBike_id() {
        return bike_id;
    }

    public void setBike_id(int bike_id) {
        this.bike_id = bike_id;
    }

    public String getBike_name() {
        return bike_name;
    }

    public void setBike_name(String bike_name) {
        this.bike_name = bike_name;
    }

    public String getBike_description() {
        return bike_description;
    }

    public void setBike_description(String bike_description) {
        this.bike_description = bike_description;
    }

    public String getBike_category() {
        return bike_category;
    }

    public void setBike_category(String bike_category) {
        this.bike_category = bike_category;
    }

    public String getBike_company() {
        return bike_company;
    }

    public void setBike_company(String bike_company) {
        this.bike_company = bike_company;
    }

    public String getBike_Model() {
        return bike_Model;
    }

    public void setBike_Model(String bike_Model) {
        this.bike_Model = bike_Model;
    }

    public String getBike_RC_No() {
        return bike_RC_No;
    }

    public void setBike_RC_No(String bike_RC_No) {
        this.bike_RC_No = bike_RC_No;
    }

    public String getBike_RC_Name() {
        return bike_RC_Name;
    }

    public void setBike_RC_Name(String bike_RC_Name) {
        this.bike_RC_Name = bike_RC_Name;
    }

    public String getBike_RC_RegDate() {
        return bike_RC_RegDate;
    }

    public void setBike_RC_RegDate(String bike_RC_RegDate) {
        this.bike_RC_RegDate = bike_RC_RegDate;
    }

    public String getBike_RC_ExpDate() {
        return bike_RC_ExpDate;
    }

    public void setBike_RC_ExpDate(String bike_RC_ExpDate) {
        this.bike_RC_ExpDate = bike_RC_ExpDate;
    }

    public String getBike_RC_CHNO() {
        return bike_RC_CHNO;
    }

    public void setBike_RC_CHNO(String bike_RC_CHNO) {
        this.bike_RC_CHNO = bike_RC_CHNO;
    }

    public String getBike_RC_EnginNo() {
        return bike_RC_EnginNo;
    }

    public void setBike_RC_EnginNo(String bike_RC_EnginNo) {
        this.bike_RC_EnginNo = bike_RC_EnginNo;
    }

    public String getBike_YearMfg() {
        return bike_YearMfg;
    }

    public void setBike_YearMfg(String bike_YearMfg) {
        this.bike_YearMfg = bike_YearMfg;
    }

    public int getBike_NoOfGear() {
        return bike_NoOfGear;
    }

    public void setBike_NoOfGear(int bike_NoOfGear) {
        this.bike_NoOfGear = bike_NoOfGear;
    }

    public String getBike_img() {
        return bike_img;
    }

    public void setBike_img(String bike_img) {
        this.bike_img = bike_img;
    }

    public String getBike_color() {
        return bike_color;
    }

    public void setBike_color(String bike_color) {
        this.bike_color = bike_color;
    }

    public int getSelfstart() {
        return selfstart;
    }

    public void setSelfstart(int selfstart) {
        this.selfstart = selfstart;
    }

    public int getBike_Engin_CC() {
        return bike_Engin_CC;
    }

    public void setBike_Engin_CC(int bike_Engin_CC) {
        this.bike_Engin_CC = bike_Engin_CC;
    }

    public int getTariff_id() {
        return tariff_id;
    }

    public void setTariff_id(int tariff_id) {
        this.tariff_id = tariff_id;
    }

    public int getTopup_id() {
        return topup_id;
    }

    public void setTopup_id(int topup_id) {
        this.topup_id = topup_id;
    }

    public int getPriority() {
        return priority;
    }

    public void setPriority(int priority) {
        this.priority = priority;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(String timestamp) {
        this.timestamp = timestamp;
    }
}
