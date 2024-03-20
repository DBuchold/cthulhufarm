


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
//Apply Movement
x += moveX;
y += moveY;


