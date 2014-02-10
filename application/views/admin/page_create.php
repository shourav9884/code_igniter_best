<br/>
<br/>
<br/>
<div class="container">
    <div class="row">
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
            <?php echo form_open('admin/create_page'); ?>
            <br/>
            <label for="title">Title</label>
            <input type="text" name="title"/>
            <label for="content">Content</label>
            <textarea name="content">
               Enter Text and Images
            </textarea>
            <input type="submit" value="SUBMIT" class="btn btn-large btn-primary"/>
            <?php echo form_close(); ?>
        </div>
    </div>
</div>

<script  type="text/javascript" src="<?php echo base_url(); ?>assets/js/tinymce/jscripts/tiny_mce/tiny_mce.js"></script>

<script  type="text/javascript">
    tinyMCE.init({
        // General options
        mode : "textareas",
        theme : "advanced",
        plugins : "ibrowser,autolink,lists,pagebreak,ibrowser,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,wordcount,advlist,autosave,visualblocks",
                
        // Theme options
        theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,styleselect,formatselect,fontselect,fontsizeselect",
        theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,ibrowser,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
        theme_advanced_buttons3 : "iBrowser,tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
        theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak,restoredraft,visualblocks",
        theme_advanced_toolbar_location : "top",
        theme_advanced_toolbar_align : "left",
        theme_advanced_statusbar_location : "bottom",
        theme_advanced_resizing : true,

        // Example content CSS (should be your site CSS)
        content_css : "<?php echo base_url(); ?>assets/css/bootstrap-cosmo.min.css",

        // Drop lists for link/image/media/template dialogs
        template_external_list_url : "lists/template_list.js",
        external_link_list_url : "lists/link_list.js",
        external_image_list_url : "lists/image_list.js",
        media_external_list_url : "lists/media_list.js",

        // Style formats
        style_formats : [
            {title : 'Bold text', inline : 'b'},
            {title : 'Red text', inline : 'span', styles : {color : '#ff0000'}},
            {title : 'Red header', block : 'h1', styles : {color : '#ff0000'}},
            {title : 'Example 1', inline : 'span', classes : 'example1'},
            {title : 'Example 2', inline : 'span', classes : 'example2'},
            {title : 'Table styles'},
            {title : 'Table row 1', selector : 'tr', classes : 'tablerow1'}
        ],

        // Replace values for the template plugin
        template_replace_values : {
            username : "Some User",
            staffid : "991234"
        }
    });
</script>
