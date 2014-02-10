<br/>
<br/>
<br/>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span4"></div>
        <div class="span6">
            <strong><h2><?php echo $field; ?></h2></strong>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Team Id </th>
                        <th>Team Name</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($record as $row): ?>
                        <tr>
                            <td><?php echo $row['team_id']; ?></td>
                            <td ajax="true" team_id="<?php echo $row['team_id']; ?>"><a href="#team_info" data-toggle="modal"><?php echo $row['team_name']; ?></a></td>    
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <script type="text/javascript">
                $(function(){             
                    $('td[ajax="true"]').click(function(){           
                        var team_id = $(this).attr('team_id');
                        $.get("<?php echo base_url(); ?>index.php/acm/team_info/"+team_id,function(data){
                            $('.modal-body').html(data) ;
                        })
                    });
                });
            </script>
        </div>
        <div id="team_info" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 id="myModalLabel">Team Information</h3>
            </div>
            <div class="modal-body">
                <p>Loading…</p>
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        </div>
    </div>
</div>