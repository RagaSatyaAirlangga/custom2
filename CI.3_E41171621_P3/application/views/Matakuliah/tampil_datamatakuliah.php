<script type="text/javascript">
			jQuery(function($) {
				//initiate dataTables plugin
				var myTable = 
				$('#dynamic-table')
				//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
				.DataTable( {
					bAutoWidth: false,
					"aoColumns": [
					  null, null,null, null, null, null, null,
					  { "bSortable": false }
					],
					"aaSorting": [],
					
					
				});
			
			})
		</script>
<p>
<a href="<?php echo base_url();?>index.php/matakuliah/tambah" class="btn btn-primary btn-small">Tambah Data<a>
</p>


<table id="dynamic-table" class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
				<th>no</th>
				<th>nama jurusan</th>
				<th>kode matakuliah</th>
				<th>nama matkul</th>
				<th>sks</th>
				<th>semester</th>
				<th>aktif</th>
				<th>Aksi</th>
		</tr>

	</thead>
	<tbody>
		<tr>
			<?php
			$no = 1;
			foreach ($data->result() as $row) {
				$jurusan = $this->Model_matakuliah->tampildatamatkul($row->kd_prodi);
				?>
			
			<td><?php echo $no++; ?></td>
			<td><?php echo $jurusan ; ?></td>
			<td><?php echo $row->kd_mk ; ?></td>
			<td><?php echo $row->nama_mk ; ?></td>
			<td><?php echo $row->sks ; ?></td>
			<td><?php echo $row->smt ; ?></td>
			<td><?php echo $row->aktif ; ?></td>
			
			<td>
			<a href="">edit</a>
			<a href="">delete</a>
			</td>
		</tr>
		<?php }?>
	</tbody>
</table>