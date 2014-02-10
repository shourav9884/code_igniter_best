<?php

class Sport_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    /**
     * @param type $data with      * 
     *             $data['sport_name']
     * 
     *             $data['info'] = array(
     *                                      [batch],[student_id],[name],[email],[phone],[address]
     *                             );
     * @return type $status
     */
    public function create_participant($data) {

        $sport_id = $this->db->where('name', $data['sport_name'])->get('sports')->row_array();
        $sport_id = $sport_id['sport_id'];

        return $this->db->insert('sport_members', $data['info']);
    }

    public function is_registered($sport_name, $student_id) {

        $sport_id = $this->db->where('name', $sport_name)->get('sports')->row_array();
        $sport_id = $sport_id['sport_id'];

        return count($this->db->where('student_id', $student_id)
                                ->where('sport_id', $sport_id)
                                ->get('sport_members')
                                ->row_array()) > 0;
    }

    public function get_team_info($team_name) {

        $sql = "SELECT * FROM acm_teams 
                    WHERE acm_teams.team_name = ?";

        return $this->db->query($sql, array($team_name))->row_array();
    }

}