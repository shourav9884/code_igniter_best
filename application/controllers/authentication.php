<?php

class Authentication extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('authentication_model');
    }

    public function login() {

        $this->form_validation->set_rules('email', '', 'trim|required|valid_email');
        $this->form_validation->set_rules('password', '', 'trim|required');
        if ($this->form_validation->run() == FALSE) {

            $this->load->view('admin/login_form');
        } else {
            $query = $this->authentication_model->validate_admin();
            if ($query) {

                $this->session->set_userdata('admin_email', $this->input->post('email', true));

                redirect('admin/manage_pages');
            } else {
                $this->load->view('admin/login_form');
            }
        }
    }

    function logout() {

        $this->session->sess_destroy();
        
        redirect('authentication/login');
    }

}

?>