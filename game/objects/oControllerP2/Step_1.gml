/// @description Insert description here
// You can write your code in this editor

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up);
key_down = keyboard_check_pressed(vk_down);
key_action = keyboard_check(ord("E"));

if (key_left || key_right || key_jump || key_down) {
    keyboard = 1;
    controller = 0;    
}

// contrôleur mouvements
if (abs(gamepad_axis_value(0, gp_axislh)) > 0.1) {
    key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
    key_right = max(gamepad_axis_value(0, gp_axislh), 0);
    controller = 1;
}
if (gamepad_axis_value(0, gp_axislv) < -0.1) {
    key_jump = 1;
	controller = 1;
} else if (gamepad_axis_value(0, gp_axislv) > 0.1) {
    key_down = 1;
	controller = 1;
}

if (gamepad_button_check(0, gp_face3)) {
    key_action = 1;
	controller = 1;
}
if (controller ==1) keyboard = 0;