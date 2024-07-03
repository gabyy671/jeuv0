/// @description Insert description here
// You can write your code in this editor
if (irl_c_id > global.nbPlayer - 1) || (instance_number(object_index) > 1) instance_destroy();

if(global.bis){
	irl_controller_id = irl_c_id_bis;		
}
else irl_controller_id = irl_c_id;
controller = 1;
