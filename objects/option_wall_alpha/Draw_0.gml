/// @description Insert description here
// You can write your code in this editor
var xx = global._came_vx;
var yy = global._came_vy;


var camera_xsize = obj_camera.v_x/1280
var camera_ysize = obj_camera.v_y/720


var text_scale = 25
var shape_scale = 38
var text_space = 60
var first_text_space = 170



	if pressed = 1
	{
	global.wall_alpha = -1
	draw_sprite_ext(sprite_index,1,xx+(obj_camera.v_x/1280)*400,yy+((obj_camera.v_y/720)*1.02)*first_text_space+(setting_num*text_space),image_xscale,image_yscale,0,c_white,1)
	if global.language = 0
	{
	draw_text_kl_scale(xx+(obj_camera.v_x/1280)*450,yy+(obj_camera.v_y/720)*first_text_space+(setting_num*text_space),"If the player is obscured by the wall, the wall will be transparent",50,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	if global.language = 1
	{
	draw_text_kl_scale(xx+(obj_camera.v_x/1280)*450,yy+(obj_camera.v_y/720)*first_text_space+(setting_num*text_space),"풀레이어가 벽에 가려진 경우 벽을 투명하게 나타냅니다",50,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	}
	else
	{
	global.wall_alpha = 0
	draw_sprite_ext(sprite_index,0,xx+(obj_camera.v_x/1280)*400,yy+((obj_camera.v_y/720)*1.02)*first_text_space+(setting_num*text_space),image_xscale,image_yscale,0,c_white,1)
	if global.language = 0
	{
	draw_text_kl_scale(xx+(obj_camera.v_x/1280)*450,yy+(obj_camera.v_y/720)*first_text_space+(setting_num*text_space),"If the player is obscured by the wall, the wall will be transparent",50,-1,text_alpha,c_yellow,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	if global.language = 1
	{
	draw_text_kl_scale(xx+(obj_camera.v_x/1280)*450,yy+(obj_camera.v_y/720)*first_text_space+(setting_num*text_space),"풀레이어가 벽에 가려진 경우 벽을 투명하게 나타냅니다",50,-1,text_alpha,c_yellow,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	}

