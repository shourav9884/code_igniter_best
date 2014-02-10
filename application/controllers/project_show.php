<?php

class Project_show extends CI_Controller {

    public function __construct() {
        parent::__construct();
        
        $this->load->model('project_show_model');
    }

    public function registration() {

        $this->form_validation->set_rules('project_name', 'required');

        if ($this->form_validation->run() == FALSE) {

            $this->load->view('templates/header');
            $this->load->view('templates/menubar');
            $this->load->view('project/registration');
            $this->load->view('templates/footer');
        } else {
            
            $data['field'] = $this->input->post('field', true);
            $data['project_name'] = $this->input->post('project_name', true);
            $data['project_type'] = $this->input->post('project_type', true);

            $data['team_members'] = array(
                array(
                    'student_id' => $this->input->post('member_1_student_id', true),
                    'institution' => $this->input->post('member_1_institution', true),
                    'department' => $this->input->post('member_1_department', true),
                    'session' => $this->input->post('member_1_session'),
                    'name' => $this->input->post('member_1_name', true),
                    'email' => $this->input->post('member_1_email', true),
                    'phone' => $this->input->post('member_1_phone', true),
                    'address' => $this->input->post('member_1_address', true),
                ),
                array(
                    'student_id' => $this->input->post('member_2_student_id', true),
                    'institution' => $this->input->post('member_2_institution', true),
                    'department' => $this->input->post('member_2_department', true),
                    'session' => $this->input->post('member_2_session'),
                    'name' => $this->input->post('member_2_name', true),
                    'email' => $this->input->post('member_2_email', true),
                    'phone' => $this->input->post('member_2_phone', true),
                    'address' => $this->input->post('member_2_address', true),
                ),
                array(
                    'student_id' => $this->input->post('member_3_student_id', true),
                    'institution' => $this->input->post('member_3_institution', true),
                    'department' => $this->input->post('member_3_department', true),
                    'session' => $this->input->post('member_3_session'),
                    'name' => $this->input->post('member_3_name', true),
                    'email' => $this->input->post('member_3_email', true),
                    'phone' => $this->input->post('member_3_phone', true),
                    'address' => $this->input->post('member_3_address', true),
                ),
            );

            if ($this->project_show_model->is_registered($data['project_name'])) {
                $this->session->set_userdata('flash_message_type', 'error');
                $this->session->set_userdata('flash_message', 'Project Already Registered');

                $this->load->view('templates/header');
                $this->load->view('templates/menubar');
                $this->load->view('project/registration');
                $this->load->view('templates/footer');
                //echo "Already registered or Name exists . Please choose another team name";
            } else {
                if ($this->project_show_model->create_team($data)) {

                    
                    $team_info = $this->project_show_model->get_project_info($data['project_name']);
                    $subject = "Registration Information";
                    $message = "you have been registered seccessfully under Project Id: " .
                            $team_info['project_id'] .
                            "<br/>" .
                            "Project Name: " . $team_info['project_name'] .
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

}
