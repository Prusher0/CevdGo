/// @description Degiskenler

depth = obj_oyuncu.depth-1;

if (yerde == true)
{
	if (mouse_check_button_pressed(mb_left))
	{
		if (instance_position(mouse_x, mouse_y, self))
		{
			scr_envanter_ekleme();
		}
	}
}
