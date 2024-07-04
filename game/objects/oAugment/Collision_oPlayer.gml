/// @description Insert description here
// You can write your code in this editor

with(other){
	// Supposons que la variable s'appelle "variable"
	switch (other.type_augment) {
	    case 1:
			inventory.dmg++;
	        break;

	    case 2:
			inventory.bullet_spd += 10;
	        break;

	    case 3:
			inventory.firing_delay = max(0, inventory.firing_delay - 5);
	        break;

	    case 4:
	        inventory.spread = max(0, inventory.spread - 2);
	        break;

	    default:
	        // Code pour le cas où la variable n'est pas entre 1 et 4
	        break;
	}
	instance_destroy();
}
instance_destroy();