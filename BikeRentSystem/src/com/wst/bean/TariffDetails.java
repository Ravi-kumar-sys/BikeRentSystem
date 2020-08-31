package com.wst.bean;

public class TariffDetails 
{
    private int td_id;
    private int tariff_id;
    private int td_duration;
    private double td_tariff_amount;
    private int td_rideLimit;
    private double td_afterLimit_amount;
    private int td_afterLimit_km;
    private double td_afterLimit_unit_charge;

    public TariffDetails() {
    }
    
    

    public TariffDetails(int td_id, int tariff_id, int td_duration, double td_tariff_amount, int td_rideLimit, double td_afterLimit_amount, int td_afterLimit_km, double td_afterLimit_unit_charge) {
        this.td_id = td_id;
        this.tariff_id = tariff_id;
        this.td_duration = td_duration;
        this.td_tariff_amount = td_tariff_amount;
        this.td_rideLimit = td_rideLimit;
        this.td_afterLimit_amount = td_afterLimit_amount;
        this.td_afterLimit_km = td_afterLimit_km;
        this.td_afterLimit_unit_charge = td_afterLimit_unit_charge;
    }

    @Override
    public String toString() {
        return "TariffDetails{" + "td_id=" + td_id + ", tariff_id=" + tariff_id + ", td_duration=" + td_duration + ", td_tariff_amount=" + td_tariff_amount + ", td_rideLimit=" + td_rideLimit + ", td_afterLimit_amount=" + td_afterLimit_amount + ", td_afterLimit_km=" + td_afterLimit_km + ", td_afterLimit_unit_charge=" + td_afterLimit_unit_charge + '}';
    }

   

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 97 * hash + this.td_id;
        hash = 97 * hash + this.tariff_id;
        hash = 97 * hash + this.td_duration;
        hash = 97 * hash + (int) (Double.doubleToLongBits(this.td_tariff_amount) ^ (Double.doubleToLongBits(this.td_tariff_amount) >>> 32));
        hash = 97 * hash + this.td_rideLimit;
        hash = 97 * hash + (int) (Double.doubleToLongBits(this.td_afterLimit_amount) ^ (Double.doubleToLongBits(this.td_afterLimit_amount) >>> 32));
        hash = 97 * hash + this.td_afterLimit_km;
        hash = 97 * hash + (int) (Double.doubleToLongBits(this.td_afterLimit_unit_charge) ^ (Double.doubleToLongBits(this.td_afterLimit_unit_charge) >>> 32));
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
        final TariffDetails other = (TariffDetails) obj;
        if (this.td_id != other.td_id) {
            return false;
        }
        if (this.tariff_id != other.tariff_id) {
            return false;
        }
        if (this.td_duration != other.td_duration) {
            return false;
        }
        if (Double.doubleToLongBits(this.td_tariff_amount) != Double.doubleToLongBits(other.td_tariff_amount)) {
            return false;
        }
        if (this.td_rideLimit != other.td_rideLimit) {
            return false;
        }
        if (Double.doubleToLongBits(this.td_afterLimit_amount) != Double.doubleToLongBits(other.td_afterLimit_amount)) {
            return false;
        }
        if (this.td_afterLimit_km != other.td_afterLimit_km) {
            return false;
        }
        if (Double.doubleToLongBits(this.td_afterLimit_unit_charge) != Double.doubleToLongBits(other.td_afterLimit_unit_charge)) {
            return false;
        }
        return true;
    }

    public int getTd_id() {
        return td_id;
    }

    public void setTd_id(int td_id) {
        this.td_id = td_id;
    }

    public int getTariff_id() {
        return tariff_id;
    }

    public void setTariff_id(int tariff_id) {
        this.tariff_id = tariff_id;
    }

    public int getTd_duration() {
        return td_duration;
    }

    public void setTd_duration(int td_duration) {
        this.td_duration = td_duration;
    }

    public double getTd_tariff_amount() {
        return td_tariff_amount;
    }

    public void setTd_tariff_amount(double td_tariff_amount) {
        this.td_tariff_amount = td_tariff_amount;
    }

    public int getTd_rideLimit() {
        return td_rideLimit;
    }

    public void setTd_rideLimit(int td_rideLimit) {
        this.td_rideLimit = td_rideLimit;
    }

    public double getTd_afterLimit_amount() {
        return td_afterLimit_amount;
    }

    public void setTd_afterLimit_amount(double td_afterLimit_amount) {
        this.td_afterLimit_amount = td_afterLimit_amount;
    }

    public int getTd_afterLimit_km() {
        return td_afterLimit_km;
    }

    public void setTd_afterLimit_km(int td_afterLimit_km) {
        this.td_afterLimit_km = td_afterLimit_km;
    }

    public double getTd_afterLimit_unit_charge() {
        return td_afterLimit_unit_charge;
    }

    public void setTd_afterLimit_unit_charge(double td_afterLimit_unit_charge) {
        this.td_afterLimit_unit_charge = td_afterLimit_unit_charge;
    }
}
