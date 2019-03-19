<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!-- saved from url=(0032)https://sim-online.polije.ac.id/ -->
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<meta name="description" content="Your description goes here">
	<meta name="keywords" content="your,keywords,goes,here">
	<meta name="author" content="Your Name">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url ('assets/login_polihe_files/dikti.css" media="screen,projection') ?>">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url ('assets/login_polihe_files/style_menu.css" media="screen,projection ') ?>">	
	<link rel="stylesheet" type="text/css" href="<?php echo base_url ('assets/login_polihe_files/scroller.css" media="screen,projection')	?>">
	<title>Politeknik Negeri Jember</title>
<script type="text/javascript" src="<?php echo base_url('assets/login_polihe_files/ajax.js.download') ?>"></script>	
<script type="text/javascript" src="<?php echo base_url('assets/login_polihe_files/scroller.js.download') ?>"></script>	
<script language="JavaScript">
	
	function awal(){
		if(document.getElementById('txtEmail')){
			document.kirim.txtEmail.focus();
		}
	}		
</script>

</head>

<body onload="awal()">
<div id="container">
	<div id="header">
		<h1>Politeknik Negeri Jember </h1>
<h2>Sistem Informasi Akademik Online </h2>
	</div>

	<div class="mainmenu">
		
 
	</div>

	<div id="content">

		<div class="splitcontentleft">
							<div align="center"><img src="<?php echo base_url(); ?>assets/login_polihe_files/logoPolije.png" width="160" height="160"></div>
				      
		</div>
		
		<div class="splitcontentright">
										<form id="kirim" name="kirim" method="post" action="https://sim-online.polije.ac.id/">
							<br><br>
							<table width="500" border="0" cellspacing="0" class="formlogin">
							  <tbody><tr>
								<td colspan="5" class="formloginHd">LOGIN</td>
							  </tr>
							  <tr>
								<td colspan="5"><input name="data" type="hidden" id="data"></td>
							  </tr>
							  <tr>
								<td width="90" rowspan="4" align="center"><img src="<?php echo base_url(); ?>assets/login_polihe_files/social.jpg"></td>
								<td width="73">NIM</td>
								<td width="13">:</td>
								<td colspan="2"><label>
								  <input name="txtEmail" type="text" id="txtEmail" onkeypress="if (event.keyCode==13) masuk()" size="18">
</label></td>
							  </tr>							  
							  <tr>
							    <td>Password</td>
							    <td>:</td>
							    <td width="115"><input name="txtPassword" type="password" id="txtPassword" onkeypress="if (event.keyCode==13) masuk()" size="18"></td>
						      <td width="197"><div id="mengunduh"></div></td>
							  </tr>
							  <tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td><label>
								  <input type="button" name="Button" value="Login" onclick="masuk()">
								</label></td>
							  <td>&nbsp;</td>
							  </tr>
							</tbody></table>
							<table width="500" border="0">
                              <tbody><tr>
                                <td><table width="473" cellpadding="0" cellspacing="0">
                                  <tbody><tr>
                                    <td colspan="2">Petunjuk : </td>
                                  </tr>
                                  <tr>
                                    <td colspan="2"> - Alur Daftar Ulang Mahasiswa Reguler, Download di <a href="https://sim-online.polije.ac.id/files/Alur_Reguler.pdf" target="_blank">sini </a></td>
                                  </tr>
                                  <tr>
                                    <td colspan="2"> - Buku Petunjuk Daftar Ulang Mahasiswa Reguler, Download di <a href="https://sim-online.polije.ac.id/files/Petunjuk_Reguler.pdf" target="_blank">sini </a></td>
                                  </tr>
								  <tr>
                                    <td colspan="2"> - Alur Daftar Ulang Mahasiswa Bidikmisi, Download di <a href="https://sim-online.polije.ac.id/files/Alur_Bidikmisi.pdf" target="_blank">sini </a></td>
                                  </tr>
								  <tr>
                                    <td colspan="2"> - Buku Petunjuk Daftar Ulang Mahasiswa Bidik Misi, Download di <a href="https://sim-online.polije.ac.id/files/Petunjuk_Bidikmisi.pdf" target="_blank">sini </a></td>
                                  </tr>
                                  <!--<tr>
                                    <td colspan="2">- Buku Petunjuk Daftar Ulang Mahasiswa BidikMisi/Beasiswa Unggulan, <br />
                                    &nbsp;&nbsp;Download di <a href="files/Petunjuk_Beasiswa.pdf" target="_blank">sini </a></td>
                                  </tr>-->
                                  <!--<tr>
                                    <td colspan="2">- Buku Petunjuk Pembayaran di Bank Mandiri, Download di <a href="files/Bank.pdf" target="_blank">sini </a></td>
                                  </tr>-->
                                  <tr>
                                    <td colspan="2">- Form Pendaftaran Akses Internet SSO, Download di <a href="https://sim-online.polije.ac.id/files/SSOPolije-Brosur.pdf" target="_blank">sini </a></td>
                                  </tr>
				  <!--<tr>
                                    <td colspan="2">- Form Pendaftaran Program Pulang Kampung Polije, Download di <a href="files/FormPPKP.docx" target="_blank">sini </a></td>
                                  </tr>-->
				  <tr>
                                    <td colspan="2">- Buku Petunjuk Pendaftaran PKL, Download di <a href="https://sim-online.polije.ac.id/files/ManualPKL.pdf" target="_blank">sini </a></td>
                                  </tr>
				  <tr>
				    <td colspan="2">- Buku Pedoman PKL, Download di <a href="https://sim-online.polije.ac.id/files/PEDOMANPKL.pdf" target="_blank">sini </a></td>
				    </tr>
				  <tr>
				    <td colspan="2">- Buku Petunjuk Pendaftaran Tugas Akhir, Download di <a href="https://sim-online.polije.ac.id/files/ManualTA.pdf" target="_blank">sini </a></td>					
				    </tr>
				  <tr>
				    <td colspan="2">- Kalender Akademik Semester Ganjil 2019/2020, Download di <a href="https://sim-online.polije.ac.id/files/KalenderAkademik.jpg" target="_blank">sini </a></td>					
				    </tr>
				  <tr>
				    <td colspan="2">- Panduan Pendaftaran Wisuda Online Mahasiswa, Download di <a href="https://sim-online.polije.ac.id/files/PanduanPendaftaranWisudaOnline.pdf" target="_blank">sini </a></td>
				    </tr>
				  <tr>
				    <td colspan="2">- Alur Pengajuan Naskah Ilmiah Turnitin, Download di <a href="https://sim-online.polije.ac.id/files/AlurTurnitin.pdf" target="_blank">sini </a></td>
				    </tr>
                                </tbody></table></td>
                              </tr>
                            </tbody></table>
														</form>							
																
		</div>		

	</div>
	

	<div id="footer">
		<p>© 2015</p>
	</div>

</div>

</body></html>