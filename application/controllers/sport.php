<?php

class Sport extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function registration() {

        $this->form_validation->set_rules('team_name', 'Team Name', 'required');

        if ($this->form_validation->run() == FALSE) {

            $this->load->view('templates/header');
            $this->load->view('sport/registration');
            $this->load->view('templates/footer');
        } else {
            
            $data['sport_name'] = $this->input->post('sport_name',true);
            $data['info'] = array(
                'student_id'
            );
        }
    }

}