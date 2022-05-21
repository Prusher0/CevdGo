/// @description Insert description here
// You can write your code in this editor
var grid = ds_quests;
var i =0;
repeat(ds_quests_number){
switch(i){
	case quests.yangin_sondur:
	switch(grid[# 1,i]){
		case -1:
		break;
		case 0:
			with(obj_oyuncu){
				var inst=instance_place(x,y,obj_ates);
				if(inst!=noone){with(inst){
					image_blend=c_red;
					grid[# 1,i]+=1;
					}
				}
			}
		break;
	}
	break;
	case quests.elektrik_uret:
	
	break;
	case quests.agac_dik:
	
	break;
}
i++;
}
