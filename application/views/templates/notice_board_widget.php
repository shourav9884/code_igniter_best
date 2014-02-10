<script type="text/javascript">   
    $(document).ready(function(){
        $.get("<?php echo base_url(); ?>index.php/home/notice_board",function(data){
            $('#notice').html(data);
        }); 
    });
</script>
<div id="notice">

</div>