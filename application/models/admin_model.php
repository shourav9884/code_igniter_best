<?php

class Admin_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function insert_image($data) {

        $data['photo_id'] = NULL;

        if ($this->db->insert('gallery', $data)) {
            return true;
        } else {
            return false;
        }
    }

    public function delete_image($photo_id) {

        $this->db->where('photo_id', $photo_id)->delete('gallery');
    }

    public function get_images() {

       return  $this->db->order_by('photo_id', 'desc')->get('gallery')->result_array();
    }

}