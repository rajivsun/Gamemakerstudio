// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_movement(){
	var move = right - left;
	hspd = move * walkspd;
	vspd = vspd + grav;

	//jump
	//if (place_meeting(x,y+1,obj_wall)) && jump
	//{
	//	vspd = -5;
	//}

	// Collisions horizontales
	if (place_meeting(x + hspd, y, obj_wall))
	{
		while (!place_meeting(x + sign(hspd),y,obj_wall))
		{
			x = x + sign(hspd);
		}
		hspd = 0;
	}

	x = x + hspd;

	// Collisions verticales
	if (place_meeting(x,y + vspd, obj_wall))
	{
		while(!place_meeting(x, y + sign(vspd), obj_wall))
		{
			y = y + sign(vspd);
		}
		vspd = 0;
	}
	y = y + vspd;

	//----------------- Animation------------------
	if (!place_meeting(x,y+1,obj_wall))
	{
		sprite_index = spr_idle;
	}

	else
	{
		if (hspd == 0)
		{
			sprite_index = spr_idle;
		}
		else
		{
			sprite_index = spr_walk;
		}
	}

	if (hspd != 0 ) image_xscale = sign(hspd);
}