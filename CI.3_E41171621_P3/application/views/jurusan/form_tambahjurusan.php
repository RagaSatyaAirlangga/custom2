<script type="text/javascript">
	function cekform()
	{
		if(!$("#kode").val())
		{
			alert('kode tidak boleh kosong');
			$("#kode").focus()
			return false;
		}

		if(!$("#jurusan").val())
		{
			alert('jurusan tidak boleh kosong');
			$("#jurusan").focus()
			return false;
		}

				if(!$("#singkat").val())
		{
			alert('singkat tidak boleh kosong');
			$("#singkat").focus()
			return false;
		}


				if(!$("#ketua").val())
		{
			alert('ketua tidak boleh kosong');
			$("#ketua").focus()
			return false;
		}

				if(!$("#nik").val())
		{
			alert('nik tidak boleh kosong');
			$("#nik").focus()
			return false;
		}


				if(!$("#akreditasi").val())
		{
			alert('akreditasi tidak boleh kosong');
			$("#akreditasi").focus()
			return false;
		}

	}
</script>

<?php
$info = $this->session->flashdata('info');
if(!empty($info))
{
	echo $info;
}
?>


<form class="form-horizontal" role="form" method="POST" action="<?php echo base_url();?>index.php/jurusan/simpan" onsubmit="return cekform();">
									<div class="form-group">
										<label class="col-sm-2 control-label ">Kode Jurusan</label>
											<div class="controls">
											<div class="pos-rel">
												<input class="typeahead scrollable" type="text" name="kode" id="kode" placeholder="kode" value="<?php echo  $kode; ?>" />
											</div>
										</div>
									</div>


									<div class="form-group">
										<label class="col-sm-2 control-label ">Jurusan</label>
											<div class="controls">
											<div class="pos-rel">
												<input class="typeahead scrollable" type="text" name="jurusan" id="jurusan" placeholder="jurusan" value="<?php echo  $jurusan; ?>" />
											</div>
										</div>
									</div>



									<div class="form-group">
										<label class="col-sm-2 control-label ">Singkatan</label>
											<div class="controls">
											<div class="pos-rel">
												<input class="typeahead scrollable" type="text" name="singkat" id="singkat" placeholder="singkat" value="<?php echo  $singkat; ?>"/>
											</div>
										</div>
									</div>

									
									<div class="form-group">
										<label class="col-sm-2 control-label ">Ketua Jurusan</label>
											<div class="controls">
											<div class="pos-rel">
												<input class="typeahead scrollable" type="text" name="ketua" id="ketua" placeholder="ketua" value="<?php echo  $ketua; ?>" />
											</div>
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label ">Nik</label>
											<div class="controls">
											<div class="pos-rel">
												<input class="typeahead scrollable" type="text" name="nik" id="nik" placeholder="nik"  value="<?php echo  $nik; ?>"/>
											</div>
										</div>
									</div>



									<div class="form-group">
										<label class="col-sm-2 control-label ">akreditasi</label>
											<div class="controls">
											<div class="pos-rel">
												<input class="typeahead scrollable" type="text" name="akreditasi" id="akreditasi" placeholder="akreditasi" value="<?php echo  $akreditasi; ?>" />
											</div>
										</div>
									</div>


									<div>
										&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
										<button type="submit" class="btn btn-primary btn-small">Simpan</button>
										<a href="<?php echo base_url();?>index.php/jurusan" class="btn btn-primary btn-small">tutup</a>
									</div>
									

	</form>