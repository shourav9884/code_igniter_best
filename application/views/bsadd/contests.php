<br/>
<br/>
<br/>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span4"></div>
        <div class="span6">
            <table class="table table-striped">
                <thead>Contest List</thead>
                <tbody>
                    <?php foreach ($record as $row): ?>
                        <!-- <a></a> -->
                        <tr>
                            <td><?php echo $row['field']; ?></td>
                            <td><?php echo $row['last_date_time']; ?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>