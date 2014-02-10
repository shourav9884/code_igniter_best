<?php

class Bsadd_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    /**
     *
     * @param type $data with 
     *             $data['field']
     * 
     *             $data['team_name']
     * 
     *             $data['institution']          
     * 
     *             $data['department']   
     *          
     *             $data['session']
     * 
     *             $data['team_members'] = array(
     *                                              [1]=>
     *                                                     [student_id],[name],[email],[phone],[address]
     *                                              [2]=>
     *                                                     ...................
     *                                     );
     * @return type $status
     */
    public function create_team($data) {

        if (!$data['team_name']) {
            return -1;
        }

        $bsadd_contest_id = $this->db->select('contest_id')
                ->where('field', $data['field'])
                ->get('bsadd_contests')
                ->row_array();
        $bsadd_contest_id = $bsadd_contest_id['contest_id'];


        $status = $this->db->insert('bsadd_contest_teams', array(
            'team_id' => NULL,
            'contest_id' => $bsadd_contest_id,
            'team_name' => $data['team_name'],
            'institution' => $data['institution'],
            'department' => $data['department'],
            'session' => $data['session'],
            'registration_date_time' => date('Y-m-d h:M:s'),
            'status' => 'registered',
            'payment_status' => 0
                ));

        if ($status) {
            $team_id = $this->db->insert_id('bsadd_contest_teams');

            for ($I = 0; $I < count($data['team_members']); $I++) {

                $data['team_members'][$I]['team_id'] = $team_id;
                $data['team_members'][$I]['member_id'] = NULL;
                $this->db->insert('bsadd_contest_team_members', $data['team_members'][$I]);
            }
        }

        return $status;
    }

    public function is_registered($field, $team_name) {

        $bsadd_contest_id = $this->db->select('contest_id')
                ->where('field', $field)
                ->get('bsadd_contests')
                ->row_array();
        $bsadd_contest_id = $bsadd_contest_id['contest_id'];

        return count($this->db->where('contest_id', $bsadd_contest_id)
                                ->where('team_name', $team_name)
                                ->get('bsadd_contest_teams')
                                ->row_array()) > 0;
    }

    public function get($id) {

        return $this->db->where('team_id', $id)->get('bsadd_contest_teams')->row_array();
    }

    public function get_team_members($team_id) {

        return $this->db->where('team_id', $team_id)
                        ->get('bsadd_contest_team_members')
                        ->result_array();
    }

    public function get_valid_registered_teams($field) {

        $last_date_time = $this->db->select('last_date_time')
                ->where('field', $field)
                ->get('bsadd_contests')
                ->row_array();

        $last_date_time = $last_date_time['last_date_time'];

        $sql = "SELECT * FROM bsadd_contest_teams 
                    INNER JOIN bsadd_contests 
                    ON
                    bsadd_contest_teams.contest_id = bsadd_contests.contest_id
                    WHERE bsadd_contests.field = ?
                    AND bsadd_contest_teams.registration_date_time <= bsadd_contests.last_date_time";
    }
    
    public function get_contest_id($contest){
        $id= $this->db->select('contest_id')->where('field',$contest)->get('bsadd_contests')->row_array();
        return $id['contest_id'];
    }

    public function get_contests() {
        $query = $this->db->get('bsadd_contests');
        return $query->result_array();
    }

    public function get_registered_teams($contest_id) {

        $this->db->where('contest_id', $contest_id);
        $query = $this->db->get('bsadd_contests');
        foreach ($query->result() as $row) {
            $field = $row->field;
            $deadline = $row->last_date_time;
        }
        $this->db->where('contest_id', $contest_id);
        $this->db->where('status', "registered");
        $this->db->where('registration_date_time <=', $deadline);
        $query = $this->db->get('bsadd_contest_teams');
        $result = $query->result_array();
        $result['field'] = $field;

        return $result;
    }

    public function get_team_info($team_id) {
        $this->db->where('team_id', $team_id);
        $query = $this->db->get('bsadd_contest_teams');
        return $query->row_array();
    }

    public function get_php_teams() {
        $php_id = $this->db->select('contest_id')->where('field', 'PHP')->get('bsadd_contests')->row_array();
        $php_id = $php_id['contest_id'];

        $this->db->where('contest_id', $php_id);
        $query = $this->db->get('bsadd_contests');
        foreach ($query->result() as $row) {
            $deadline = $row->last_date_time;
        }

        $this->db->where('contest_id', $php_id);
        $this->db->where('status', "registered");
        $this->db->where('registration_date_time <=', $deadline);
        $query = $this->db->get('bsadd_contest_teams');
        return $query->result_array();
    }

    public function get_android_teams() {
        $android_id = $this->db->select('contest_id')->where('field', 'Android')->get('bsadd_contests')->row_array();
        $android_id = $android_id['contest_id'];

        $this->db->where('contest_id', $android_id);
        $query = $this->db->get('bsadd_contests');
        foreach ($query->result() as $row) {
            $deadline = $row->last_date_time;
        }

        $this->db->where('contest_id', $android_id);
        $this->db->where('status', "registered");
        $this->db->where('registration_date_time <=', $deadline);
        $query = $this->db->get('bsadd_contest_teams');
        return $query->result_array();
    }

    public function get_windows_teams() {
        $windows_id = $this->db->select('contest_id')->where('field', 'Windows')->get('bsadd_contests')->row_array();
        $windows_id = $windows_id['contest_id'];

        $this->db->where('contest_id', $windows_id);
        $query = $this->db->get('bsadd_contests');
        foreach ($query->result() as $row) {
            $deadline = $row->last_date_time;
        }

        $this->db->where('contest_id', $windows_id);
        $this->db->where('status', "registered");
        $this->db->where('registration_date_time <=', $deadline);
        $query = $this->db->get('bsadd_contest_teams');
        return $query->result_array();
    }

    public function create_rank() {

        $windows_id = $this->db->select('contest_id')->where('field', 'Windows')->get('bsadd_contests')->row_array();
        $windows_id = $windows_id['contest_id'];

        $android_id = $this->db->select('contest_id')->where('field', 'Android')->get('bsadd_contests')->row_array();
        $android_id = $android_id['contest_id'];

        $php_id = $this->db->select('contest_id')->where('field', 'PHP')->get('bsadd_contests')->row_array();
        $php_id = $php_id['contest_id'];

        $php_winners = array(
            'contest_id' => $php_id,
            'first_team_name' => $this->input->post('php_team_name_1', true),
            'second_team_name' => $this->input->post('php_team_name_2', true),
            'third_team_name' => $this->input->post('php_team_name_3', true)
        );



        $android_winners = array(
            'contest_id' => $android_id,
            'first_team_name' => $this->input->post('android_team_name_1', true),
            'second_team_name' => $this->input->post('android_team_name_2', true),
            'third_team_name' => $this->input->post('android_team_name_3', true)
        );




        $windows_winners = array(
            'contest_id' => $windows_id,
            'first_team_name' => $this->input->post('windows_team_name_1', true),
            'second_team_name' => $this->input->post('windows_team_name_2', true),
            'third_team_name' => $this->input->post('windows_team_name_3', true)
        );


        $query = $this->db->get('bsadd_contest_winners');


        if ($query->num_rows >= 1) {
            $this->db->where('contest_id', $php_id);
            $work1 = $this->db->update('bsadd_contest_winners', $php_winners);
            $this->db->where('contest_id', $android_id);
            $work2 = $this->db->update('bsadd_contest_winners', $android_winners);
            $this->db->where('contest_id', $windows_id);
            $work3 = $this->db->update('bsadd_contest_winners', $windows_winners);
        } else {
            $work1 = $this->db->insert('bsadd_contest_winners', $php_winners);
            $work2 = $this->db->insert('bsadd_contest_winners', $android_winners);
            $work3 = $this->db->insert('bsadd_contest_winners', $windows_winners);
        }


        if (($work1 && $work2 && $work3)) {
            return true;
        }
    }

}