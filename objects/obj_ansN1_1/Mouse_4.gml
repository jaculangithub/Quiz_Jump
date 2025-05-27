
if(!visible){
	exit;	
}

obj_game_controller.paused = false;
show_debug_message("Left Pressed");
if(obj_game_controller.paused = false){
show_debug_message("GAme is not paused");
}

obj_qst_1.visible = false;
global.coins_collected = global.coins_collected + 10;

obj_CA.visible = true;
global.timer++;