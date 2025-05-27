/// obj_game_controller – Step
// Toggle pause when the player hits ESC
if (keyboard_check_pressed(vk_escape)) {
    paused = !paused;
	obj_game_paused.visible = paused;
	
}

if((global.timer >= 1800  && global.timer < 2000) ||
   (global.timer >= 3800 && global.timer < 4000) ||
   (global.timer >= 5800 && global.timer < 6000) ) {
	obj_quiz_approaching.visible = true;	
}
else{
	obj_quiz_approaching.visible = false;
}

//question 1
if(quizTimer >= 500){
	obj_game_paused.visible = false;
	paused = false;
	lavaLevel++;
	quizTimer = 0; 
	obj_qst_1.visible = false;
	obj_qst_2.visible = false;
	obj_qst_3.visible = false;
	global.timer++;
	
	
}
if (global.timer == 2000) {
	paused = true;
	quiz1_show = true;
	obj_qst_1.visible = true;
	quizTimer++;
}

//close correct/answer sign
else if(global.timer == 2200 || 
		global.timer == 4200 || 
		global.timer == 6200){
	
	if(obj_CA.visible){
		obj_CA.visible = false;
	}else{
		obj_WA.visible = false;
	}
	global.timer++;
	quizTimer = 0;
}
//question 2
else if (global.timer == 4000) {
	
	paused = true;
	quiz2_show = true;
	obj_qst_2.visible = true;
	quizTimer++;
	
}else if (global.timer == 6000){
	
	paused = true;
	quiz3_show = true;
	obj_qst_3.visible = true;
	quizTimer++;
}
//conitnue timer
else if (!paused) {
	global.timer++;
	obj_game_paused.visible = false;
	show_debug_message(global.timer);
	
}