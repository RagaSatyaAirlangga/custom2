<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index()
	{
		$this->model_squrity->getsqurity();
		$isi['content'] 	= 'tampilan_content';
		$isi['judul']		= 'home';
		$isi['sub_judul']	='';
 		$this->load->view('tampilan_home',$isi);
	}
		public function logout()
	{
		$this->session->sess_destroy();
		redirect('login');
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */