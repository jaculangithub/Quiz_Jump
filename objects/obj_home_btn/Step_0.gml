
if(!instance_exists(obj_game_paused)){
	exit;	
}

if(obj_game_paused.visible){
	visible = true;
}else{
	visible = false;
}


if(visible){
	// Set the lava's position to the bottom of the viewport
    x = obj_play_icon.x + sprite_get_width(obj_play_icon.sprite_index)
	//y = obj_ansN1_1.y + sprite_get_height(obj_ansN1_1.sprite_index) + 60;
	y = obj_play_icon.y;
}