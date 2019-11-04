package com.example.ip310.kastemin;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;

import com.example.ip310.kastemin.Adapter.BarangAdapter;
import com.example.ip310.kastemin.Adapter.HistoryAdapter;
import com.example.ip310.kastemin.Fragment.HomeFragment;
import com.example.ip310.kastemin.Model.Detail_barang;
import com.example.ip310.kastemin.Model.GetHistori;
import com.example.ip310.kastemin.Model.Getdetail_barang;
import com.example.ip310.kastemin.Model.Histori;
import com.example.ip310.kastemin.Rest.ApiClient;
import com.example.ip310.kastemin.Rest.ApiInterface;

import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class Cart extends AppCompatActivity {
    ApiInterface mApiInterface;
    private RecyclerView mRecyclerView;
    private RecyclerView.Adapter mAdapter;
    private RecyclerView.LayoutManager mLayoutManager;
    public static Cart ma;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_cart);
        mRecyclerView = (RecyclerView) findViewById(R.id.r2);
        mLayoutManager = new LinearLayoutManager(this);
        mRecyclerView.setLayoutManager(mLayoutManager);
        mApiInterface = ApiClient.getClient().create(ApiInterface.class);
        ma=this;
        refresh();

    }

    private void refresh() {
        Call<GetHistori> kontakCall = mApiInterface.getCart();
        kontakCall.enqueue(new Callback<GetHistori>() {
            @Override
            public void onResponse(Call<GetHistori> call, Response<GetHistori>
                    response) {
                List<Histori> BarangkList = response.body().getListDataHistori();
                Log.d("Retrofit Get", "Jumlah data Kontak: " +
                        String.valueOf(BarangkList.size()));
                mAdapter = new HistoryAdapter(BarangkList,Cart.this);
                mRecyclerView.setAdapter(mAdapter);
            }

            @Override
            public void onFailure(Call<GetHistori> call, Throwable t) {
                Log.e("Retrofit Get", t.toString());
            }
        });
    }
    }


