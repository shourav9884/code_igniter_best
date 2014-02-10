<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <a class="brand" href="<?php echo base_url(); ?>index.php">CSE Festival-2013</a>
        <ul class="nav">
            <li><a href="<?php echo base_url(); ?>index.php">Home</a></li>
            <li class="dropdown">
                <a id="dropdown_competitions" class="dropdown-toggle" data-toggle="dropdown" roll="button" href="#">Competitions <b class="caret"></b></a>
                <ul class="dropdown-menu" area-labelledby="dropdown_competitions" role="menu">
                    <li class="dropdown-submenu">
                        <a href="#" role="button">Inter-University Competitions</a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-submenu">
                                <a href="<?php echo base_url(); ?>index.php/page/view?page=system_prototyping_contest" role="button">System Prototyping</a>
                                <ul class="dropdown-menu">
                                    <li role="presentation"><a href="<?php echo base_url(); ?>index.php/page/view?page=system_prototyping_contest_rules" role="menuitem">Rules and Regulation</a></li>
                                    <li role="presentation"><a href="<?php echo base_url(); ?>index.php/page/view?page=system_prototyping_contest_schedule" role="menuitem">Schedule</a></li>
                                    <li role="presentation"><a href="#" role="menuitem">Register</a></li>
                                    <li class="dropdown-submenu" role="presentation">
                                        <a href="#" role="menuitem">PHP</a>
                                        <ul class="dropdown-menu">
                                            <li role="presentation"><a href="#">Registered Teams</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu" role="presentation">
                                        <a href="#" role="menuitem">Android</a>
                                        <ul class="dropdown-menu">
                                            <li role="presentation"><a href="#">Registered Teams</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu" role="presentation">
                                        <a href="#" role="menuitem">Windows Phone & Windows 8</a>
                                        <ul class="dropdown-menu">
                                            <li role="presentation"><a href="#">Registered Teams</a></li>
                                        </ul>
                                    </li>
                                    <li role="presentation"><a href="<?php echo base_url(); ?>index.php/page/view?page=system_prototyping_contest_ranklist">Ranklist</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="<?php echo base_url(); ?>index.php/page/view?page=project_show" role="menuitem">project Show</a>
                                <ul class="dropdown-menu">
                                    <li role="presentation">
                                        <a href="#" role="menuitem">Register</a>
                                    </li>
                                </ul>
                            </li>
                            <li role="presentation"><a href="<?php echo base_url(); ?>index.php/page/view?page=ai_contest" role="menuitem">AI Challenge</a></li>
                            <li role="presentation"><a href="#" role="menuitem">Picture Puzzle</a></li>
                        </ul>
                    </li>
                    <li class="dropdown-submenu">
                        <a href="#" role="menuitem">Intra-BUET Competitions</a>
                        <ul class="dropdown-menu">
                            <li  class="dropdown-submenu" role="presentation">
                                <a href="#" role="menuitem">Programming Contest</a>
                                <ul class="dropdown-menu">
                                    <li role="presentation"><a href="#" role="menuitem">Register</a></li>
                                    <li role="presentation"><a href="<?php echo base_url(); ?>index.php/acm/contest_registered_teams" role="menuitem">Registered Teams</a></li>
                                    <!-- href="<?php echo base_url(); ?>index.php/acm/ranklist" -->
                                    <li role="presentation"><a target="blank" href="#" role="menuitem">Ranklist</a></li>
                                </ul>
                            </li>
                            <li class="presentation" role="menuitem"><a href="<?php echo base_url(); ?>index.php/page/view?page=robotics_competition">Robotics Competition</a></li>
                            <li role="presentation"><a href="#" role="menuitem">System Analysis Contest</a></li>
                            <li role="presentation"><a href="<?php echo base_url(); ?>index.php/page/view?page=unknown_language_contest" role="menuitem">Unknown Language Contest</a></li>
                            <li role="presentation"><a href="#" role="menuitem">Puzzle Contest</a></li>
                            <li role="presentation"><a href="<?php echo base_url(); ?>index.php/page/view?page=logic_olympiad" role="menuitem">Logic Olympiad</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a  id="dropdown_event" class="dropdown-toggle" data-toggle="dropdown" href="#">Events <b class="caret"></b></a>
                <ul class="dropdown-menu" area-labelledby="dropdown_event" role="menu">
                    <li class="" role="presentation"><a href="<?php echo base_url(); ?>index.php/page/view?page=seminar" role="menuitem">Seminar</a></li>
                    <li class="" role="presentation"><a href="#" role="menuitem">Job Fair</a></li>
                    <li role="presentation"><a href="#" role="menuitem">Cultural Night</a></li>
                </ul>
            </li>
            <li class="dropdown"> 
                <a id="dropdown_games" class="dropdown-toggle" data-toggle="dropdown"  href="<?php echo base_url(); ?>index.php/page/view?page=gamesNsports" roll="menuitem"> Games & Sports<b class="caret"></b></a>
                <ul class="dropdown-menu" area-labelledby="dropdown_games" roll="menu">
                    <li class="presentation" role="menuitem"><a href="<?php echo base_url(); ?>index.php/page/view?page=GamesNsports">Overview</a></li>
                    <!-- 
                     <li class="dropdown-submenu">
                         <a href="#" roll="menuitem">Indoor</a>
                         <ul class="dropdown-menu">
                             <li class="presentation"><a href="#" roll="menuitem"> Table Tennis</a></li>
                         </ul>
                     </li>
                     <li class="dropdown-submenu">
                         <a href="#"  roll="menuitem">Outdoor</a>
                         <ul class="dropdown-menu">
                             <li class="presentation"><a href="#" roll="menuitem">Football</a></li>
                         </ul>
                     </li>
                     <li class="dropdown-submenu">
                         <a href="#" roll="menuitem">Cyber Games</a>
                         <ul class="dropdown-menu">
                             <li roll="presentation"><a href="#"  roll="menuitem"> FIFA-2013</a></li>
                             <li class="presentation"><a href="#" roll="menuitem">NFS</a></li>
                             <li class="presentation"><a href="#" roll="menuitem">King of Fighters</a></li>
                         </ul>
                     </li>
                    <!--
                    <li class="dropdown-submenu">
                        <a href="#" roll="menuitem">Demo</a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-submenu">
                                <a href="" roll="button">1</a>
                                <ul class="dropdown-menu">
                                    <li>assd</li>
                                    <li>sad</li>
                                </ul>
                            </li>
                            <li>2</li>
                        </ul>
                    </li>-->
                </ul>
            </li>
            <li><a href="#">Alumni Registration</a></li>
            <li><a href="<?php echo base_url();?>index.php/home/gallery">Gallery</a></li>
        </ul>
    </div>
</div>