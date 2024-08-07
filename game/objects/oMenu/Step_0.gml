/// @description Insert description here
// You can write your code in this editor

menu_x += (menu_x_target - menu_x) / menu_speed;

var axis_value = gamepad_axis_value(0, gp_axislv);
ctr_up = false;
ctr_down = false;

if (axis_value < -0.1 && !was_commited_ctr) {
    ctr_up = true;
    was_commited_ctr = true;
} else if (axis_value > 0.1 && !was_commited_ctr) {
    ctr_down = true;
    was_commited_ctr = true;
} else if (abs(axis_value) <= 0.1) {
    was_commited_ctr = false;
}


if (menu_control){
	if(keyboard_check_pressed(vk_up)) || (ctr_up) {
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	
	if(keyboard_check_pressed(vk_down)) || (ctr_down) {
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
	}
	
	if(keyboard_check_pressed(vk_enter)) || (gamepad_button_check(0, gp_face2)) {
		menu_x_target = gui_width + 200;
		menu_committed = menu_cursor;
		ScreenShake(4, 30);
		menu_control = false;
		audio_play_sound(snDeath, 10, false);
	}
	
	var mouse_y_gui = device_mouse_y_to_gui(0);
	if(mouse_y_gui < menu_y) && (mouse_y_gui > menu_top){
		
		menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight * 1.5);
		if (mouse_check_button_pressed(mb_left)) {
			menu_x_target = gui_width + 200;
			menu_committed = menu_cursor;
			ScreenShake(4, 30);
			menu_control = false;
		}
	}
	
}

if (menu_x > gui_width + 150) && (menu_committed != -1){
	if keyboard_check(vk_enter) && (keyboard_check(vk_lcontrol)) global.bis = true;
	
	switch(menu_committed){
	    case 5:
	    case 4:
	    case 3:
	    case 2: {
	        global.nbPlayer = menu_committed - 1;
	        global.fromSave = 0;
	        SlideTransition(TRANS_MOD.NEXT); 
	    } break;

	    case 1: {
	        if (!file_exists(SAVEFILE)) {
	            global.fromSave = 0;
	            SlideTransition(TRANS_MOD.NEXT);
	        } 
			else {
	            var file = file_text_open_read(SAVEFILE);
	            var target = file_text_read_real(file);
	            global.kills = file_text_read_real(file);
	            global.pacifist = file_text_read_real(file);
	            global.nbPlayer = file_text_read_real(file);
	            //global.bis = file_text_read_real(file);
	            file_text_close(file);
	            global.fromSave = 1;
	            SlideTransition(TRANS_MOD.GOTO, target);
	        }
	    } break;

	    case 0: {
	        game_end(); 
	    } break;
	}
}