/// @description Insert description here
// You can write your code in this editor
if global.mobile = 0
{
var win_wid = (window_get_width()/1280)
}
else
{
var win_wid = (window_get_width()/2960)
}
var win_hei = window_get_height()/(720*(global.mobile+1))

draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),image_xscale/win_wid,image_yscale/win_hei,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,image_index+1,x,y,image_xscale/win_wid,image_yscale/win_hei,image_angle,c_white,w_alpha)


if global.select = select
{
	if (global.map_name[select] = 0 || global.map_name[select] = "0") && own_menu_name != "Create new world" && own_menu_name != "새로운 월드 생성"
	{
	draw_text_kl_scale(x,y-128,string("Broken map file!\nYou cannot open this one"),image_xscale*30,-1,w_alpha,c_white,0,0,ko_80,image_xscale*0.2*0.0125*30/win_wid,image_yscale*0.2*0.0125*30/win_hei,0)
	}
	else
	{
	draw_text_kl_scale(x,y-128,string(own_menu_name),image_xscale*30,-1,w_alpha,c_white,0,0,ko_80,image_xscale*0.2*0.0125*30/win_wid,image_yscale*0.2*0.0125*30/win_hei,0)
	}
}