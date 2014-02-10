<?php

class Bsadd extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('bsadd_model');
    }

    public function registration() {

        $this->form_validation->set_rules('team_name', 'Team Name', 'required');
        $this->form_validation->set_rules('field', 'Field', 'required');

        if ($this->form_validation->run() == FALSE) {

            $this->load->view('templates/header');
            $this->load->view('templates/menubar');
            $this->load->view('bsadd/registration');
            $this->load->view('templates/footer');
        } else {

            $data['field'] = $this->input->post('field', true);
            $data['institution'] = $this->input->post('institution', true);
            $data['department'] = $this->input->post('department', true);
            $data['session'] = $this->input->post('session', true);
            $data['team_name'] = $this->input->post('team_name', true);

            $data['team_members'] = array(
                array(
                    'student_id' => $this->input->post('member_1_student_id', true),
                    'name' => $this->input->post('member_1_name', true),
                    'email' => $this->input->post('member_1_email', true),
                    'phone' => $this->input->post('member_1_phone', true),
                    'address' => $this->input->post('member_1_address', true),
                ),
                array(
                    'student_id' => $this->input->post('member_2_student_id', true),
                    'name' => $this->input->post('member_2_name', true),
                    'email' => $this->input->post('member_2_email', true),
                    'phone' => $this->input->post('member_2_phone', true),
                    'address' => $this->input->post('member_2_address', true),
                ),
                array(
                    'student_id' => $this->input->post('member_3_student_id', true),
                    'name' => $this->input->post('member_3_name', true),
                    'email' => $this->input->post('member_3_email', true),
                    'phone' => $this->input->post('member_3_phone', true),
                    'address' => $this->input->post('member_3_address', true),
                ),
            );

            if ($this->bsadd_model->is_registered($data['field'], $data['team_name'])) {
                $this->session->set_userdata('flash_message_type', 'error');
                $this->session->set_userdata('flash_message', 'Team  Name Already Registered');

                $this->load->view('templates/header');
                $this->load->view('templates/menubar');
                $this->load->view('bsadd/registration');
                $this->load->view('templates/footer');
                //echo "Already registered or Name exists . Please choose another team name";
            } else {
                if ($this->bsadd_model->create_team($data)) {

                    $team_info = $this->bsadd_model->get_team_info($data['field'], $data['team_name']);
                    $subject = "Registration Information";
                    $message = "you have been registered seccessfully under Team Id: " .
                            $team_info['team_id'] .
                            "<br/>" .
                            "Team Name: " . $team_info['team_name'] .
                            "<br/>" .
                            "At Time : " . $team_info['registration_date_time'] .
                            "Instructions: ........"
                    ;
                    $headers = "From: " . "mc65799@gmail.com";

                    for ($I = 0; $I < count($data['team_members']); $I++) {
                        $to = $data['team_members'][$I]['email'];
                        mail($to, $subject, $message, $headers);
                    }

                    /*
                     * 1. Send mails to all the Team Members Notifying them of the team_id and registration information and screening test
                     *    if possible integrate mailchimp and send mass message  
                     *    formation and schedule of the corresponding event
                     * 
                     * 2. integrate the payment gateway if possible
                     */
                    echo "Successful";
                } else {
                    echo "Failure";
                }
            }
        }
    }

    public function contests() {
        $data = array();
        $data['record'] = $this->bsadd_model->get_contests();

        $this->load->view('templates/header');
        $this->load->view('templates/admin_sidebar');
        $this->load->view('bsadd/contests', $data);
        $this->load->view('templates/footer');
    }

    public function contest_registered_teams($contest) {

        $contest_id = $this->bsadd_model->get_contest_id($contest);
        
        $data = array();
        $data['record'] = $this->bsadd_model->get_registered_teams($contest_id);

        $this->load->view('templates/header');
        $this->load->view('templates/menubar');
        $this->load->view('bsadd/registeredteams', $data);
        $this->load->view('templates/footer');
    }

    public function registered_teams($contest_id) {

        $data = array();
        $data['record'] = $this->bsadd_model->get_registered_teams($contest_id);

        $this->load->view('templates/header');
        $this->load->view('templates/admin_sidebar');
        $this->load->view('bsadd/registeredteams', $data);
        $this->load->view('templates/footer');
    }

    public function team_info($team_id) {
        $data = array();
        $data['record'] = $this->bsadd_model->get_team_info($team_id);
        $data['team_members'] = $this->bsadd_model->get_team_members($team_id);

        $this->load->view('bsadd/team_info', $data);
    }

    public function rank_creation_form() {
        $data = array();

        $data['php_teams'] = $this->bsadd_model->get_php_teams();

        $data['android_teams'] = $this->bsadd_model->get_android_teams();

        $data['windows_teams'] = $this->bsadd_model->get_windows_teams();

        $this->load->view('templates/header');
        $this->load->view('templates/admin_sidebar');
        $this->load->view('bsadd/rank_form', $data);
        $this->load->view('templates/footer');
    }

    public function create_rank_list() {

        if ($this->bsadd_model->create_rank()) {

            echo'rank list created';
        }
        else
            echo'unsuccessful';
    }

}

