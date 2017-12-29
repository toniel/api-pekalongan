<?php
/**
 *
 */
class Sekolah extends CI_Controller
{

    function __construct()
    {
        parent::__construct();

        $this->load->model(['kecamatan_model','kelurahan_model']);
    }

    public function index()
    {
        $this->load->view('template');
    }

    public function tambah()
    {
        $kecamatan = $this->kecamatan_model->show();
        $data = [
                    'title'=>'Tambah Sekolah',
                    'content'=>$this->load->view('admin/form_sekolah',compact('kecamatan'),TRUE),
                ];
        $this->load->view('template',$data);
    }
    public function get_kelurahan()
    {
        # code...
        $kecamatan_id=$this->input->post('kecamatan_id');
        $kelurahan = $this->kelurahan_model->find_kecamatan($kecamatan_id);

        $this->load->view('admin/ajax_kelurahan', compact('kelurahan'));

    }
}
/* End of file Sekolah.php */
