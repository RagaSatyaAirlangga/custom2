package com.example.ip310.kastemin.Model;

import com.google.gson.annotations.SerializedName;

import java.util.List;

public class GetHistori {
    @SerializedName("status")
    String status;
    @SerializedName("result")
    List<Histori> listDataHistori;
    @SerializedName("message")
    String message;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public List<Histori> getListDataHistori() {
        return listDataHistori;
    }

    public void setListDataHistori(List<Histori> listDataHistori) {
        this.listDataHistori = listDataHistori;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
