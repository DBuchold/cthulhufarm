/// @description Insert description here
// You can write your code in this editor



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
//Apply Movement
x += moveX;
y += moveY;


