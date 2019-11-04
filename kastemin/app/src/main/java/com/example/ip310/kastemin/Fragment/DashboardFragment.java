package com.example.ip310.kastemin.Fragment;

import com.example.ip310.kastemin.Cart;
import com.example.ip310.kastemin.PengaturanAkunActivity;
import com.example.ip310.kastemin.PesananSayaActivity;
import com.example.ip310.kastemin.R;
import com.example.ip310.kastemin.login;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;


public class DashboardFragment extends Fragment {
    //private Button btnPesanan;
    private CardView pesanan,pengaturan;
SharedPreferences sharedPreferences;
    public DashboardFragment() {
        // Required empty public constructor
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
      View v= inflater.inflate(R.layout.fragment_dashboard, container, false);
        TextView nama=(TextView) v.findViewById(R.id.nama);

        pesanan = (CardView) v.findViewById(R.id.pesanan);
        pengaturan = (CardView) v.findViewById(R.id.pengaturan);

        pesanan.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getContext(),Cart.class);
                startActivity(intent);
                return ;
            }
        });
        pengaturan.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getContext(),PengaturanAkunActivity.class);
                startActivity(intent);
                return ;
            }
        });

        SharedPreferences sharedPreferences =getContext().getSharedPreferences("remember",Context.MODE_PRIVATE);
        String namadpn=sharedPreferences.getString("namadpn", "1");
        String namablkng=sharedPreferences.getString("namablkng", "2");
        nama.setText(namadpn+" "+namablkng);

      return v;

    }

}
