<div class="container-fluid">
    <div class="row-fluid">
        <div class="span2">
            <?php if ($this->session->userdata('flash_message_type') == 'error'): ?>
                <div class="alert alert-error larger">
                    <?php echo $this->session->userdata('flash_message'); ?>
                </div>
                <?php $this->session->unset_userdata('flash_message_type'); ?>
                <?php $this->session->unset_userdata('flash_message'); ?>
            <?php endif; ?>
        </div>
        <div class="span10">
            <?php echo form_open('project_show/registration'); ?>
            <div class="row-fluid">
                <div class="span4">
                    <fieldset>
                        <label for="project_name">Project Name</label>
                        <input name="project_name" type="text"  placeholder="Project Name"/>
                    </fieldset>
                    <input type="hidden" name="project_type" value="software"/>
                </div>
                <div class="span8">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#member1" data-toggle="tab">First member</a></li>
                        <li><a href="#member2" data-toggle="tab">Second Member</a></li>
                        <li><a href="#member3" data-toggle="tab">Third Member</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="member1" class="tab-pane active">
                            <fieldset>
                                <label for="member_1_name">First Member Info:</label>
                                <label>Student Id</label>
                                <input name="member_1_student_id" type="text" placeholder="Student Id"/>

                                <label for="member_1_institution">Institution</label>
                                <input name="member_1_institution" type="text"  placeholder="University"/>
                                <label for="member_1_department">Department</label>
                                <input name="member_1_department" type="text"  placeholder="Department"/>
                                <label for="member_1_session">Session</label>
                                <input type="text" name="session" placeholder="Session"/>
                                <!--
                                <label>Optional</label>
                                <input type="checkbox" name="bitmap1" style="display: hidden;"/>-->
                                <label for="member_1_name">Name</label>
                                <input name="member_1_name" type="text"  placeholder="Full Name"/>
                                <label for="member_1_email">Email</label>
                                <input name="member_1_email" type="text"  placeholder="Email"/>
                                <label for="member_1_phone">Phone</label>
                                <input name="member_1_phone" type="text"  placeholder="Phone Numbe(without +88)"/>
                                <label for="member_1_address">Address</label>
                                <textarea name="member_1_address" row="4" col="5"></textarea>
                            </fieldset>
                        </div>
                        <div id="member2" class="tab-pane">
                            <fieldset>
                                <label for="member_2_name">Second Member Info:</label>
                                <!--
                                <label>Optional</label>
                                <input type="checkbox" name="bitmap2"/>-->
                                <label>Student Id</label>
                                <input name="member_2_student_id" type="text" placeholder="Student Id"/>

                                <label for="member_2_institution">Institution</label>
                                <input name="member_2_institution" type="text"  placeholder="University"/>
                                <label for="member_2_department">Department</label>
                                <input name="member_2_department" type="text"  placeholder="Department"/>
                                <label for="member_2_session">Session</label>
                                <input type="text" name="session" placeholder="Session"/>

                                <input name="member_2_student_id" type="text" placeholder="Student Id"/>
                                <label for="member_2_name">Name</label>
                                <input name="member_2_name" type="text"  placeholder="Full Name"/>
                                <label for="member_2_email">Email</label>
                                <input name="member_2_email" type="text"  placeholder="Email"/>
                                <label for="member_2_phone">Phone</label>
                                <input name="member_2_phone" type="text"  placeholder="Phone Numbe(without +88)"/>
                                <label for="member_2_address">Address</label>
                                <textarea name="member_2_address" row="4" col="5"></textarea>
                            </fieldset>

                        </div>
                        <div id="member3" class="tab-pane">
                            <fieldset>
                                <label for="member_3_name">Third Member Info:</label>
                                <!--
                                <label>Optional</label>
                                <input type="checkbox" name="bitmap3"/>-->
                                <label>Student Id</label>
                                <input name="member_3_student_id" type="text" placeholder="Student Id"/>

                                <label for="member_3_institution">Institution</label>
                                <input name="member_3_institution" type="text"  placeholder="University"/>
                                <label for="member_3_department">Department</label>
                                <input name="member_3_department" type="text"  placeholder="Department"/>
                                <label for="member_3_session">Session</label>
                                <input type="text" name="session" placeholder="Session"/>

                                <label for="member_3_name">Name</label>
                                <input name="member_3_name" type="text"  placeholder="Full Name"/>
                                <label for="member_3_email">Email</label>
                                <input name="member_3_email" type="text"  placeholder="Email"/>
                                <label for="member_3_phone">Phone</label>
                                <input name="member_3_phone" type="text"  placeholder="Phone Numbe(without +88)"/>
                                <label for="member_3_address">Address</label>
                                <textarea name="member_3_address" row="4" col="5"></textarea>
                            </fieldset>
                        </div>
                    </div>
                    <fieldset>
                        <input class="btn btn-large btn-primary" type="submit" value="SUBMIT"/>
                        <a class="btn btn-large" href="<?php echo base_url() ?>index.php/home/index">Cancel</a>
                    </fieldset>
                </div>
            </div>
            <?php echo form_close(); ?>
        </div>  
    </div>
</div>