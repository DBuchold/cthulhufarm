//crop planting function

function instance_create_crop(argument0,argument1, argument2){
var cs=crops.cellSize;
var xx = argument0 div cs;
var yy = argument1 div cs;

xx = xx*cs;
yy = yy*cs;

var lay_id = layer_get_id("T_Soil");
var map_id = layer_tilemap_get_id(lay_id);
var data = tilemap_get_at_pixel(map_id, argument0,argument1);

if (data == 0) {
	show_debug_message("Planting crops requires soil.")
	return false;
}
else
{
show_debug_message("Valid planting location.")
}

	var inst =	instance_create_layer(xx+(cs/2), yy+(cs/2), "Instances", obj_crop);

	with(inst) {
		cropType = argument2;
		growthStageDuration = crops.ds_crops_types[# 0, cropType];
	}

	return inst;
	}