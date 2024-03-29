//Debug Commands
if(!debug) {exit;}

//Display all Collision objects 
with (Obj_Collision) {
	draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom,c_yellow,c_yellow,c_yellow,c_yellow,true);
}

with (Object1) {
draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom,c_yellow,c_yellow,c_yellow,c_yellow,true);
}

//Display Crop Tiles
var cs = crops.cellSize;
var xx = 0;
var r = roomWidth div cs;

repeat(r){
	draw_line_color(xx, 0, xx, roomHeight, c_white, c_white);
	xx += cs;
}

var yy=0;

var r= roomHeight div cs;
repeat(r){
	draw_line_color(0, yy, roomWidth, yy, c_white, c_white);
	yy += cs;
}