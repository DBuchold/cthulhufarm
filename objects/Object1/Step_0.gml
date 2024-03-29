//movement

input_left = keyboard_check(vk_left);
input_right = keyboard_check(vk_right);
input_up = keyboard_check(vk_up);
input_down = keyboard_check(vk_down);
input_walk = keyboard_check(vk_control);
input_run = keyboard_check(vk_shift);

//walking/running
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
	var collisionH = instance_place(x+moveX, y, Obj_Collision);
	if(collisionH != noone and collisionH.collideable){
	//if(place_meeting(x+moveX, y, Obj_Collision)){
		repeat(abs(moveX)) {
			if(!place_meeting(x+sign(moveX),y,Obj_Collision)) {x += sign(moveX); }
			else {break; }
		}
		moveX = 0;
	}
}
//Vertical Movement
if(moveY != 0) {
	var collisionV = instance_place(x, y+moveY, Obj_Collision);
	//if(place_meeting(x, y+moveY, Obj_Collision)){
	if(collisionV != noone and collisionV.collideable){
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
	with(game){
	if(!doTransition){ spawnRoom = inst.targetRoom; spawnX = inst.targetX; spawnY = inst.targetY; doTransition=true;}
}
}
//Apply Movement
x += moveX;
y += moveY;