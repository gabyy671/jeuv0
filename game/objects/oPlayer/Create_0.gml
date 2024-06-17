enum JUMPING_STATE{
    GROUNDED,
    JUMPING,
    FALLING,
	FAST_FALLING,
    TOP
}

jumping_state = JUMPING_STATE.FALLING;

jumping_frame = 0;

hsp = 0;
vsp = 0;
grv = 0.6;
walksp = 6;
jumping_speed = 8;
falling_speed = 8;

controller = 0;
keyboard = 0;
hascontrol = true;

can_jump = 0;