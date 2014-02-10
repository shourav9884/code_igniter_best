<br/>
<br/>
<br/>
<div class="row-fluid">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/bootstrap-image-gallery.min.css"/>
    <div class="span2">
        <div class="row-fluid">
            <div class="span12">
                <?php $this->load->view('templates/notice_board_widget');?>
            </div>
            <div class="span12"></div>
            <div class="span12">
                <?php $this->load->view('templates/announcement_board_widget');?>
            </div>
        </div>
    </div>
    <div class="span9">
        <div id="gallery" data-toggle="modal-gallery" data-target="#modal-gallery">
            <?php for ($I = 0; $I < count($images); $I++) { ?>
                <a data-gallery="gallery" href="<?php echo base_url().$images[$I]['file_path']; ?>" title="<?php echo $images[$I]['title'] ?>">
                    <img src="<?php echo base_url().$images[$I]['file_path']; ?>" class="image-tile"/>
                </a>
            <?php } ?>
        </div>
    </div>
    <div id="modal-gallery" class="modal modal-gallery hide fade" tabindex="-1">
        <div class="modal-header">
            <a class="close" data-dismiss="modal">&times;</a>
            <h3 class="modal-title">Glimpse of CSE FEST-2013</h3>
        </div>
        <div class="modal-body"><div class="modal-image"></div></div>
        <div class="modal-footer">
            <a class="btn modal-download" target="_blank">
                <i class="icon-download"></i>
                <span>Download</span>
            </a>
            <a class="btn btn-success modal-play modal-slideshow" data-slideshow="5000">
                <i class="icon-play icon-white"></i>
                <span>Slideshow</span>
            </a>
            <a class="btn btn-info modal-prev">
                <i class="icon-arrow-left icon-white"></i>
                <span>Previous</span>
            </a>
            <a class="btn btn-primary modal-next">
                <span>Next</span>
                <i class="icon-arrow-right icon-white"></i>
            </a>
        </div>
    </div>

    <script src="<?php echo base_url();?>assets/js/load-image.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/bootstrap-image-gallery.min.js"></script>
</div>
