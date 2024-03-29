
var anim_length = 9;
var frame_size = 64;
var anim_speed = 12;

if(moveX <0) y_frame = 9;
else if (moveX >0) y_frame = 11;
else if (moveY <0) y_frame = 8;
else if (moveY > 0) y_frame = 10;
else x_frame = 0;

var xx = x-x_offset;
var yy = y-y_offset;

//DrawShadow
draw_sprite(spr_character_shadow, 0, x,y);
//base
draw_sprite_part(spr_base, 0, floor (x_frame)*frame_size, y_frame*frame_size, 64, 64, xx,yy);
//legs
draw_sprite_part(spr_pants, 0, floor (x_frame)*frame_size, y_frame*frame_size, 64, 64, xx,yy);
//shirt
draw_sprite_part(spr_shirt, 0, floor (x_frame)*frame_size, y_frame*frame_size, 64, 64, xx,yy);
// increment animations

if(x_frame < anim_length - 1) {x_frame += anim_speed/60; }
else {
x_frame = 0;}

//draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom,c_yellow,c_yellow,c_yellow,c_yellow,true);