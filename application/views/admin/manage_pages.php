<br/>
<br/>
<br/>
<br/>
<div class="container-fluid">
    <div class="span3"></div>
    <div class="span7">
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <td>
                        page_id
                    </td>
                    <td>
                        Page Title
                    </td>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($pages as $page): ?>                       
                    <tr>
                        <td>
                            <?php echo $page['page_id']; ?>
                        </td>
                        <td>
                            <a target="blank" href="<?php echo base_url(); ?>index.php/page/view?page=<?php echo $page['page_id']; ?>">
                                <?php echo $page['title']; ?>
                        </td>  
                        <td>
                            <a class="btn btn-primary " href="<?php echo base_url(); ?>index.php/admin/update_page?page=<?php echo $page['page_id']; ?>">Update</a>
                            <!-- <a class="btn btn-danger  btn-large" href="<?php echo base_url(); ?>index.php/admin/delete_page/<?php echo $page['page_id']; ?>">Update</a> -->
                        </td>
                    </tr>
                <?php endforeach; ?>  
            </tbody>          
        </table>
    </div>
</div>