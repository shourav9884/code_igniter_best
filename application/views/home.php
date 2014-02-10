<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/home.css" media="all"/>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">

            <div id="seminar">
                <a href="#seminar_modal" title="Seminars" data-toggle="modal">
                    <img src="<?php echo base_url(); ?>assets/images/Seminar.png" alt="<?php echo base_url(); ?>assets/images/Seminar2.png"
                         onmouseover="temp = this.src;this.src = this.alt;this.alt = temp;;" 
                         onmouseout="temp = this.src;this.src = this.alt;this.alt = temp;;"/> 
                </a>
            </div>
            <!--href="#GamesNsports_modal"   data-toggle="modal"--> 
            <div id="GamesNsports">
                <a href="<?php echo base_url(); ?>index.php/page/view?page=GamesNsports" title="Games & Sports">
                    <img src="<?php echo base_url(); ?>assets/images/GamesNsports.gif" alt="<?php echo base_url(); ?>assets/images/GamesNsports2.gif"
                         onmouseover="temp = this.src;this.src = this.alt;this.alt = temp;;" 
                         onmouseout="temp = this.src;this.src = this.alt;this.alt = temp;;"/> 
                </a>
            </div>
            <div id="CompetitiveEvents">
                <a href="#CompetitiveEvents_modal" title="Competitive Events" data-toggle="modal">
                    <img src="<?php echo base_url(); ?>assets/images/CompetitiveEvents.png" alt="<?php echo base_url(); ?>assets/images/CompetitiveEvents2.png"
                         onmouseover="temp = this.src;this.src = this.alt;this.alt = temp;;" 
                         onmouseout="temp = this.src;this.src = this.alt;this.alt = temp;;"/> 
                </a>
            </div>
            <div id="Gallery">
                <a target="blank" title="Gallery" href="<?php echo base_url(); ?>index.php/home/gallery">
                    <img src="<?php echo base_url(); ?>assets/images/Gallery.gif" alt="<?php echo base_url(); ?>assets/images/Gallery2.gif"
                         onmouseover="temp = this.src;this.src = this.alt;this.alt = temp;;" 
                         onmouseout="temp = this.src;this.src = this.alt;this.alt = temp;;"/> 
                </a>
            </div>
            <div id="AlumniRegistration">
                <a href="#AlumniRegistration_modal" title="Alumni Registration" data-toggle="modal">
                    <img src="<?php echo base_url(); ?>assets/images/Alumni Registration.gif" alt="<?php echo base_url(); ?>assets/images/Alumni Registration2.gif"
                         onmouseover="temp = this.src;this.src = this.alt;this.alt = temp;;" 
                         onmouseout="temp = this.src;this.src = this.alt;this.alt = temp;;"/> 
                </a>
            </div>
            <div id="Publication">
                <a href="#Publication_modal" title="Publication" data-toggle="modal">
                    <img src="<?php echo base_url(); ?>assets/images/Publication.gif" alt="<?php echo base_url(); ?>assets/images/Publication2.gif"
                         onmouseover="temp = this.src;this.src = this.alt;this.alt = temp;;" 
                         onmouseout="temp = this.src;this.src = this.alt;this.alt = temp;;"/> 
                </a>
            </div>

            <div id="background">
                <img src="<?php echo base_url(); ?>assets/images/homepage.jpg"/>
            </div>

        </div>
        <?php
        $menu_items = array(
            'seminar', 'GamesNsports', 'AlumniRegistration', 'Publication'
        );
        ?>
        <?php foreach ($menu_items as $item): ?>

            <div id="<?php echo $item; ?>_modal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3 id="myModalLabel"></h3>
                </div>
                <div class="modal-body">
                    <?php $this->load->view('templates/page_widget', array('page' => $item . '_' . 'summary', 'tag' => $item)); ?>
                </div>
                <div class="modal-footer">
                    <?php if ($item == 'seminar'): ?>
                        <a class="btn btn-primary" href="<?php echo base_url(); ?>index.php/page/view?page=<?php echo $item; ?>">Read More</a>
                    <?php endif; ?>
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                </div>
            </div>

        <?php endforeach; ?>
        <div id="CompetitiveEvents_modal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 id="myModalLabel">Competitive Events</h3>
            </div>
            <div class="modal-body">
                <div class="row-fluid">
                    <div class="span12">
                        <ul class="nav nav-tabs">
                            <li class="active"><a class="btn btn-large" href="#inter-university" data-toggle="tab">Inter- University Competitions</a></li>
                            <li><a class="btn btn-large" href="#intra-buet" data-toggle="tab">Intra-CSE Competitions</a></li>
                        </ul>
                    </div>
                    <div class="span12">
                        <div class="tab-content">
                            <div id="inter-university" class="tab-pane active">
                                <div class="row-fluid">
                                    <div class="span4">
                                        <a name="system_prototyping_contest" href="<?php echo base_url(); ?>index.php/page/view?page=system_prototyping_contest">
                                            <img src="<?php echo base_url(); ?>assets/images/interuniversity2.jpg"
                                                 alt="<?php echo base_url(); ?>assets/images/interuniversity2.1.jpg"
                                                 onmouseover="temp = this.src; this.src = this.alt;this.alt= temp; " 
                                                 onmouseout ="temp = this.src; this.src = this.alt;this.alt= temp; "/>
                                        </a>
                                    </div>
                                    <div class="span4">
                                        <a NAME="ai_contest" href="<?php echo base_url(); ?>index.php/page/view?page=ai_contest">
                                            <img name="ai_contest" src="<?php echo base_url(); ?>assets/images/interuniversity1.jpg"
                                                 alt="<?php echo base_url(); ?>assets/images/interuniversity1.1.jpg"
                                                 onmouseover="temp = this.src; this.src = this.alt;this.alt= temp; " 
                                                 onmouseout ="temp = this.src; this.src = this.alt;this.alt= temp; "/>
                                        </a>
                                    </div>
                                    <div class="span4">
                                        <a name="project_show" href="<?php echo base_url(); ?>index.php/page/view?page=project_show">
                                            <img src="<?php echo base_url(); ?>assets/images/interuniversity3.jpg"
                                                 alt="<?php echo base_url(); ?>assets/images/interuniversity3.1.jpg"
                                                 onmouseover="temp = this.src; this.src = this.alt;this.alt= temp; " 
                                                 onmouseout ="temp = this.src; this.src = this.alt;this.alt= temp; "/>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div id="intra-buet" class="tab-pane">
                                <div class="row-fluid">
                                    <div class="span12">
                                        <div class="span4">
                                            <!-- href="<?php echo base_url(); ?>index.php/page/view?page=programming_contest" -->
                                            <a name="programming_contest" >
                                                <img src="<?php echo base_url(); ?>assets/images/intrauniversity1.jpg"
                                                     alt="<?php echo base_url(); ?>assets/images/intrauniversity1.1.jpg"
                                                     onmouseover="temp = this.src; this.src = this.alt;this.alt= temp; " 
                                                     onmouseout ="temp = this.src; this.src = this.alt;this.alt= temp; "/>
                                            </a>
                                        </div>
                                        <div class="span4">
                                            <!-- href="<?php echo base_url(); ?>index.php/page/view?page=logic_olympiad" -->
                                            <a name="logic_olympiad" >
                                                <img src="<?php echo base_url(); ?>assets/images/intrauniversity2.jpg"
                                                     alt="<?php echo base_url(); ?>assets/images/intrauniversity2.1.jpg"
                                                     onmouseover="temp = this.src; this.src = this.alt;this.alt= temp; " 
                                                     onmouseout ="temp = this.src; this.src = this.alt;this.alt= temp; "/>
                                            </a>
                                        </div>
                                        <div class="span4">
                                            <a name="robotics_competition" href="<?php echo base_url(); ?>index.php/page/view?page=robotics_competition">
                                                <img src="<?php echo base_url(); ?>assets/images/intrauniversity3.jpg"
                                                     alt="<?php echo base_url(); ?>assets/images/intrauniversity3.1.jpg"
                                                     onmouseover="temp = this.src; this.src = this.alt;this.alt= temp; " 
                                                     onmouseout ="temp = this.src; this.src = this.alt;this.alt= temp; "/>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div  class="span12">
                                    <div class="span4">
                                        <a  name="unknown_language_contest" href="<?php echo base_url(); ?>index.php/page/view?page=unknown_language_contest">
                                            <img src="<?php echo base_url(); ?>assets/images/intrauniversity4.jpg"
                                                 alt="<?php echo base_url(); ?>assets/images/intrauniversity4.1.jpg"
                                                 onmouseover="temp = this.src; this.src = this.alt;this.alt= temp; " 
                                                 onmouseout ="temp = this.src; this.src = this.alt;this.alt= temp; "/>
                                        </a>
                                    </div>
                                    <div class="span4">
                                        <!-- href="<?php echo base_url(); ?>index.php/page/view?page=picture_puzzle" -->
                                        <a name="picture_puzzle">
                                            <img src="<?php echo base_url(); ?>assets/images/intrauniversity5.jpg"
                                                 alt="<?php echo base_url(); ?>assets/images/intrauniversity5.1.jpg"
                                                 onmouseover="temp = this.src; this.src = this.alt;this.alt= temp; " 
                                                 onmouseout ="temp = this.src; this.src = this.alt;this.alt= temp; "/>
                                        </a>
                                    </div>
                                    <div class="span4"></div>
                                </div>
                                <div class="span12"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <!--<a class="btn btn-primary" href="<?php echo base_url(); ?>index.php/page/view?page=CompetitiveEvents">Read More</a>-->
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        </div>
    </div>
</div>
<br/>
<br/><br/>