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
        <div class="span8">
            <?php echo form_open('acm/registration'); ?>
            <div class="row-fluid">
                <div class="span4">
                    <fieldset>
                        <label for="team_name">Team Name</label>
                        <input name="team_name" type="text"  placeholder="Team Name"/>
                    </fieldset>
                </div>
                <div class="span8">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#member1" data-toggle="tab">Member-1</a></li>
                        <li><a href="#member2" data-toggle="tab">Member-2</a></li>
                        <li><a href="#member3" data-toggle="tab">Member-3</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="member1" class="tab-pane active">
                            <fieldset>
                                <label for="member_1_name">First Member Info:</label>
                                <label for="batch">Batch</label>
                                <select name="member_2_batch">
                                    <option value="08">08</option>
                                    <option value="09">09</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                                <label>Student Id</label>
                                <!--
                                <label>Optional</label>
                                <input type="checkbox" name="bitmap1" style="display: hidden;"/>-->
                                <input name="member_1_student_id" type="text" placeholder="Student Id"/>
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
                                <label for="batch">Batch</label>
                                <select name="member_2_batch">
                                    <option value="08">08</option>
                                    <option value="09">09</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                                <!--
                                <label>Optional</label>
                                <input type="checkbox" name="bitmap2"/>-->
                                <label>Student Id</label>
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
                                <label for="batch">Batch</label>
                                <select name="member_3_batch">
                                    <option value="08">08</option>
                                    <option value="09">09</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                                <!--
                                <label>Optional</label>
                                <input type="checkbox" name="bitmap3"/>-->
                                <label>Student Id</label>
                                <input name="member_3_student_id" type="text" placeholder="Student Id"/>
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
                        <input  class="btn btn-large btn-primary" type="submit" value="SUBMIT"/>
                        <a class="btn btn-large" href="<?php echo base_url() ?>index.php/home/index">Cancel</a>
                    </fieldset>
                </div>
            </div>
            <?php echo form_close(); ?>
        </div>
    </div>
</div>