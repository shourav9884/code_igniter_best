<?php

class Page_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function create($data) {
        return $this->db->insert('pages', array(
                    'page_id' => NULL,
                    'title' => $data['title'],
                    'content' => htmlentities($data['content']),
                ));
    }

    public function update($data) {
        $id = $data['page_id'];
        return $this->db->where('page_id', $id)->update('pages', $data);
    }

    public function get_page($page_no) {

        return $this->db->where('page_id', $page_no)->get('pages')->row_array(); //query("SELECT * FROM pages WHERE pages.page_id= ?", array($page_no));
    }

    public function get_titled_page($title) {

        return $this->db->where('title', $title)
                        ->get('pages')
                        ->row_array();
    }

    public function get_all_pages() {
        $query = $this->db->order_by('page_id','desc')->get('pages');
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
    }

}