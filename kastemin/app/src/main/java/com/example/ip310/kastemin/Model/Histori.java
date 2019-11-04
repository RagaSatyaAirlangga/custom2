package com.example.ip310.kastemin.Model;

import com.google.gson.annotations.SerializedName;

public class Histori {
    @SerializedName("jenis_kain")
    private String jenis_kain;
    @SerializedName("jumlah_baju")
    private String jumlah_baju;
    @SerializedName("catatan")
    private String catatan;

    public Histori(String jenis_kain, String jumlah_baju, String ukuran, String catatan) {
        this.jenis_kain = jenis_kain;
        this.jumlah_baju = jumlah_baju;
        this.catatan = catatan;
    }

    public String getJenis_kain() {
        return jenis_kain;
    }

    public void setJenis_kain(String jenis_kain) {
        this.jenis_kain = jenis_kain;
    }

    public String getJumlah_baju() {
        return jumlah_baju;
    }

    public void setJumlah_baju(String jumlah_baju) {
        this.jumlah_baju = jumlah_baju;
    }

    public String getCatatan() {
        return catatan;
    }

    public void setCatatan(String catatan) {
        this.catatan = catatan;
    }
}
