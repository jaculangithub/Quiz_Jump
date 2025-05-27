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
    x = obj_musicVol_icon.x;
	y = obj_musicVol_icon.y + sprite_get_height(obj_musicVol_icon.sprite_index) - 30;
	
}