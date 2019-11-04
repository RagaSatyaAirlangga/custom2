package com.example.ip310.kastemin.Model;

import com.google.gson.annotations.SerializedName;

public class PostPutDelHistori {
    @SerializedName("status")
    String status;
    @SerializedName("result")
    Daftar mHistori;
    @SerializedName("message")
    String message;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Daftar getmHistori() {
        return mHistori;
    }

    public void setmHistori(Daftar mHistori) {
        this.mHistori = mHistori;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
