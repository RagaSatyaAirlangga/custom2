<script type="text/javascript">
	
	$(document).ready(function(){

		$("#simpan").click(function(){

			var string = $("#my-form").serialize();
			//alert(string);
			$.ajax({
				type 	: 'POST',
				url 	: '<?php echo site_url();?>/matakuliah/simpan',
				data	: string,
				success	: function(data){
					alert(data);
				}
			});
})
	});
</script>



<form class="form-horizontal" name="my-form" id="my-form" role="form">


									<div class="form-group" >
										<label class="control-label  col-sm-2 " >Bootstrap Multiselect</label>

										<div class=" col-sm-">
											<select name="jurusan" id="jurusan">
												<option value="">Cheese</option>
												<?php
												$jurusan = $this->db->get('prodi');
												foreach ($jurusan->result() as $row){

													?>
												

												<option value="<?php echo $row->kd_prodi;?>"><?php echo $row->prodi;?>
													
												</option>

												<?php }?>
											</select>
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label ">Kode Matakuliah</label>
											<div class="controls">
											<div class="pos-rel">
												<input class="typeahead scrollable" type="text" name="kode" id="kode" placeholder="kode"  />
											</div>
										</div>
									</div>


									<div class="form-group">
										<label class="col-sm-2 control-label ">Nama Matakuliah</label>
											<div class="controls">
											<div class="pos-rel">
												<input class="typeahead scrollable" type="text" name="makul" id="makul" placeholder="Nama Matakuliah" />
											</div>
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label ">sks</label>
											<div class="controls">
											<div class="pos-rel">
												<input class="typeahead scrollable" type="text" name="sks" id="sks" placeholder="sks"  />
											</div>
										</div>
									</div>	
									<div class="form-group">
										<label class="col-sm-2 control-label ">Semester</label>
											<div class="controls">
											<div class="pos-rel">
												<input class="typeahead scrollable" type="text" name="smt" id="smt" placeholder="Semester"  />
											</div>
										</div>
									</div>	

										<div>
										&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
										<button type="button" name="simpan" id="simpan" class="btn btn-primary btn-small">Simpan</button>
										<!--a href="<?php echo base_url();?>index.php/jurusan" class="btn btn-primary btn-small">tutup</a><-->
									</div>

								</form>
