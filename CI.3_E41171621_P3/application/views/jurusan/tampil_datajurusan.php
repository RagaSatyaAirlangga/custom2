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
<a href="<?php echo base_url();?>index.php/jurusan/tambah" class="btn btn-primary btn-small">Tambah Data<a>
</p>


<table id="dynamic-table" class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
				<th>no</th>
				<th>kode</th>
				<th>jurusan</th>
				<th>singkatan</th>
				<th>Ketua Jurusan</th>
				<th>nik</th>
				<th>akreditasi</th>
				<th>Action</th>
		</tr>

	</thead>
	<tbody>
		<tr>
			<?php
			$no = 1;
			foreach ($data->result() as $row) {
				?>
			
			<td><?php echo $no++; ?></td>
			<td><?php echo $row->kd_prodi ;?></td>
			<td><?php echo $row->prodi ;?></td>
			<td><?php echo $row->singkat ;?></td>
			<td><?php echo $row->ketua_prodi ;?></td>
			<td><?php echo $row->nik ;?></td>
			<td><?php echo $row->akreditasi ;?></td>
			<td>
			<a href="<?php echo base_url();?>index.php/jurusan/edit/<?php echo $row->kd_prodi; ?>">edit</a>
			<a href="<?php echo base_url();?>index.php/jurusan/delete/<?php echo $row->kd_prodi; ?>" onclick="return confirm('anda yakin ingin menghapus data ini broww');">delete</a>
			</td>
		</tr>
		<?php }?>
	</tbody>
</table>