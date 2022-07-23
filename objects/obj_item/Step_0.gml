/// @description Insert description here
// You can write your code in this editor

/////////////////////////////////////////////아이템이 주괴인경우////////////////////////////////////////////////////////

if image_index%2 = 1
{
image_xscale = 0.23
image_yscale = 0.23
}
else
{
image_xscale = 0.3
image_yscale = 0.3
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

hspeed += (0 - hspeed)/a
ty_depth(floor_y-1)
angle_shake()

if y < floor_y-2
{
gravity = 0.1
}
else
{
gravity = 0
	if vspeed > 0
	{
	vspeed = 0
	}
	hspeed = 0
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//아이템이 폭탄에 터짐
if place_meeting(x,floor_y,bomb_parents)
{
instance_destroy()
}


if(global.co_op_mode = 0)
{
	if point_distance(x,floor_y,player.x,player.y+10) < 16 && create_cool_time = 0 && global.knocked_out = 0
	{
	var __item_name__ = asset_get_index("item"+string(image_index+1))
	
		if buffer_exists(chat_buffer)
		{
		buffer_seek(chat_buffer, buffer_seek_start, 0);
		buffer_write(chat_buffer, buffer_u8, DATA.PL_2_INV_EMPTY);
		send_all(chat_buffer);
		}

		if got_item_c = 0 && got_item = 0
		{
		got_item = 1
		}
	}
}
else
{
	if point_distance(x,floor_y,player_co_op.x,player_co_op.y+10) < 16 && create_cool_time = 0 && global.knocked_out = 0
	{
	var __item_name__ = asset_get_index("item"+string(image_index+1))
	
		if buffer_exists(chat_buffer)
		{
		buffer_seek(chat_buffer, buffer_seek_start, 0);
		buffer_write(chat_buffer, buffer_u8, DATA.PL_2_INV_EMPTY);
		send_all(chat_buffer);
		}

		if got_item_c = 0 && got_item = 0
		{
		got_item_c = 1
		}
	}
	
	if point_distance(x,floor_y,player.x,player.y+10) < 16 && create_cool_time = 0 && global.knocked_out = 0
	{
	var __item_name__ = asset_get_index("item"+string(image_index+1))

		if got_item_c = 0 && got_item = 0
		{
		got_item = 1
		}
	}
}
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	if(global.co_op_mode = 0)
	{
		if got_item = 1
		{
		image_angle += (point_direction(x,floor_y,player.x,player.y+10) - image_angle)*0.1
		x += (player.x - x)/3
		y += (player.y+10 - y)/2.5
		floor_y += (player.y+10 - floor_y)/3
		
		

			if point_distance(x,floor_y,player.x,player.y+10) < 3
			{
			got_items(stucked_item_number)
			instance_destroy()
			}
		}
	}
	else
	{
		if got_item = 1
		{
		image_angle += (point_direction(x,floor_y,player.x,player.y+10) - image_angle)*0.1
		x += (player.x - x)/3
		y += (player.y+10 - y)/2.5
		floor_y += (player.y+10 - floor_y)/3
		
		

			if point_distance(x,floor_y,player.x,player.y+10) < 3
			{
				if co_op_code.is_server = true
				{
				got_items(stucked_item_number)
				}
				instance_destroy()
			}
		}
		
		if got_item_c = 1
		{
		image_angle += (point_direction(x,floor_y,player_co_op.x,player_co_op.y+10) - image_angle)*0.1
		x += (player_co_op.x - x)/3
		y += (player_co_op.y+10 - y)/2.5
		floor_y += (player_co_op.y+10 - floor_y)/3
		
		

			if point_distance(x,floor_y,player_co_op.x,player_co_op.y+10) < 3
			{
				if co_op_code.is_server = false
				{
				got_items(stucked_item_number)
				}
				instance_destroy()
			}
		}
	}