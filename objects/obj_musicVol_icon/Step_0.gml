if(obj_game_paused.visible){
	visible = true;
}else{
	visible = false;
}


if(visible){
	// Set the lava's position to the bottom of the viewport
    x = obj_soundVol_icon.x;
	y = obj_soundVol_icon.y + sprite_get_height(obj_soundVol_icon	.sprite_index);
	
}