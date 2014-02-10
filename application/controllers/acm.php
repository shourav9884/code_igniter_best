<?php

class Acm extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('acm_model');
    }

    public function registration() {
        $this->form_validation->set_rules('team_name', 'Team Name', 'required');

        if ($this->form_validation->run() == FALSE) {

            $this->load->view('templates/header');
            $this->load->view('templates/menubar');
            $this->load->view('acm/registration');
            $this->load->view('templates/footer');
        } else {

            $data['team_name'] = $this->input->post('team_name', true);
            $data['team_members'] = array(
                array(
                    'batch' => $this->input->post('member_1_batch', true),
                    'student_id' => $this->input->post('member_1_student_id', true),
                    'name' => $this->input->post('member_1_name', true),
                    'email' => $this->input->post('member_1_email', true),
                    'phone' => $this->input->post('member_1_phone', true),
                    'address' => $this->input->post('member_1_address', true),
                ),
                array(
                    'batch' => $this->input->post('member_2_batch', true),
                    'student_id' => $this->input->post('member_2_student_id', true),
                    'name' => $this->input->post('member_2_name', true),
                    'email' => $this->input->post('member_2_email', true),
                    'phone' => $this->input->post('member_2_phone', true),
                    'address' => $this->input->post('member_2_address', true),
                ),
                array(
                    'batch' => $this->input->post('member_3_batch', true),
                    'student_id' => $this->input->post('member_3_student_id', true),
                    'name' => $this->input->post('member_3_name', true),
                    'email' => $this->input->post('member_3_email', true),
                    'phone' => $this->input->post('member_3_phone', true),
                    'address' => $this->input->post('member_3_address', true),
                ),
            );

            if ($this->acm_model->is_registered($data['team_name'])) {

                $this->session->set_userdata('flash_message_type', 'error');
                $this->session->set_userdata('flash_message', "Team Name Already registered");

                $this->load->view('templates/header');
                $this->load->view('templates/menubar');
                $this->load->view('acm/registration');
                $this->load->view('templates/footer');
            } else {
                if ($this->acm_model->create_team($data)) {
                    $team_info = $this->acm_model->get_team_info($data['team_name']);
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

    public function team_info($team_id) {
        $data = array();
        $data['record'] = $this->acm_model->get_team_info($team_id);
        $data['team_members'] = $this->acm_model->get_team_members($team_id);

        $this->load->view('acm/team_info', $data);
    }

    public function contest_registered_teams() {

        $data = array();
        $data['record'] = $this->acm_model->get_registered_teams();

        $data['field'] = 'Intra-BUET Programming Contest';

        $this->load->view('templates/header');
        $this->load->view('templates/menubar');
        $this->load->view('acm/registeredteams', $data);
        $this->load->view('templates/footer');
    }
    
    public function ranklist(){
        
        $this->load->view('templates/header');
        $this->load->view('');
    }

}