/// @description Insert description here
// You can write your code in this editor
event_inherited();
w_spd = 2;
n_spd = 3;
r_spd = 6;
spd = w_spd;

//spd = n_spd;

x_frame = 0;
y_frame = 256;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

spr_base = -1;
spr_shirt = spr_human_shirt;
spr_pants = spr_human_pants;
spr_shadow = spr_character_shadow;
moveX = 0;
moveY = 0;

alarm[1] = 1;