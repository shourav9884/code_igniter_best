<script type="text/javascript">
    $('document').ready(function(){
        
        $.get('<?php echo base_url(); ?>index.php/home/index_gallery',function(data){
            $('#gallery_slide_show_area').html(data);
        });
     
    });
</script>
<div id="gallery_slide_show_area">
    Loading....
</div>