<div class="row-fluid">
    <div class="span12"></div>
    <div class="span12">
        <div class="popover top custom-popup" style="display: block;">
            <div class="arrow"></div>
            <h3 class="popover-title">Notice Board</h3>
            <div class="popover-content">
                <marquee direction="up" onmouseover="this.stop();" onmouseout="this.start();" scrollamount="2">
                    <?php echo $content; ?>
                </marquee>
            </div>
        </div>
    </div>
</div>
