<br/>
<br/>
<br/>
<div class="contaner-fluid">
    <div class="row-fluid">
        <div class="span2">
            <div class="row-fluid">
                <div class="span12">
                    <?php $this->load->view('templates/notice_board_widget'); ?>
                </div>
                <div class="span12"></div>
                <div class="span12">
                    <?php $this->load->view('templates/announcement_board_widget'); ?>
                </div>
            </div>
        </div>
        <div class="span9">
            <?php echo $content; ?>
        </div>
    </div>
</div>