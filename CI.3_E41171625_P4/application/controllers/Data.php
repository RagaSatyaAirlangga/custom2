<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class Data extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->database();
    }

    //Menampilkan data kontak
    function index_get() {
        $id = $this->get('NIM');
        if ($id == '') {
            $kontak = $this->db->get('mahasiswa')->result();
        } else {
            $this->db->where('NIM', $id);
            $kontak = $this->db->get('mahasiswa')->result();
        }
        $this->response($kontak, 200);
    }

    //Masukan function selanjutnya disini
}
?>