if (hsp != 0) {
	image_xscale = sign(hsp)*size;
}
else image_xscale = size;
image_yscale = size;

draw_self();

if (flash > 0){
	flash --;
	shader_set(shWhite);
	draw_self();
	shader_reset();	
}