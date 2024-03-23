//walk speed + sprite drawing
event_inherited();

w_spd = 2;
n_spd = 3;
r_spd = 6;

spd = n_spd;

x_frame = 0;
y_frame =128;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

spr_base = spr_human_improved;