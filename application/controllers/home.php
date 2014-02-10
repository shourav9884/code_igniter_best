<?php

class Home extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function index() {
        $this->load->view('templates/header');
        $this->load->view('templates/schedule_forkit');
        $this->load->view('home');
        $this->load->view('templates/footer');
    }

    public function index_gallery() {

        $this->load->model('admin_model');
        $data['images'] = $this->admin_model->get_images();
        $this->load->view('templates/index_gallery', $data);
    }

    public function gallery() {

        $this->load->model('admin_model');
        $data['images'] = $this->admin_model->get_images();
        
        $this->load->view('templates/header');
        $this->load->view('templates/menubar');
        $this->load->view('gallery',$data);
        $this->load->view('templates/footer');
    }

    public function announcement_board() {

        $this->load->model('page_model');
        $data = $this->page_model->get_titled_page('announcement_board');
        $data['content'] = base64_decode($data['content']);
        $this->load->view('templates/announcement_board', $data);
    }

    public function notice_board() {

        $this->load->model('page_model');
        $data = $this->page_model->get_titled_page('notice_board');
        $data['content'] = base64_decode($data['content']);
        $this->load->view('templates/notice_board', $data);
    }

}