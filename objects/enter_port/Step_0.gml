/// @description Insert description here
// You can write your code in this editor
w_alpha += (-0.01 - w_alpha)*0.1
x += (t_x - x)*0.1
y += (t_y - y)*0.1

y += (mouse_y - y)*0.004
x += (mouse_x - x)*0.005

global.co_op_mode = 1
global.saving_data = -1



co_op_code.server_port = text

if choosen = 1
{
	if keyboard_check(vk_control) && keyboard_check(ord("V"))
	{
		if clipboard_has_text()
		{
		text = clipboard_get_text();
		choosen = 0
		}
	}
}



if keyboard_check_pressed(vk_tab) && choosen = 0
{
	if enter_ip.choosen = 1
	{
	enter_ip.choosen = -1
	image_xscale = 1
	keyboard_string = ""
	text = keyboard_string
	choosen = 1
	}
}


if choosen = -1
{
choosen = 0
}