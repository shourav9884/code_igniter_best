<div class="container-fluid">
    <div class="row-fluid">
        <div class="span2"></div>
        <div class="span7">
            <table class="table table-striped">
                <tr>
                    <td>Team</td>
                    <td><?php echo $record['team_name']; ?></td>
                </tr>
            </table>
            <br/>
            <ul class="nav nav-tabs">
                <li><a href="#member1" data-toggle="tab">Member1</a></li>
                <li><a href="#member2" data-toggle="tab">Member2</a></li>
                <li><a href="#member3" data-toggle="tab">Member3</a></li>
                <li></li>
            </ul>
            <div class="tab-content">
                <?php for ($I = 0; $I < count($team_members); $I++) { ?>
                    <div id="member<?php echo ($I + 1); ?>" class="tab-pane">
                        <div class="container-fluid">
                            <div class="row-fluid">
                                <div class="span4"></div>
                                <div class="span6">
                                    <table class="table table-striped">
                                        <tr>
                                            <td>Student Id</td>
                                            <td><?php echo $team_members[$I]['student_id'];?></td>
                                        </tr>
                                        <tr>
                                            <td>Name</td>
                                            <td><?php echo $team_members[$I]['name'] ?></td>
                                        </tr>
                                        <tr>
                                            <td>Email</td>
                                            <td><?php echo $team_members[$I]['email']; ?></td>
                                        </tr>
                                        <tr>
                                            <td>Phone</td>
                                            <td><?php echo $team_members[$I]['phone']; ?></td>
                                        </tr>
                                        <tr>
                                            <td>Address</td>
                                            <td><?php echo $team_members[$I]['address']; ?></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>