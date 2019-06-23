<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class Baju extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->database();
    }

    //Menampilkan data kontak
    function index_get() {
        $kontak=$this->db->get('barang')->result();
        $this->response(array("result"=>$kontak, 200));
    }


    function index_post() {

        $data = array(
                    'id'                => $this->post('id'),
                    'email'             => $this->post('email'),
                    'namadpn'           => $this->post('namadpn'),
                    'namablkng'         => $this->post('namablkng'),
                    'pass'              => $this->post('pass'),
                    'jk'                => $this->post('jk'),
                    'no_hp'             => $this->post('no_hp'),
                    'province'          => $this->post('province'),
                    'city'              => $this->post('city'),
                    'kode_pos'          => $this->post('kode_pos'),
                    'alamat'            => $this->post('alamat'),
                    'foto'              => $this->post('foto'),
                    'status'    => $this->post('status'));
        $insert = $this->db->insert('user', $data);
        if ($insert) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
            }
    

    //Masukan function selanjutnya disini
}
}
?>