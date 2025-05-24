function game_pause(argument0){
	/// @function game_pause(pause)
	/// @param {bool} pause
	if (argument0) {
	    // Pause
	    global.game_paused = true;
	    with (all) {
	        if (!object_is_ancestor(object_index, obj_pause_exempt)) {
	            xprevious = x;
	            yprevious = y;
	            xspeed = 0;
	            yspeed = 0;
	            gravity = 0;
	        }
	    }
	} else {
	    // Unpause
	    global.game_paused = false;
	    instance_activate_all();
	}
}