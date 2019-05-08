<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_squrity extends CI_model {

	public function getsqurity()
	{
		$username = $this->session->userdata('username');
		if(empty($username))
		{
			$this->session->sess_destroy();
			redirect('login');
		}
	}

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */