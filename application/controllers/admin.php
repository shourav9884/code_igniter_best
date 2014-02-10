<?php

class Admin extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('page_model');
    }


    public function manage_pages() {

        if (!$this->session->userdata('admin_email')) {

            redirect('authentication/login');
        }

        $this->load->model('page_model');

        $data['pages'] = $this->page_model->get_all_pages();

        $this->load->view('templates/header');
        $this->load->view('templates/admin_sidebar', $data);
        $this->load->view('admin/manage_pages');
        $this->load->view('templates/footer');
    }

    public function create_page() {
        if (!$this->session->userdata('admin_email')) {

            redirect('authentication/login');
        }

        $this->form_validation->set_rules('title', 'required');
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('templates/header');
            $this->load->view('templates/admin_sidebar');
            $this->load->view('admin/page_create');
            $this->load->view('templates/footer');
        } else {

            $data['title'] = $this->input->post('title');
            $data['content'] = $this->input->post('content');

            $data['content'] = base64_encode($data['content']);

            $this->load->model('page_model');
            if (!$this->page_model->create($data)) {
                $this->session->set_userdata('flash_message_type', 'error');
                $this->session->set_userdata('flash_message', 'Page could not be created at this moment . Please try again later');
            } else {
                $this->session->set_userdata('flash_message_type', 'success');
                $this->session->set_userdata('flash_message', 'Page Created Successfully');
            }

            $this->load->view('templates/header');
            $this->load->view('templates/admin_sidebar');
            $this->load->view('admin/page_create');
            $this->load->view('templates/footer');
        }
    }

    public function update_page() {

        if (!$this->session->userdata('admin_email')) {

            redirect('authentication/login');
        }

        $page = $this->input->get('page', true);

        $this->form_validation->set_rules('title', 'Title', 'required');
        $this->form_validation->set_rules('content', 'Content', 'required');

        if ($this->form_validation->run() == FALSE) {

            if (is_numeric($page)) {

                $data = $this->page_model->get_page($page);
                $data['content'] = base64_decode($data['content']);

                $this->load->view('templates/header');
                $this->load->view('templates/admin_sidebar');
                $this->load->view('admin/page_update', $data);
                $this->load->view('templates/footer');
            } else {
                $data = $this->page_model->get_titled_page($page);
                $data['content'] = base64_decode($data['content']);

                $this->load->view('templates/header');
                $this->load->view('templates/admin_sidebar');
                $this->load->view('admin/page_update', $data);
                $this->load->view('templates/footer');
            }
        } else {
            $data['page_id'] = $this->input->post('page_id');
            $data['title'] = $this->input->post('title');
            $data['content'] = $this->input->post('content');

            $data['content'] = base64_encode($data['content']);

            $this->load->model('page_model');
            if (!$this->page_model->update($data)) {
                $this->session->set_userdata('flash_message_type', 'error');
                $this->session->set_userdata('flash_message', 'Page could not be Updated at this moment . Please try again later');


                $data = $this->page_model->get_titled_page($data['title']);
                $data['content'] = base64_decode($data['content']);

                $this->load->view('templates/header');
                $this->load->view('templates/admin_sidebar');
                $this->load->view('admin/page_update', $data);
                $this->load->view('templates/footer');
            } else {
                $this->session->set_userdata('flash_message_type', 'success');
                $this->session->set_userdata('flash_message', 'Page Updated Successfully');

                $data = $this->page_model->get_titled_page($data['title']);
                $data['content'] = base64_decode($data['content']);

                $this->load->view('templates/header');
                $this->load->view('templates/admin_sidebar');
                $this->load->view('admin/page_update', $data);
                $this->load->view('templates/footer');
            }
        }
    }

    public function html_editor() {

        $this->load->view('pagecreator/demo');
    }

    public function save_page() {

        // $data['title'] = $this->input->post('title', true);
        $data['content'] = base64_encode($this->input->post('content'));

        $this->page_model->save_page($data);
        $this->html_editor();
    }

    public function manage_photo() {

        if (!$this->session->userdata('admin_email')) {

            redirect('authentication/login');
        }

        $this->load->model('admin_model');
        $data['images'] = $this->admin_model->get_images();

        $this->load->view('templates/header');
        $this->load->view('templates/admin_sidebar');
        $this->load->view('admin/manage_images', $data);
        $this->load->view('templates/footer');
    }

    public function delete_photo($photo_id) {

        $this->load->model('admin_model');
        $this->admin_model->delete_image($photo_id);

        redirect('admin/manage_photo');
    }

    public function upload_photo() {

        if (!$this->session->userdata('admin_email')) {

            redirect('authentication/login');
        }

        $this->form_validation->set_rules('title', '', 'required');

        if ($this->form_validation->run() == FALSE) {

            $this->load->view('templates/header');
            $this->load->view('templates/admin_sidebar');
            $this->load->view('admin/upload_photo');
            $this->load->view('templates/footer');
        } else {

            $data['title'] = $this->input->post('title', true);
            $data['caption'] = $this->input->post('caption', true);

            $config['upload_path'] = './assets/gallery/';
            $config['allowed_types'] = 'gif|jpg|png';
            $config['max_size'] = '10000';
            $config['max_width'] = '1024';
            $config['max_height'] = '768';

            $this->load->library('upload', $config);

            if (!$this->upload->do_upload('photo')) {

                $this->session->set_userdata('flash_message_type', 'error');
                $this->session->set_userdata('flash_message', 'File Could Not Be Copied');
                $error = array('error' => $this->upload->display_errors());
                var_dump($error);
            } else {
                $upload_data = $this->upload->data();

                $this->session->set_userdata('flash_message_type', 'success');
                $this->session->set_userdata('flash_message', 'File Copied');

                $url = 'assets/gallery/' . $upload_data['file_name'];

                $data['file_path'] = $url;

                $this->load->model('admin_model');
                $this->admin_model->insert_image($data);

                $this->load->view('templates/header');
                $this->load->view('templates/admin_sidebar');
                $this->load->view('admin/upload_photo');
                $this->load->view('templates/footer');
            }
        }
    }

}