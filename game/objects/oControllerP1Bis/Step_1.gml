/// @description Insert description here
// You can write your code in this editor

key_left = keyboard_check(vk_left) || keyboard_check(ord("Q"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_up);
key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
key_action = keyboard_check(ord("E"));
key_shoot = mouse_check_button(mb_left);

