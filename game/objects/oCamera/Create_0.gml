/// @description set camera
// You can write your code in this editor

cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;


xTo = xstart;
yTo = ystart;
/*
shake_lenght = 60;
shake_magnitude = 3;
shake_remain = 3;
*/
shake_lenght = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;


mountains_layer = layer_get_id("Mountains");
trees_layer = layer_get_id("Trees");