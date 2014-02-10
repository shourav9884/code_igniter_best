<?php

class Acm_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    /**
     * @param type $data with 
     * 
     *             $data['team_name']
     * 
     *             $data['team_members'] = array(
     *                                              [1]=>
     *                                                     [batch],[student_id],[name],[email],[phone],[address] , [department]
     *                                              [2]=>
     *                                                     ...................
     *                                     );
     * @return type $status
     */
    public function create_team($data) {

        if (!$data['team_name']) {
            return -1;
        }

        $status = $this->db->insert('acm_teams', array(
            'team_id' => NULL,
            'team_name' => $data['team_name'],
            'registration_date_time' => date('Y-m-d h:M:s'),
            'status' => 'registered',
                ));

        if ($status) {
            $team_id = $this->db->select('team_id')->where('team_name', $data['team_name'])->get('acm_teams')->row_array();
            $team_id = $team_id['team_id'];

            for ($I = 0; $I < count($data['team_members']); $I++) {

                $data['team_members'][$I]['team_id'] = $team_id;
                $data['team_members'][$I]['member_id'] = NULL;
                $this->db->insert('acm_team_members', $data['team_members'][$I]);
            }
        }

        return $status;
    }

    public function is_registered($team_name) {

        return count($this->db->where('team_name', $team_name)
                                ->get('acm_teams')
                                ->row_array()) > 0;
    }

    public function get_team_info($team_id) {

        $sql = "SELECT * FROM acm_teams 
                    WHERE acm_teams.team_id = ?";

        return $this->db->query($sql, array($team_id))->row_array();
    }

    public function get_team_members($team_id) {

        return $this->db->where('team_id', $team_id)
                        ->get('acm_team_members')
                        ->result_array();
    }

    public function get_registered_teams() {

        $this->db->where('field', 'PHP');
        $query = $this->db->get('bsadd_contests');
        foreach ($query->result() as $row) {
            $field = $row->field;
            $deadline = $row->last_date_time;
        }
        $this->db->where('status', "registered");
        $this->db->where('registration_date_time <=', $deadline);
        $query = $this->db->get('acm_teams');
        $result = $query->result_array();

        return $result;
    }

}