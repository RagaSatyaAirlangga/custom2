package com.example.ip310.kastemin.Model;

import com.google.gson.annotations.SerializedName;

public class Pesan_barang {
    @SerializedName("jenis_kain")
    private String jenis_kain;
    @SerializedName("jumlah")
    private String jumlah;
    @SerializedName("ukuran")
    private String ukuran;
    @SerializedName("foto")
    private String foto;
    @SerializedName("catatan")
    private String catatan;

    public Pesan_barang(String jenis_kain, String jumlah, String ukuran, String catatan) {
        this.jenis_kain = jenis_kain;
        this.jumlah = jumlah;
        this.ukuran = ukuran;
        this.foto = foto;
        this.catatan = catatan;

    }

    public String getJenis_kain() {
        return jenis_kain;
    }

    public void setJenis_kain(String jenis_kain) {
        this.jenis_kain = jenis_kain;
    }

    public String getJumlah() {
        return jumlah;
    }

    public void setJumlah(String jumlah) {
        this.jumlah = jumlah;
    }

    public String getUkuran() {
        return ukuran;
    }

    public void setUkuran(String ukuran) {
        this.ukuran = ukuran;
    }

    public String getFile() {
        return foto;
    }

    public void setFile(String foto) {
        this.foto = foto;
    }

    public String getCatatan() {
        return catatan;
    }

    public void setCatatan(String catatan) {
        this.catatan = catatan;
    }
}
