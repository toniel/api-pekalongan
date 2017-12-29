<?php
/**
 *
 */
class Sekolah_model extends CI_Model
{
    public function save($data)
    {
        $this->db->insert('sekolah',$data);
    }
}
/* End of file Sekolah_model.php */
