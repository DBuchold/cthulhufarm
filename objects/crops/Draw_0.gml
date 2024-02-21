

if(!planting) exit;

var cs = cellSize;
var xx = (mx div cs);
var yy = (my div cs);

xx = xx*cs;
yy = yy*cs;
var c = c_red;

//debug soil checking
var lay_id = layer_get_id("T_soil");
var map_id = layer_tilemap_get_id(lay_id);
var data = tilemap_get_at_pixel(map_id, mx, my)
if (data != 0) {c = c_green;}



draw_rectangle_color(xx, yy, xx+cs, yy+cs, c,c,c,c, true);

draw_sprite(spr_crops_picked, selectCrop, xx+(cs/2), yy+(cs/2));

