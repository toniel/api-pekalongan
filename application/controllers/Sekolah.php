<?php
/**
 *
 */
require APPPATH.'libraries/REST_Controller.php';
class Sekolah extends REST_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model('sekolah_model');
    }

    public function index_post()
    {
        $this->sekolah_model->save($this->input->post());
        redirect('admin/sekolah/tambah');
    }
}
/* End of file Sekolah.php */
