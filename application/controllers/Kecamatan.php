<?php
/**
 *
 */
require APPPATH.'libraries/REST_Controller.php';

class Kecamatan extends REST_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model('kecamatan_model');
        $this->load->helper('download');
    }

    public function index_post()
    {

        $this->kecamatan_model->save($this->input->post());
        redirect('admin/kecamatan');

    }
    public function index_get()
    {
        $id = $this->input->get('id');
        if ($id=='') {

            $kecamatan = $this->kecamatan_model->show();
        } else {
            $kecamatan = $this->kecamatan_model->find($id);

        }

         $this->response($kecamatan,200);
    }
    public function get_data()
    {
        $data = $this->kecamatan_model->show();
        force_download('kecamatan.json',json_encode($data));
    }
}

/* End of file Kecmatan.php */
