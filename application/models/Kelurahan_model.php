<?php
/**
 *
 */
class Kelurahan_model extends CI_Model
{
    public function show()
    {
        $this->db->select('*');
        $this->db->from('kelurahan');
        $this->db->join('kecamatan','kecamatan.id_kecamatan=kelurahan.kecamatan_id','left');

        return $this->db->get()->result();
    }
    public function find_kecamatan($kecamatan_id)
    {
        $this->db->select('*');
        $this->db->from('kelurahan');
        $this->db->join('kecamatan','kecamatan.id_kecamatan=kelurahan.kecamatan_id','left');
        $this->db->where('kelurahan.kecamatan_id', $kecamatan_id);
        return $this->db->get()->result();
    }
    public function find($id_kelurahan)
    {
        return $this->db->get_where('kelurahan',['id_kelurahan'=>$id_kelurahan])->row();
    }
}
/* End of file Kelurahan.php */
