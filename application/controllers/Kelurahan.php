<?php
require APPPATH. 'libraries/REST_Controller.php';
/**
 *
 */
class Kelurahan extends REST_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model('kelurahan_model');
    }

    public function index_get()
    {
        $kecamatan=$this->input->get('id_kecamatan');
        if (empty($kecamatan)) {
            $kelurahan = $this->kelurahan_model->show();
        } else {
            $kelurahan = $this->kelurahan_model->find_kecamatan($kecamatan);
        }
            $this->response($kelurahan);
    }
}
/* End of file Kelurahan.php */
