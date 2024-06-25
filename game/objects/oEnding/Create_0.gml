/// @description Insert description here
// You can write your code in this editor

lPlayer = layer_get_id("TileAssets")
gunsprite = layer_sprite_get_id(lPlayer, "gGun");
lPlayer = layer_get_id("TileAssets")

if (!global.pacifist) && (global.kills > 0){
	endtext[0] = "On this day, you killed " + string(global.kills) + " people.";
	endtext[1] = "But as some of them also had gun, ";	
	endtext[2] = "you were probably saving the world of something.";
	endtext[3] = "regardless, he was arrested two days later and spent the rest of his life in prison";
	endtext[4] = "the defense team stated that is was just self-defense,\nbut to no avail";
	endtext[5] = "Their parent later said in interview that they were \"not angry, just disappointed\"\n";
	endtext[6] = "The end.";
}

else
{
	layer_sprite_destroy(gunsprite);
	endtext[0] = "It was a nice walk was it?\n";
	endtext[1] = "The end.";
}

spd = 0.5;
letters = 0;
currentline = 0;
lenght = string_length(endtext[currentline]);
text = "";
