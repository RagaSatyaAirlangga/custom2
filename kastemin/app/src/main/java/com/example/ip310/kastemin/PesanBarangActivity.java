package com.example.ip310.kastemin;

import android.app.ProgressDialog;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.MediaStore;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.example.ip310.kastemin.Model.PostPutDelDaftar;
import com.example.ip310.kastemin.Model.PostPutDelPesan;
import com.example.ip310.kastemin.Model.ServerResponse;
import com.example.ip310.kastemin.Rest.ApiClient;
import com.example.ip310.kastemin.Rest.ApiConfig;
import com.example.ip310.kastemin.Rest.ApiInterface;
import com.squareup.picasso.Picasso;

import java.io.File;

import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class PesanBarangActivity extends AppCompatActivity {

    EditText jenis_kain, jumlah_baju, ukuran_baju, catatan;
    ImageView tvGambar;
    Button btPesan, btnpilih;
    ApiInterface mApiInterface;
TextView tvgmbr;
    ProgressDialog progressDialog;
    String mediaPath;
    public static PesanBarangActivity ma;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pesan_barang);

        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setTitle("Pesan Barang");
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        mApiInterface = ApiClient.getClient().create(ApiInterface.class);
        tvGambar = (ImageView) findViewById(R.id.tvGambar);

        jenis_kain = (EditText) findViewById(R.id.Jkain);
        jumlah_baju = (EditText) findViewById(R.id.JmlhBj);
        ukuran_baju = (EditText) findViewById(R.id.Ukuran);
        tvgmbr = (TextView) findViewById(R.id.tvgmbr);

        catatan = (EditText) findViewById(R.id.Catatan);

        btnpilih = (Button) findViewById(R.id.btpilih);
        btnpilih.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent galleryIntent = new Intent(Intent.ACTION_PICK,
                        android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
                startActivityForResult(galleryIntent, 0);

            }
        });

        btPesan = (Button) findViewById(R.id.btPesan);
        btPesan.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (jenis_kain.getText().toString().length() == 0) {
                    //jika form Email belum di isi / masih kosong
                    jenis_kain.setError("Jenis kain diperlukan!");
                } else if (jumlah_baju.getText().toString().length() == 0) {
                    //jika form Username belum di isi / masih kosong
                    jumlah_baju.setError("jumlah baju diperlukan!");
                } else if (ukuran_baju.getText().toString().length() == 0) {
                    //jika form Passwrod belum di isi / masih kosong
                    ukuran_baju.setError("Ukuran baju diperlukan!");
                } else if (catatan.getText().toString().length() == 0) {
                    //jika form Passwrod belum di isi / masih kosong
                    catatan.setError("Catatan diperlukan!");
                } else {

                    uploadFile();
                    Call<PostPutDelPesan> postPesanCall = mApiInterface.postPesan(jenis_kain.getText().toString(),
                            jumlah_baju.getText().toString(), ukuran_baju.getText().toString(),tvgmbr.getText().toString(),
                            catatan.getText().toString());
                    postPesanCall.enqueue(new Callback<PostPutDelPesan>() {
                        @Override
                        public void onResponse(Call<PostPutDelPesan> call, Response<PostPutDelPesan> response) {

                            Toast.makeText(getApplicationContext(), "Berhasil", Toast.LENGTH_LONG).show();
                            // Notifi.ma.refresh();
                            //finish();
                        }

                        @Override
                        public void onFailure(Call<PostPutDelPesan> call, Throwable t) {
                            Toast.makeText(getApplicationContext(), "Error", Toast.LENGTH_LONG).show();
                        }
                    });
                }

            }
        });
        Intent mIntent=getIntent();

        final String urlFoto = "http://192.168.43.70/kastemin2/foto/" + mIntent.getStringExtra("Foto");
        Picasso.with(getApplicationContext()).load(urlFoto).into(tvGambar);



    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        try {
            // When an Image is picked
            if (requestCode == 0 && resultCode == RESULT_OK && null != data) {

                // Get the Image from data
                Uri selectedImage = data.getData();
                String[] filePathColumn = {MediaStore.Images.Media.DATA};

                Cursor cursor = getContentResolver().query(selectedImage, filePathColumn, null, null, null);
                assert cursor != null;
                cursor.moveToFirst();

                int columnIndex = cursor.getColumnIndex(filePathColumn[0]);
                mediaPath = cursor.getString(columnIndex);
//                tvfileimage.setText(mediaPath);
                String filename = mediaPath.substring(mediaPath.lastIndexOf("/") + 1);
                 tvgmbr.setText(filename);
                // Set the Image in ImageView for Previewing the Media
//                tvGambar.setImageBitmap(BitmapFactory.decodeFile(mediaPath));
                cursor.close();


            } else {
                Toast.makeText(this, "You haven't picked Image/Video", Toast.LENGTH_LONG).show();
            }
        } catch (Exception e) {
            Toast.makeText(this, "Something went wrong", Toast.LENGTH_LONG).show();
        }

    }

    private void uploadFile() {

        // Map is used to multipart the file using okhttp3.RequestBody
        File file = new File(mediaPath);

        // Parsing any Media type file
        RequestBody requestBody = RequestBody.create(MediaType.parse("*/*"), file);
        MultipartBody.Part fileToUpload = MultipartBody.Part.createFormData("file", file.getName(), requestBody);
        RequestBody filename = RequestBody.create(MediaType.parse("text/plain"), file.getName());

        ApiConfig getResponse = ApiClient.getRetrofit().create(ApiConfig.class);
        Call<ServerResponse> call = getResponse.uploadFile(fileToUpload, filename);
        call.enqueue(new Callback<ServerResponse>() {
            @Override
            public void onResponse(Call<ServerResponse> call, Response<ServerResponse> response) {
                ServerResponse serverResponse = response.body();
                if (serverResponse != null) {
                    if (serverResponse.getSuccess()) {
                        Toast.makeText(getApplicationContext(), serverResponse.getMessage(), Toast.LENGTH_SHORT).show();
                    } else {
                        Toast.makeText(getApplicationContext(), serverResponse.getMessage(), Toast.LENGTH_SHORT).show();
                    }
                }
            }

            @Override
            public void onFailure(Call<ServerResponse> call, Throwable t) {

            }
        });
    }

}
