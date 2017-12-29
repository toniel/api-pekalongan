<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kecamatan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('kecamatan_model');
	}

	public function index(){
		$data = [
		            'title'=>'Tambah Kecamatan',
		            // 'content'=>'',
		            'content'=>$this->load->view('admin/form_kecamatan', [] , TRUE),
		        ];
		$this->load->view('template', $data);
	}

}

/* End of file Kecamatan.php */
/* Location: ./application/controllers/admin/Kecamatan.php */
