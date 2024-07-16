/// @description Insert description here
// You can write your code in this editor

with(other){
	switch (other.type_augment) {
	    case 1:
			inventory.dmg++;
	        break;

	    case 2:
			inventory.bullet_spd += 20;
	        break;

	    case 3:
			inventory.firing_delay = max(0, inventory.firing_delay - 5);
	        break;

	    case 4:
	        inventory.spread = max(0, inventory.spread - 2);
	        break;
			
		case 5:
			inventory.inv_hp ++;	        
	        break;
			
		case 6:
			inventory.inv_walk_spd += 2;	        
	        break;
			
		case 7:
	        inventory.inv_fall_spd += 2;
	        break;
			
		case 8:
	        inventory.inv_jump_spd += 2;
	        break;

		case 9:
	        inventory.inv_jump_lgt += 5;
	        break;
			
	    default:
	        
	        break;
	}
	instance_destroy();
}
instance_destroy();
