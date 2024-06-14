/// @description Insert description here
// You can write your code in this editor
if (instance_exists(oPlayer)){
	
	if (oPlayer.key_action){

		if (point_in_circle(oPlayer.x, oPlayer.y, x, y, 64) && (!instance_exists(oText))){
			with (instance_create_layer(x, y -64, layer, oText)){
				text = other.text;
				lenght = string_length(text);
			}
		
			with(oCamera){
				follow = other.id;	
			}
		
		}
		
	}
}