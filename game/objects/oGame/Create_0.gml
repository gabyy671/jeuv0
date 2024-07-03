/// @description Insert description here
// You can write your code in this editor
/*
#macro RES_W 1024;
#macro RES_H 768;
display_set_gui_size(RES_W, RES_H);
*/

enum JUMPING_STATE{
    GROUNDED,
    JUMPING,
    FALLING,
	FAST_FALLING,
    TOP
}

global.kills = 0;
global.killsthisroom = 0;
global.pacifist = true;
global.nbPlayer = 1;
global.bis = false;
global.fromSave = 0;
killtextscale = 1;
