<?php

class Page extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('page_model');
    }

    public function index() {
        $page = $this->input->get('page', true);

        if (is_numeric($page)) {

            $data = $this->page_model->get_page($page);
            $data['content'] = base64_decode($data['content']);
            $this->load->view('index_page', $data);
        } else {

            $data = $this->page_model->get_titled_page($page);

            $data['content'] = base64_decode($data['content']);

            $this->load->view('index_page', $data);
        }
    }

    public function view() {

        $page = $this->input->get('page', true);

        if (is_numeric($page)) {

            $data = $this->page_model->get_page($page);
            $data['content'] = base64_decode($data['content']);
            $this->load->view('templates/header');
            $this->load->view('templates/menubar');
            $this->load->view('page', $data);
            $this->load->view('templates/footer');
        } else {

            $data = $this->page_model->get_titled_page($page);

            $data['content'] = base64_decode($data['content']);

            $this->load->view('templates/header');
            $this->load->view('templates/menubar');
            $this->load->view('page', $data);
            $this->load->view('templates/footer');
        }
    }

}