<?php

class Project_show_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function create_team($data) {

        $status = $this->db->insert('projects', array(
            'project_id' => NULL,
            'project_name' => $data['project_name'],
            'project_type'=>$data['project_type'],
            'registration_date_time' => date('Y-m-d h:M:s'),
            'status' => 'registered',
            'payment_status' => 0
                ));

        if ($status) {
            $project_id = $this->db->insert_id('projects');

            for ($I = 0; $I < count($data['team_members']); $I++) {

                $data['team_members'][$I]['project_id'] = $project_id;
                $data['team_members'][$I]['member_id'] = NULL;
                $this->db->insert('project_members', $data['team_members'][$I]);
            }
        }

        return $status;
    }

    public function is_registered($project_name) {

        return count($this->db->where('project_name', $project_name)
                                ->get('projects')
                                ->row_array()) > 0;
    }

    public function get($project_id) {

        return $this->db->where('project_id', $project_id)->get('project_members')->row_array();
    }

    public function get_team_members($project_id) {

        return $this->db->where('project_id', $project_id)
                        ->get('project_members')
                        ->result_array();
    }

    public function get_valid_registered_teams() {

        $last_date_time = $this->db->select('last_date_time')
                ->where('field', 'project_show')
                ->get('bsadd_contests')
                ->row_array();

        $last_date_time = $last_date_time['last_date_time'];

        $sql = "SELECT * FROM projects
                    AND projects.registration_date_time <= ?";

        return $this->db->query($sql, array($last_date_time))->row_array();
    }

    public function get_project_by_name($project_name) {
        $this->db->where('project_name', $project_name);
        $query = $this->db->get('projects');
        return $query->row_array();
    }

    public function get_project_info($project_id) {
        $this->db->where('project_id', $project_id);
        $query = $this->db->get('projects');
        return $query->row_array();
    }

    public function create_rank() {

        $project_show_id = $this->db->select('contest_id')->where('field', 'project_show')->get('bsadd_contests')->row_array();
        $project_show_id = $php_id['contest_id'];

        $project_winners = array(
            'contest_id' => $php_id,
            'first_project_name' => $this->input->post('php_team_name_1', true),
            'second_project_name' => $this->input->post('php_team_name_2', true),
            'third_project_name' => $this->input->post('php_team_name_3', true)
        );

        $query = $this->db->get('bsadd_contest_winners');


        if ($query->num_rows >= 1) {
            $this->db->where('contest_id', $project_show_id);
            $work1 = $this->db->update('bsadd_contest_winners', $project_winners);
        } else {
            $work1 = $this->db->insert('bsadd_contest_winners', $php_winners);
        }


        if (($work1)) {
            return true;
        }
    }

}