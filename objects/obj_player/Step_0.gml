// horazontal movement
if keyboard_check(ord("A")) 
{
a_press = true
image_xscale = -1
}
else
{a_press = false}
if keyboard_check(ord("D")) 
{
d_press = true
image_xscale = 1
}
else
{d_press = false}
if keyboard_check(ord("D")) or keyboard_check(ord("A"))
{ x += sign(d_press - a_press) * player_hspeed}

// vertacal movement
if keyboard_check_pressed(vk_space)
{
space_press = true
}
else
{space_press = false}


if mouse_check_button(mb_left)
{
gun = true
}

else 
{
	gun = false
}

y += global.gravity
if (place_meeting(x,y+1,obj_invs_floor)) && (key_jump)
{
	player = -jumpsp
}

if (place_meeting(x+hsp,y,obj_collision))
{
	while (!place_meeting(x+sign(hsp),y,obj_collision))
	{
		x = x + sign(hsp);	
	}
	hsp = 0;
}
x = x + hsp;

if(place_meeting(x,y+vsp,obj_collision))
{
	while (!place_meeting(x,y+sign(vsp),obj_collision))
	{
		y= y+ sign(vsp);
	}
	vsp= 0;
}
y = y + vsp;