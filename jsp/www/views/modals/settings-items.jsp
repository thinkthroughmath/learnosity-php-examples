<!--
********************************************************************
*
* Setup the Items API Settings modal
*
********************************************************************
-->
<?php
    // Shortcuts for convenience
    $con = $request['config'];
    $nav = $request['config']['navigation'];
    $time = $request['config']['time'];
?>
<div class="modal fade" id="settings">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Items API – Custom Settings</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form" id="frmSettings" method="post">

                    <div class="panel panel-info">
                        <div class="panel-heading">Title Settings</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label for="show_title" class="col-sm-2 control-label">Show Title?</label>
                                <div class="col-sm-10">
                                    <input type="radio" name="navigation[show_title]" value="true"<?php if (isset($nav['show_title']) && $nav['show_title'] === true) { echo ' checked'; }; ?>> True
                                    <input type="radio" name="navigation[show_title]" value="false"<?php if (isset($nav['show_title']) && $nav['show_title'] === false) { echo ' checked'; }; ?>> False
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="title" class="col-sm-2 control-label">Activity Title</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="title" id="title" placeholder="Override the default activity name" value="<?php if (isset($con['title'])) { echo $con['title']; }; ?>">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="subtitle" class="col-sm-2 control-label">Activity Subtitle</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="subtitle" id="subtitle" placeholder="Subtitle of the activity" value="<?php if (isset($con['subtitle'])) { echo $con['subtitle']; }; ?>">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-info">
                        <div class="panel-heading">Navigation/Control Settings</div>
                        <div class="panel-body">

                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="show_prev" class="col-sm-6 control-label">Show Previous?</label>
                                    <div class="col-sm-6">
                                        <input type="radio" name="navigation[show_prev]" value="true"<?php if (isset($nav['show_prev']) && $nav['show_prev'] === true) { echo ' checked'; }; ?>> True
                                        <input type="radio" name="navigation[show_prev]" value="false"<?php if (isset($nav['show_prev']) && $nav['show_prev'] === false) { echo ' checked'; }; ?>> False
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="show_next" class="col-sm-6 control-label">Show Next?</label>
                                    <div class="col-sm-6">
                                        <input type="radio" name="navigation[show_next]" value="true"<?php if (isset($nav['show_next']) && $nav['show_next'] === true) { echo ' checked'; }; ?>> True
                                        <input type="radio" name="navigation[show_next]" value="false"<?php if (isset($nav['show_next']) && $nav['show_next'] === false) { echo ' checked'; }; ?>> False
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="show_save" class="col-sm-6 control-label">Show Save?</label>
                                    <div class="col-sm-6">
                                        <input type="radio" name="navigation[show_save]" value="true"<?php if (isset($nav['show_save']) && $nav['show_save'] === true) { echo ' checked'; }; ?>> True
                                        <input type="radio" name="navigation[show_save]" value="false"<?php if (isset($nav['show_save']) && $nav['show_save'] === false) { echo ' checked'; }; ?>> False
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="show_submit" class="col-sm-6 control-label">Show Submit?</label>
                                    <div class="col-sm-6">
                                        <input type="radio" name="navigation[show_submit]" value="true"<?php if (isset($nav['show_submit']) && $nav['show_submit'] === true) { echo ' checked'; }; ?>> True
                                        <input type="radio" name="navigation[show_submit]" value="false"<?php if (isset($nav['show_submit']) && $nav['show_submit'] === false) { echo ' checked'; }; ?>> False
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="show_fullscreencontrol" class="col-sm-6 control-label">Show Fullscreen?</label>
                                    <div class="col-sm-6">
                                        <input type="radio" name="navigation[show_fullscreencontrol]" value="true"<?php if (isset($nav['show_fullscreencontrol']) && $nav['show_fullscreencontrol'] === true) { echo ' checked'; }; ?>> True
                                        <input type="radio" name="navigation[show_fullscreencontrol]" value="false"<?php if (isset($nav['show_fullscreencontrol']) && $nav['show_fullscreencontrol'] === false) { echo ' checked'; }; ?>> False
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="show_calculator" class="col-sm-6 control-label">Show Calculator?</label>
                                    <div class="col-sm-6">
                                        <input type="radio" name="navigation[show_calculator]" value="true"<?php if (isset($nav['show_calculator']) && $nav['show_calculator'] === true) { echo ' checked'; }; ?>> True
                                        <input type="radio" name="navigation[show_calculator]" value="false"<?php if (isset($nav['show_calculator']) && $nav['show_calculator'] === false) { echo ' checked'; }; ?>> False
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="toc" class="col-sm-6 control-label">Show Table of Contents?</label>
                                    <div class="col-sm-6">
                                        <input type="radio" name="navigation[toc]" value="true"<?php if (isset($nav['toc']) && $nav['toc'] === true) { echo ' checked'; }; ?>> True
                                        <input type="radio" name="navigation[toc]" value="false"<?php if (isset($nav['toc']) && $nav['toc'] === false) { echo ' checked'; }; ?>> False
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="show_itemcount" class="col-sm-6 control-label">Show Item Count?</label>
                                    <div class="col-sm-6">
                                        <input type="radio" name="navigation[show_itemcount]" value="true"<?php if (isset($nav['show_itemcount']) && $nav['show_itemcount'] === true) { echo ' checked'; }; ?>> True
                                        <input type="radio" name="navigation[show_itemcount]" value="false"<?php if (isset($nav['show_itemcount']) && $nav['show_itemcount'] === false) { echo ' checked'; }; ?>> False
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="panel panel-info">
                        <div class="panel-heading">UI Settings</div>
                        <div class="panel-body">

                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="show_progress" class="col-sm-6 control-label">Show Progress?</label>
                                    <div class="col-sm-6">
                                        <input type="radio" name="navigation[show_progress]" value="true"<?php if (isset($nav['show_progress']) && $nav['show_progress'] === true) { echo ' checked'; }; ?>> True
                                        <input type="radio" name="navigation[show_progress]" value="false"<?php if (isset($nav['show_progress']) && $nav['show_progress'] === false) { echo ' checked'; }; ?>> False
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="show_time" class="col-sm-6 control-label">Show Time?</label>
                                    <div class="col-sm-6">
                                        <input type="radio" name="time[show_time]" value="true"<?php if (isset($time['show_time']) && $time['show_time'] === true) { echo ' checked'; }; ?>> True
                                        <input type="radio" name="time[show_time]" value="false"<?php if (isset($time['show_time']) && $time['show_time'] === false) { echo ' checked'; }; ?>> False
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="show_pause" class="col-sm-6 control-label">Show Pause?</label>
                                    <div class="col-sm-6">
                                        <input type="radio" name="time[show_pause]" value="true"<?php if (isset($time['show_pause']) && $time['show_pause'] === true) { echo ' checked'; }; ?>> True
                                        <input type="radio" name="time[show_pause]" value="false"<?php if (isset($time['show_pause']) && $time['show_pause'] === false) { echo ' checked'; }; ?>> False
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="warning_time" class="col-sm-6 control-label">Warning Time (sec)</label>
                                    <div class="col-sm-3">
                                        <input type="number" min="100" max="1000" step="100" class="form-control" name="time[warning_time]" value="<?php if (isset($time['warning_time'])) { echo $time['warning_time']; }; ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="show_time" class="col-sm-6 control-label">Limit Type?</label>
                                    <div class="col-sm-6">
                                        <select id="limit_type" name="time[limit_type]">
                                            <option value="soft"<?php if (isset($con['time']['limit_type']) && $con['time']['limit_type'] === 'soft') { echo ' selected'; }; ?>>Soft</option>
                                            <option value="hard"<?php if (isset($con['time']['limit_type']) && $con['time']['limit_type'] === 'hard') { echo ' selected'; }; ?>>Hard</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="ui_style" class="col-sm-6 control-label">UI Style</label>
                                    <div class="col-sm-6">
                                        <select id="ui_style" name="ui_style">
                                            <option value="main"<?php if (isset($con['ui_style']) && $con['ui_style'] === 'main') { echo ' selected'; }; ?>>Main</option>
                                            <option value="horizontal"<?php if (isset($con['ui_style']) && $con['ui_style'] === 'horizontal') { echo ' selected'; }; ?>>Horizontal</option>
                                            <option value="horizontal-fixed"<?php if (isset($con['ui_style']) && $con['ui_style'] === 'horizontal-fixed') { echo ' selected'; }; ?>>Horizontal Fixed</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="transition" class="col-sm-6 control-label">Transition</label>
                                    <div class="col-sm-6">
                                        <select id="transition" name="navigation[transition]">
                                            <option value="slide"<?php if (isset($nav['transition']) && $nav['transition'] === 'slide') { echo ' selected'; }; ?>>Slide</option>
                                            <option value="fade"<?php if (isset($nav['transition']) && $nav['transition'] === 'fade') { echo ' selected'; }; ?>>Fade</option>
                                            <option value="toggle"<?php if (isset($nav['transition']) && $nav['transition'] === 'toggle') { echo ' selected'; }; ?>>Toggle</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="transition-speed" class="col-sm-6 control-label">Transition Speed (ms)</label>
                                    <div class="col-sm-3">
                                        <input type="number" min="100" max="1000" step="100" class="form-control" name="navigation[transition_speed]" value="<?php if (isset($nav['transition_speed'])) { echo $nav['transition_speed']; }; ?>">
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="document.getElementById('frmSettings').submit();">Initialise Items API &raquo;</button>
            </div>
        </div>
    </div>
</div>
