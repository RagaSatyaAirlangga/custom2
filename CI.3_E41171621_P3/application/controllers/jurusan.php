<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Jurusan extends CI_Controller {

	public function index()
	{
		$this->model_squrity->getsqurity();
		$isi['content'] 	= 'jurusan/tampil_datajurusan';
		$isi['judul']		= 'master';
		$isi['sub_judul']	='jurusan';
		$isi['data']		= $this->db->get('prodi');
 		$this->load->view('tampilan_home',$isi);
	}
	
	public function tambah()
	{

		$this->model_squrity->getsqurity();
		$isi['content'] 	= 'jurusan/form_tambahjurusan';
		$isi['judul']		= 'master';
		$isi['sub_judul']	='tambah jurusan';
		$isi['kode']		= '';
		$isi['jurusan']		= '';
		$isi['singkat']		='';
		$isi['ketua']		= '';
		$isi['nik']			= '';
		$isi['akreditasi']	='';

 		$this->load->view('tampilan_home',$isi);
	}

	public function edit()
	{

		$this->model_squrity->getsqurity();
		$isi['content'] 	= 'jurusan/form_tambahjurusan';
		$isi['judul']		= 'master';
		$isi['sub_judul']	='edit jurusan';


		$key = $this->uri->segment(3);
		$this->db->where('kd_prodi',$key);
		$query = $this->db->get('prodi');
		if($query->num_rows()>0)
		{
			foreach ($query->result() as $row) 
			{
				$isi['kode']		= $row->kd_prodi;
				$isi['jurusan']		= $row->prodi;
				$isi['singkat']		= $row->singkat;
				$isi['ketua']		= $row->ketua_prodi;
				$isi['nik']			= $row->nik;
				$isi['akreditasi']		= $row->akreditasi;
			}
		}
		else
		{
				$isi['kode']		= '';
				$isi['jurusan']		= '';
				$isi['singkat']		='';
				$isi['ketua']		= '';
				$isi['nik']			= '';
				$isi['akreditasi']	='';
		}

 		$this->load->view('tampilan_home',$isi);
	}

	public function simpan()
	{
		$this->model_squrity->getsqurity();

		$key = $this->input->post('kode');
		$data['kd_prodi'] 		 = $this->input->post('kode');
		$data['prodi']  		= $this->input->post('jurusan');
		$data['singkat'] 	 	= $this->input->post('singkat');
		$data['ketua_prodi'] 	 = $this->input->post('ketua');
		$data['nik']  			= $this->input->post('nik');
		$data['akreditasi']  	= $this->input->post('akreditasi');

		$this->load->model('model_jurusan');
		$query = $this->model_jurusan-> getdata($key);
		if($query->num_rows()>0)
		{
			$this->model_jurusan->getupdate($key,$data); 
			$this->session->set_flashdata('info','data sukses di update');

		}
		else
		{
			$this->model_jurusan->getinsert($data);
			$this->session->set_flashdata('info','data sukses di simpan');
		}
		redirect('jurusan/tambah');
	}
	public function delete()
	{
		$this->model_squrity->getsqurity();
		$this->load->model('model_jurusan');

		$key = $this->uri->segment(3);
		$this->db->where('kd_prodi',$key);
		$query = $this->db->get('prodi');
		if($query->num_rows()>0)
		{
			$this->model_jurusan->getdelete($key);
		}
		redirect('jurusan');
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */