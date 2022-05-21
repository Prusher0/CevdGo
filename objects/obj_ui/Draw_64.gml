/// @description Quickslotting

draw_sprite(spr_ui_can,0,0,0);
draw_sprite(spr_ui_aclik,0,0,13);
draw_healthbar(20,1,100,10, obj_oyuncu.can, c_black, c_red, c_red, 0, true, true);
draw_healthbar(20,14,100,23, obj_oyuncu.aclik, c_black, c_green, c_green, 0, true, true);


var xx = device_mouse_x_to_gui(0);
var yy = device_mouse_y_to_gui(0);

switch (crafting_goster)
{
	
	case true:
	draw_sprite(spr_craft_silah,0,0,40);
	draw_sprite(spr_craft_isik,0,0,110);
}

switch (silah_crafting_goster)
{
	
	case true:
	draw_sprite(spr_craft_balta,0,70,40);
	draw_sprite(spr_craft_hancer,0,70+55,40);
	draw_sprite(spr_craft_pala,0,70+55*2,40);
	
}

switch (isik_crafting_goster)
{
	
	case true:
	draw_sprite(spr_craft_ates,0,70,110);
}





switch(envanter_goster)
{
	case true: 
	draw_sprite(spr_envanter,0,640/2,360-105); 
	
	if (envanter_secim != noone)
	{
		draw_sprite_ext(object_get_sprite(envanter_secim),0,xx,yy,1,1,0,c_white,0.5);
	}
	
	if (envanter[1]!=noone) 
	{
		draw_sprite(object_get_sprite(envanter[1]),0,640/2-35,360-105-35);
		draw_set_halign(fa_center);
		draw_text(640/2-35,360-105-35-2,envanter_numara[1]);
	}
	if (envanter[2]!=noone) 
	{
		draw_sprite(object_get_sprite(envanter[2]),0,640/2,360-105-35);
		draw_set_halign(fa_center);
		draw_text(640/2,360-105-35-2,envanter_numara[2]);
	}
	if (envanter[3]!=noone) 
	{
		draw_sprite(object_get_sprite(envanter[3]),0,640/2+35,360-105-35);
		draw_set_halign(fa_center);
		draw_text(640/2+35,360-105-35-2,envanter_numara[3]);
	}
	if (envanter[4]!=noone) 
	{
		draw_sprite(object_get_sprite(envanter[4]),0,640/2-35,360-105);
		draw_set_halign(fa_center);
		draw_text(640/2-35,360-105-2,envanter_numara[4]);
	}
	if (envanter[5]!=noone) 
	{
		draw_sprite(object_get_sprite(envanter[5]),0,640/2,360-105);
		draw_set_halign(fa_center);
		draw_text(640/2,360-105-2,envanter_numara[5]);
	}
	if (envanter[6]!=noone) 
	{
		draw_sprite(object_get_sprite(envanter[6]),0,640/2+35,360-105);
		draw_set_halign(fa_center);
		draw_text(640/2+35,360-105-2,envanter_numara[6]);
	}
	if (envanter[7]!=noone) 
	{
		draw_sprite(object_get_sprite(envanter[7]),0,640/2-35,360-105+35);
		draw_set_halign(fa_center);
		draw_text(640/2-35,360-105+35-2,envanter_numara[7]);
	}
	if (envanter[8]!=noone) 
	{
		draw_sprite(object_get_sprite(envanter[8]),0,640/2,360-105+35);
		draw_set_halign(fa_center);
		draw_text(640/2,360-105+35-2,envanter_numara[8]);
	}
	if (envanter[9]!=noone) 
	{
		draw_sprite(object_get_sprite(envanter[9]),0,640/2+35,360-105+35);
		draw_set_halign(fa_center);
		draw_text(640/2+35,360-105+35-2,envanter_numara[9]);
	}
	break;
}




draw_sprite(spr_quickslotting, 0,640/2,350); // ortadaki slot (3. slot)
draw_sprite(spr_quickslotting, 0,640/2+35,350); // baştan 4. slot
draw_sprite(spr_quickslotting, 0,640/2+35*2,350); // 5. slot
draw_sprite(spr_quickslotting, 0,640/2-35,350); // 2. slot
draw_sprite(spr_quickslotting, 0,640/2-35*2,350); // 1. slot

if (slot_1 != noone)
{
	if (slot_1_secilmis == false)
	{draw_sprite(object_get_sprite(slot_1), 0, 640/2-35*2, 345);}
	else 
	{draw_sprite(object_get_sprite(slot_1), 0, xx,yy)}
}

if (slot_2 != noone)
{
	if (slot_2_secilmis == false)
	{draw_sprite(object_get_sprite(slot_2), 0, 640/2-35, 345);}
	else 
	{draw_sprite(object_get_sprite(slot_2), 0, xx,yy)}
}

if (slot_3 != noone)
{
	if (slot_3_secilmis == false)
	{draw_sprite(object_get_sprite(slot_3), 0, 640/2, 345);}
	else 
	{draw_sprite(object_get_sprite(slot_3), 0, xx,yy)}
}

if (slot_4 != noone)
{
	if (slot_4_secilmis == false)
	{draw_sprite(object_get_sprite(slot_4), 0, 640/2+35, 345);}
	else 
	{draw_sprite(object_get_sprite(slot_4), 0, xx,yy)}
}

if (slot_5 != noone)
{
	if (slot_5_secilmis == false)
	{draw_sprite(object_get_sprite(slot_5), 0, 640/2+35*2, 345);}
	else 
	{draw_sprite(slot_5, 0, xx,yy)}
}