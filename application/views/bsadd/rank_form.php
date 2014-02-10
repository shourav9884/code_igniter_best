<br/>
<br/>
<br/>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span4"></div>
        <div class="span7">

            <?php echo form_open('bsadd/create_rank_list'); ?>

            <strong><h2>Result Publish</h2></strong>
            <ul class="nav nav-tabs">
                <li class="active"><a href="#php" data-toggle="tab">PHP</a></li>
                <li class=""><a href="#android" data-toggle="tab">Android</a></li>
                <li class=""><a href="#windows" data-toggle="tab">Windows</a></li>
            </ul>
            <div class="tab-content">
                <div id="php" class="tab-pane active">
                    <table  class="table table-striped">
                        <thead>
                            <tr>
                                <td>Track</td>
                                <td>Rank</td>
                                <td>Team Name</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td></td>
                                <td> 1 </td>
                                <td> 
                                    <select name="php_team_name_1">
                                        <?php
                                        if (isset($php_teams)) {
                                            foreach ($php_teams as $row) {
                                                ?>
                                                <option value= "<?php echo $row['team_name'] ?>" > <?php echo $row['team_name']; ?></option>
                                                <?php
                                            }
                                        }
                                        ?>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td> 2</td>
                                <td> 
                                    <select name="php_team_name_2">
                                        <?php
                                        if (isset($php_teams)) {
                                            foreach ($php_teams as $row) {
                                                ?>
                                                <option value= "<?php echo $row['team_name'] ?>" > <?php echo $row['team_name']; ?></option>
                                                <?php
                                            }
                                        }
                                        ?>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td> 3 </td>
                                <td> 
                                    <select name="php_team_name_3">
                                        <?php
                                        if (isset($php_teams)) {
                                            foreach ($php_teams as $row) {
                                                ?>
                                                <option value= "<?php echo $row['team_name'] ?>" > <?php echo $row['team_name']; ?></option>
                                                <?php
                                            }
                                        }
                                        ?>
                                    </select>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div id="android" class="tab-pane">
                    <table  class="table table-striped">
                        <thead>
                            <tr>
                                <td>Track</td>
                                <td>Rank</td>
                                <td>Team Name</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td></td>
                                <td> 1 </td>
                                <td> 
                                    <select name="android_team_name_1">
                                        <?php
                                        if (isset($android_teams)) {
                                            foreach ($android_teams as $row) {
                                                ?>
                                                <option value= "<?php echo $row['team_name'] ?>" > <?php echo $row['team_name']; ?></option>
                                                <?php
                                            }
                                        }
                                        ?>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td> 2 </td>
                                <td> 
                                    <select name="android_team_name_2">
                                        <?php
                                        if (isset($android_teams)) {
                                            foreach ($android_teams as $row) {
                                                ?>
                                                <option value= "<?php echo $row['team_name'] ?>" > <?php echo $row['team_name']; ?></option>
                                                <?php
                                            }
                                        }
                                        ?>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td> 3</td>
                                <td> 
                                    <select name="android_team_name_3">
                                        <?php
                                        if (isset($android_teams)) {
                                            foreach ($android_teams as $row) {
                                                ?>
                                                <option value= "<?php echo $row['team_name'] ?>" > <?php echo $row['team_name']; ?></option>
                                                <?php
                                            }
                                        }
                                        ?>
                                    </select>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div id="windows" class="tab-pane">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <td>Track</td>
                                <td>Rank</td>
                                <td>Team Name</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td></td>
                                <td> 1 </td>
                                <td> 
                                    <select name="windows_team_name_1">
                                        <?php
                                        if (isset($windows_teams)) {
                                            foreach ($windows_teams as $row) {
                                                ?>
                                                <option value= "<?php echo $row['team_name'] ?>" > <?php echo $row['team_name']; ?></option>
                                                <?php
                                            }
                                        }
                                        ?>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td> 2 </td>
                                <td> 
                                    <select name="windows_team_name_2">
                                        <?php
                                        if (isset($windows_teams)) {
                                            foreach ($windows_teams as $row) {
                                                ?>
                                                <option value= "<?php echo $row['team_name'] ?>" > <?php echo $row['team_name']; ?></option>
                                                <?php
                                            }
                                        }
                                        ?>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td> 3 </td>
                                <td> 
                                    <select name="windows_team_name_3">
                                        <?php
                                        if (isset($windows_teams)) {
                                            foreach ($windows_teams as $row) {
                                                ?>
                                                <option value= "<?php echo $row['team_name'] ?>" > <?php echo $row['team_name']; ?></option>
                                                <?php
                                            }
                                        }
                                        ?>
                                    </select>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <input  type="submit" class="btn btn-large btn-primary" value="Create"/>
            <?php echo form_close(); ?>
        </div>
    </div>
</div>