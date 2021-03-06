package com.example.ip310.kastemin;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.example.ip310.kastemin.Model.PostPutDelDaftar;
import com.example.ip310.kastemin.Rest.ApiClient;
import com.example.ip310.kastemin.Rest.ApiInterface;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class DaftarActivity extends AppCompatActivity {

    EditText namadpn, namablkng, email, pass, jk, no_hp, province, city, kode_pos,
            alamat, foto, status;
    Button btInsert, btBack;
    ApiInterface mApiInterface;
    public static DaftarActivity ma;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_daftar);

        Toolbar toolbar =(Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setTitle("Daftar Akun");
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        mApiInterface = ApiClient.getClient().create(ApiInterface.class);
        namadpn = (EditText) findViewById(R.id.namadpn);
        namablkng = (EditText) findViewById(R.id.namablkng);
        email = (EditText) findViewById(R.id.email);
        pass = (EditText) findViewById(R.id.pass);
        jk = (EditText) findViewById(R.id.Jk);
        no_hp = (EditText) findViewById(R.id.no_hp);
        province = (EditText) findViewById(R.id.province);
        city = (EditText) findViewById(R.id.city);
        kode_pos = (EditText) findViewById(R.id.kode_pos);
        alamat = (EditText) findViewById(R.id.Alamat);
        //foto = (EditText) findViewById(R.id.Foto);
        //status = (EditText) findViewById(R.id.status);
        mApiInterface = ApiClient.getClient().create(ApiInterface.class);
        btInsert = (Button) findViewById(R.id.btInserting);
        btInsert.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (namadpn.getText().toString().length() == 0) {
                    //jika form Email belum di isi / masih kosong
                    namadpn.setError("Nama Depan diperlukan!");
                } else if (namablkng.getText().toString().length() == 0) {
                    //jika form Username belum di isi / masih kosong
                    namablkng.setError("Nama Belakang diperlukan!");
                } else if (email.getText().toString().length() == 0) {
                    //jika form Passwrod belum di isi / masih kosong
                    email.setError("Email diperlukan!");
                } else if (pass.getText().toString().length() == 0) {
                    //jika form Passwrod belum di isi / masih kosong
                    pass.setError("Password diperlukan!");
                } else if (jk.getText().toString().length() == 0) {
                    //jika form Username belum di isi / masih kosong
                    jk.setError("Jenis Kelamin diperlukan!");
                } else if (no_hp.getText().toString().length() == 0) {
                    //jika form Passwrod belum di isi / masih kosong
                    no_hp.setError("Nomer Hp diperlukan!");
                } else if (city.getText().toString().length() == 0) {
                    //jika form Username belum di isi / masih kosong
                    city.setError("Kota diperlukan!");
                } else if (kode_pos.getText().toString().length() == 0) {
                    //jika form Passwrod belum di isi / masih kosong
                    kode_pos.setError("Kode Pos diperlukan!");
                } else if (alamat.getText().toString().length() == 0) {
                    //jika form Passwrod belum di isi / masih kosong
                    alamat.setError("Alamat diperlukan!");
                } else if (province.getText().toString().length() == 0) {
                    //jika form Passwrod belum di isi / masih kosong
                    province.setError("provinsi diperlukan!");
                } else {


                    Call<PostPutDelDaftar> postDaftarCall = mApiInterface.postDaftar(namadpn.getText().toString(),
                            namablkng.getText().toString(), email.getText().toString(), pass.getText().toString(),
                            jk.getText().toString(), no_hp.getText().toString(), province.getText().toString(),
                            city.getText().toString(), kode_pos.getText().toString(), alamat.getText().toString());
                    postDaftarCall.enqueue(new Callback<PostPutDelDaftar>() {
                        @Override
                        public void onResponse(Call<PostPutDelDaftar> call, Response<PostPutDelDaftar> response) {

                            Toast.makeText(getApplicationContext(), "Berhasil", Toast.LENGTH_LONG).show();
                            // Notifi.ma.refresh();
                            //finish();
                        }

                        @Override
                        public void onFailure(Call<PostPutDelDaftar> call, Throwable t) {
                            Toast.makeText(getApplicationContext(), "Error", Toast.LENGTH_LONG).show();
                        }
                    });
                }
            }
        });

        /*btBack = (Button) findViewById(R.id.btBackGo);
        btBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //MainActivity.ma.refresh();
                finish();
            }
        });*/
    }
}
