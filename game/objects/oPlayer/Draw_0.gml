/// @description Insert description here
// You can write your code in this editor
draw_self();
DrawSetText(c_black, fMenu, 0, 0);
draw_text(x, y - 50, string(number_player));

if (flash > 0){
	flash -=1;	
	shader_set(shWhite);
	draw_self();
	shader_reset();
}


var start_x = x - (hp * 10) / 2;
for (var i = 0; i < hp; i++) {
    draw_sprite(sHeart, 0, start_x + (10 * i), y - 25);
}