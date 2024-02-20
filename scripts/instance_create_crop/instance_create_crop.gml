//crop planting function

function instance_create_crop(argument0,argument1, argument2){
var cs=crops.cellSize;
var xx = argument0 div cs;
var yy = argument1 div cs;

xx = xx*cs;
yy = yy*cs;
	var inst =	instance_create_layer(xx+(cs/2), yy+(cs/2), "Instances", obj_crop);

	with(inst) {
		cropType = argument2;
		growthStageDuration = crops.ds_crops_types[# 0, cropType];
	}

	return inst;
	}