<script type="text/javascript">   
    $(document).ready(function(){
        $.get("<?php echo base_url(); ?>index.php/home/announcement_board",function(data){
            $('#announcement').html(data);
        }); 
    });
</script>
<div id="announcement">

</div>