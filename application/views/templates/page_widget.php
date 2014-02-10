<script type="text/javascript">   
    
    $(document).ready(function(){
        
        $('#<?php echo $tag ?>').click(function(){
            ;
            $.get("<?php echo base_url(); ?>index.php/page/index?page=<?php echo $page; ?>",function(data){
                $('#<?php echo $page ?>').html(data);
            });    
        });
    });
</script>

<div id="<?php echo $page; ?>">
    <h3>Loading ....</h3>
</div> 
