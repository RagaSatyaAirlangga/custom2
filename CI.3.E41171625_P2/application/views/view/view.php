<!DOCTYPE html>
<html>
<head>
	<title>403 Forbidden</title>
</head>
<body>

<p>Selamat datang selamat datang!!!!</p>
<h2>Hai, <?php echo $this->session->userdata("nama"); ?></h2>
<a href="<?php echo base_url('login/logout'); ?>">Logout</a>

</body>
</html>
