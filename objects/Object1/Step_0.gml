/// @description Insert description here
// You can write your code in this editor

input_left = keyboard_check(vk_left);
input_right = keyboard_check(vk_right);
input_up = keyboard_check(vk_up);
input_down = keyboard_check(vk_down);
input_walk = keyboard_check(vk_control);
input_run = keyboard_check(vk_shift);

if (input_walk or input_run){
	spd = abs((input_walk*w_spd) - (input_run*r_spd));
} else
{
	spd = n_spd;
}

moveX = 0;
moveY = 0;

moveY = (input_down - input_up) * spd;
moveX = (input_right - input_left) * spd;


//Collision Horizontal
if(moveX != 0) {
	if(place_meeting(x+moveX, y, Obj_Collision)){
		repeat(abs(moveX)) {
			if(!place_meeting(x+sign(moveX),y,Obj_Collision)) {x += sign(moveX); }
			else {break; }
		}
		moveX = 0;
	}
}
//Vertical Movement
if(moveY != 0) {
	if(place_meeting(x, y+moveY, Obj_Collision)){
		repeat(abs(moveY)) {
			if(!place_meeting(x,y+sign(moveY),Obj_Collision)) {y += sign(moveY); }
			else {break; }
		}
		moveY = 0;
	}
}
//Objects
var inst = instance_place(x,y,obj_transition);
if(inst != noone) {
	room_goto(inst.targetRoom);
}
//Apply Movement
x += moveX;
y += moveY;