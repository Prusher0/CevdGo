/// @description Silah Pozisyonu

if (yerde == false)
{
scr_silah_secme();
}

else 
{
	draw_set_alpha(0.3)
	draw_ellipse_color(x-sprite_width/2, y-5, x+sprite_width/2, y+3, c_red, c_red, false);
	draw_set_alpha(1);
	draw_self();
}