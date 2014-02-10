<br/>
<br/>
<br/>
<br/>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span3">
            <?php if (($this->session->userdata('flash_message_type'))): ?>
                <div class="alert alert-<?php echo $this->session->userdata('flash_message_type'); ?> larger">
                    <?php echo $this->session->userdata('flash_message'); ?>
                </div>
                <?php $this->session->unset_userdata('flash_message_type'); ?>
                <?php $this->session->unset_userdata('flash_message'); ?>

                <br/>
            <?php endif; ?>
        </div>
        <div class="span9">
            <?php echo form_open('admin/upload_photo', array('enctype' => 'multipart/form-data')); ?>
            <label for="title">Title</label>
            <input type="text" name="title"/>
            <label for="content">Caption</label>
            <textarea name="caption"></textarea>
            <label for="photo">PHOTO</label>
            <input type="file" name="photo" id="photo"/>
            <br/>
            <input type="submit" name="submit"  value="SUBMIT" class="btn btn-primary"/>
            <?php echo form_close(); ?>
        </div>
    </div>
</div>
<?php ?>