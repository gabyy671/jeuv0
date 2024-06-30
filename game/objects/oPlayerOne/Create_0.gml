/// @description Insert description here
// You can write your code in this editor

if (instance_exists(primary_controller)) {
    active_controller = primary_controller;
} else if (instance_exists(secondary_controller)){
	active_controller = secondary_controller;
}
else instance_destroy();