<?php
class Kecamatan_model extends CI_Model{
    public function show()
    {
        $sql="SELECT kecamatan.* ,COUNT(kelurahan.kecamatan_id) AS jml_kelurahan  FROM `kecamatan` LEFT JOIN kelurahan on kecamatan.id_kecamatan=kelurahan.kecamatan_id GROUP BY kecamatan.id_kecamatan";
        return $this->db->query($sql)->result();
    }
    public function find($id="")
    {
        return $this->db->get_where('kecamatan',['id_kecamatan'=>$id])->row_array();
    }
    public function save($data)
    {
        $this->db->insert('kecamatan',$data);
    }
}
/* End of file Kecamatan_model.php */
