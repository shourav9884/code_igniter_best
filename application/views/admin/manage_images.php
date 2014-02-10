<br/>
<br/>
<br/>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span3"></div>
        <div class="span9">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <td>Image Id</td>
                        <td>Image Title</td>
                        <td>Image Caption</td>
                        <td>Image</td>
                        <td></td>
                        <td></td>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($images as $image): ?>
                        <tr>
                            <td>
                                <?php echo $image['photo_id']; ?>
                            </td>
                            <td>
                                <?php echo $image['title']; ?>
                            </td>
                            <td>
                                <?php echo $image['caption']; ?>                          
                            </td>
                            <td>
                                <img class="preview-image" src="<?php echo base_url().$image['file_path']; ?>"/>                              
                            </td>
                            <td>
                               <!-- <a href="<?php echo base_url(); ?>index.php/admin/update_photo/<?php echo $image['photo_id']; ?>" class="btn btn-primary" href="#">Update</a>-->
                            </td>
                            <td>
                                <a href="<?php echo base_url(); ?>index.php/admin/delete_photo/<?php echo $image['photo_id']; ?>" class="btn btn-danger">Delete</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>