// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_run(){
	run = false;
	if sprint { run = true;}
	if run == true
	{
		walkspd = 1.3;
		spr_walk = spr_playerRUN;
	}
	else
	{
		walkspd = 0.7;
		spr_walk = spr_playerWALK;
	}
}