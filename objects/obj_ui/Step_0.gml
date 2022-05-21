
x = obj_oyuncu.x;
y = obj_oyuncu.y;

var xx = device_mouse_x_to_gui(0);
var yy = device_mouse_y_to_gui(0);

// Objet render faraway
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);
var ch = camera_get_view_height(view_camera[0]);
instance_activate_region(cx - 2000, cy - 2000, cx +cw + 3500, cy + ch + 3500, true);


if (keyboard_check_pressed(ord("C")))
{
	switch (crafting_goster)
	{
		case false: 
		{crafting_goster = true;} 
		break;
		
		case true:
		crafting_goster = false;
		silah_crafting_goster = false;
		isik_crafting_goster = false;
		break;
	}
}


if (keyboard_check_pressed(ord("I")))
{
	switch (envanter_goster)
	{
		case false:
		envanter_goster = true;
		obj_oyuncu.durum = oyuncu_durum.envanter;
		break;
		
		
		case true:
		envanter_goster = false;
		envater_secim = noone;
		obj_oyuncu.durum = oyuncu_durum.kontrol;
	}
}
		
		
if (envanter_goster == false)
{
	if (yy >= 360-32)
	{
		if (xx >= 640/2-35*2-16 and xx<= 640/2+35*+2+16)
		{
			obj_oyuncu.durum = oyuncu_durum.quickslotting;
		}
	
	}
}

	if (keyboard_check_pressed(ord("1")))
	{
		if(obj_oyuncu.giyildi != slot_1)
		{
		obj_oyuncu.giyildi = slot_1;
		with (obj_parent_silah)
		{ instance_destroy();}
		instance_create_layer (obj_oyuncu.x, obj_oyuncu.y, "Oyuncu", slot_1)
		}
	}
	
	else if (keyboard_check_pressed (ord("2")))
	{
	var par = object_get_parent(slot_2);
		if (obj_oyuncu.giyildi != slot_2)
		{
				if (par == obj_parent_silah)
				{
				obj_oyuncu.giyildi = slot_2;
				with (obj_parent_silah) 
				{ instance_destroy();}
				instance_create_layer(obj_oyuncu.x, obj_oyuncu.y, "Oyuncu", slot_2);
				}
		}
	}

else if (keyboard_check_pressed (ord("3")))
{
	var par = object_get_parent(slot_3);
		if (obj_oyuncu.giyildi != slot_3)
		{
			if (par == obj_parent_silah)
			{
			obj_oyuncu.giyildi = slot_3;
			with (obj_parent_silah) 
			{ instance_destroy();}
			instance_create_layer(obj_oyuncu.x, obj_oyuncu.y, "Oyuncu", slot_3);
			}
		}
}

else if (keyboard_check_pressed (ord("4")))
{
	var par = object_get_parent(slot_4);
		if (obj_oyuncu.giyildi != slot_4)
		{
			if (par == obj_parent_silah)
			{
			obj_oyuncu.giyildi = slot_4;
			with (obj_parent_silah) 
			{ instance_destroy();}
			instance_create_layer(obj_oyuncu.x, obj_oyuncu.y, "Oyuncu", slot_4);
		}
	}
}

else if (keyboard_check_pressed (ord("5")))
{
	var par = object_get_parent(slot_5);
		if (obj_oyuncu.giyildi != slot_5)
		{
			if (par == obj_parent_silah)
			{
			obj_oyuncu.giyildi = slot_5;
			with (obj_parent_silah) 
			{ instance_destroy();}
			instance_create_layer(obj_oyuncu.x, obj_oyuncu.y, "Oyuncu", slot_5);
			}
		}
}

