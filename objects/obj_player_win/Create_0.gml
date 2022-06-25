/// @description Insert description here
// You can write your code in this editor
if((global.scorep1 > global.scorep2) and (global.scorep1 > global.scorep3)){
	sprite_index = spr_dino_stand;
} else if ((global.scorep2> global.scorep1) and (global.scorep2 > global.scorep3)){
	sprite_index = spr_dino_stand2;
} else {
	sprite_index = spr_dino_stand3;
}

x = 640
y = 360

