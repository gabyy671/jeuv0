/// @description Insert description here
// You can write your code in this editor
key_jump = 0;
key_down = 0;
key_action = 0;

// contrôleur mouvements
if (abs(gamepad_axis_value(irl_controller_id, gp_axislh)) > 0.1) {
    key_left = abs(min(gamepad_axis_value(irl_controller_id, gp_axislh), 0));
    key_right = max(gamepad_axis_value(irl_controller_id, gp_axislh), 0);
}
else {
	key_left = 0;
    key_right = 0;
}

if (gamepad_axis_value(irl_controller_id, gp_axislv) < -0.1) {
    key_jump = 1;
} else key_jump = 0;

if (gamepad_axis_value(irl_controller_id, gp_axislv) > 0.1) {
    key_down = 1;
} else key_down = 0;

if (gamepad_button_check(irl_controller_id, gp_face3)) {
    key_action = 1;
} else key_action = 0;

if (gamepad_button_check(irl_controller_id, gp_shoulderlb)){
	key_shoot = 1;
} else key_shoot = 0;
